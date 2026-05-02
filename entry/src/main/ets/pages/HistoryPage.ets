import { getAllUsers, getHistory, deleteHistoryItem, updateHistoryComment } from '../utils/StorageUtils';
import { DivinationResult, FilterItem } from '../model/DivinationModel';
import { promptAction } from '@kit.ArkUI';
import { pasteboard } from '@kit.BasicServicesKit';
import { getTrigramByXianTianNumber } from '../data/TrigramsData';

interface UserGroup {
  username: string;
  records: DivinationResult[];
}

@Component
export struct HistoryPage {
  @State userGroups: UserGroup[] = []
  @State filter: string = 'all'
  @State detailItem: DivinationResult | null = null
  @State isEditingComment: boolean = false
  @State commentInput: string = ''
  @State isDetailSheetOpen: boolean = false

  private filterAll: FilterItem = { key: 'all', label: '全部' }
  private filterToday: FilterItem = { key: 'today', label: '今天' }
  private filterWeek: FilterItem = { key: 'week', label: '本周' }
  private filterMonth: FilterItem = { key: 'month', label: '本月' }
  private filters: FilterItem[] = [this.filterAll, this.filterToday, this.filterWeek, this.filterMonth]

  aboutToAppear() {
    this.loadAllHistory();
  }

  build() {
    Scroll() {
      Column() {
        Text('占卜历史')
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2C2416')
          .margin({ top: 20, bottom: 4 })
        Text('按用户分组回顾您的占卜记录')
          .fontSize(14)
          .fontColor('#6B5D4F')
          .margin({ bottom: 20 })

        if (this.userGroups.length > 0) {
          Row() {
            ForEach(this.filters, (f: FilterItem) => {
              Button(f.label)
                .height(28)
                .fontSize(12)
                .fontColor(this.filter === f.key ? '#FFFFFF' : '#6B5D4F')
                .backgroundColor(this.filter === f.key ? '#B94A48' : '#FFFEF9')
                .border({ width: 1, color: '#D4C4A8', radius: 14 })
                .padding({ left: 12, right: 12 })
                .margin({ right: 8 })
                .onClick(() => { this.filter = f.key; })
            })

            Text(`共 ${this.getTotalCount()} 条记录`)
              .fontSize(12)
              .fontColor('#6B5D4F')
          }
          .margin({ top: 12 })
        }

        if (this.userGroups.length > 0) {
          ForEach(this.userGroups, (group: UserGroup) => {
            if (this.getFilteredRecords(group.records).length > 0) {
              Column() {
                Text(`用户：${group.username}`)
                  .fontSize(14)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#B94A48')
                  .margin({ bottom: 8 })

                ForEach(this.getFilteredRecords(group.records), (item: DivinationResult) => {
                  Column() {
                    Row() {
                      Column() {
                        Text(item.question)
                          .fontSize(14)
                          .fontColor('#2C2416')
                          .fontWeight(FontWeight.Bold)
                          .maxLines(1)
                          .textOverflow({ overflow: TextOverflow.Ellipsis })
                        Row() {
                          Text(item.hexagram?.name || '')
                            .fontSize(12)
                            .fontColor('#B94A48')
                          Text(this.formatTime(item.timestamp))
                            .fontSize(12)
                            .fontColor('#6B5D4F')
                            .margin({ left: 8 })
                        }
                        .margin({ top: 4 })

                        if (item.comment) {
                          Text(item.comment)
                            .fontSize(12)
                            .fontColor('#6B5D4F')
                            .maxLines(1)
                            .textOverflow({ overflow: TextOverflow.Ellipsis })
                            .margin({ top: 4 })
                        }
                      }
                      .layoutWeight(1)
                      .alignItems(HorizontalAlign.Start)

                      Button('查看')
                        .height(30)
                        .fontSize(12)
                        .fontColor('#FFFFFF')
                        .fontWeight(FontWeight.Medium)
                        .backgroundColor('#B94A48')
                        .borderRadius(6)
                        .onClick(() => {
                          this.detailItem = item;
                          this.isEditingComment = false;
                          this.commentInput = item.comment || '';
                          this.isDetailSheetOpen = true;
                        })

                      Button('删除')
                        .height(30)
                        .fontSize(12)
                        .fontColor('#FFFFFF')
                        .fontWeight(FontWeight.Medium)
                        .backgroundColor('#FF4444')
                        .borderRadius(6)
                        .margin({ left: 4 })
                        .onClick(async () => {
                          await deleteHistoryItem(group.username, item.id);
                          await this.loadAllHistory();
                          if (this.detailItem?.id === item.id) {
                            this.detailItem = null;
                            this.isDetailSheetOpen = false;
                          }
                        })
                    }
                    .width('100%')
                  }
                  .width('100%')
                  .padding(12)
                  .backgroundColor('#FFFEF9')
                  .borderRadius(8)
                  .margin({ top: 8 })
                })
              }
              .width('100%')
              .padding(12)
              .backgroundColor('#F5F1E8')
              .borderRadius(8)
              .margin({ top: 12 })
              .alignItems(HorizontalAlign.Start)
            }
          })
        } else {
          Column() {
            Text('📜')
              .fontSize(36)
              .fontColor('#2C241630')
            Text('暂无历史记录')
              .fontSize(14)
              .fontColor('#6B5D4F')
              .margin({ top: 8 })
          }
          .width('100%')
          .padding(40)
          .backgroundColor('#FFFEF9')
          .borderRadius(12)
          .margin({ top: 16 })
          .alignItems(HorizontalAlign.Center)
        }

        // 详情已移至底部弹窗
      }
      .padding({ left: 16, right: 16 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F1E8')
    .bindSheet(this.isDetailSheetOpen, this.DetailSheetBuilder(), {
      height: 'MEDIUM',
      dragBar: true,
      showClose: true,
      backgroundColor: '#FFFEF9',
      onDisappear: () => { this.isDetailSheetOpen = false; }
    })
  }

  private async loadAllHistory() {
    const users = await getAllUsers();
    const groups: UserGroup[] = [];
    for (let i = 0; i < users.length; i++) {
      const records = await getHistory(users[i]);
      if (records.length > 0) {
        groups.push({ username: users[i], records: records });
      }
    }
    this.userGroups = groups;
  }

  private getFilteredRecords(records: DivinationResult[]): DivinationResult[] {
    if (this.filter === 'all') return records;
    const now = new Date();
    return records.filter(item => {
      const itemDate = new Date(item.timestamp);
      const diffDays = Math.floor((now.getTime() - itemDate.getTime()) / (1000 * 60 * 60 * 24));
      switch (this.filter) {
        case 'today': return diffDays < 1;
        case 'week': return diffDays < 7;
        case 'month': return diffDays < 30;
        default: return true;
      }
    });
  }

  private getTotalCount(): number {
    let count = 0;
    for (let i = 0; i < this.userGroups.length; i++) {
      count += this.getFilteredRecords(this.userGroups[i].records).length;
    }
    return count;
  }

  private findUserForItem(id: string): string | null {
    for (let i = 0; i < this.userGroups.length; i++) {
      const group = this.userGroups[i];
      for (let j = 0; j < group.records.length; j++) {
        if (group.records[j].id === id) {
          return group.username;
        }
      }
    }
    return null;
  }

  private formatTime(timestamp: string): string {
    if (!timestamp) return '';
    const date = new Date(timestamp);
    return `${date.getFullYear()}/${(date.getMonth() + 1).toString().padStart(2, '0')}/${date.getDate().toString().padStart(2, '0')} ${date.getHours().toString().padStart(2, '0')}:${date.getMinutes().toString().padStart(2, '0')}`;
  }

  private getUpperNumberText(): string {
    if (this.detailItem?.input?.upperNumber) {
      const tri = getTrigramByXianTianNumber(this.detailItem.input.upperNumber);
      return `${this.detailItem.input.upperNumber}${tri ? ' ' + tri.name : ''}`;
    }
    const num = this.detailItem?.hexagram?.upperTrigramInfo?.number;
    return num ? `${num}` : '--';
  }

  private getLowerNumberText(): string {
    if (this.detailItem?.input?.lowerNumber) {
      const tri = getTrigramByXianTianNumber(this.detailItem.input.lowerNumber);
      return `${this.detailItem.input.lowerNumber}${tri ? ' ' + tri.name : ''}`;
    }
    const num = this.detailItem?.hexagram?.lowerTrigramInfo?.number;
    return num ? `${num}` : '--';
  }

  private getMovingLineText(): string {
    if (this.detailItem?.input?.movingLine) {
      const posNames: string[] = ['初爻', '二爻', '三爻', '四爻', '五爻', '上爻'];
      return `${this.detailItem.input.movingLine} ${posNames[this.detailItem.input.movingLine - 1]}`;
    }
    if (this.detailItem?.movingLine?.position) {
      return `${this.detailItem.movingLine.position}`;
    }
    return '--';
  }

  private async handleAdvancedReading() {
    if (!this.detailItem) return;
    const upper = this.detailItem.hexagram?.upperTrigramInfo;
    const lower = this.detailItem.hexagram?.lowerTrigramInfo;
    let promptText = `易经占卜，问：${this.detailItem.question}\n`;
    if (this.detailItem.input) {
      const upperTri = getTrigramByXianTianNumber(this.detailItem.input.upperNumber);
      const lowerTri = getTrigramByXianTianNumber(this.detailItem.input.lowerNumber);
      const posNames: string[] = ['初爻', '二爻', '三爻', '四爻', '五爻', '上爻'];
      promptText += `上卦取数：${this.detailItem.input.upperNumber}（${upperTri?.name || ''}）\n`;
      promptText += `下卦取数：${this.detailItem.input.lowerNumber}（${lowerTri?.name || ''}）\n`;
      promptText += `动爻取数：${this.detailItem.input.movingLine}（${posNames[this.detailItem.input.movingLine - 1]}）\n`;
    } else {
      promptText += `上卦：${upper?.name || ''} ${upper?.symbol || ''}\n`;
      promptText += `下卦：${lower?.name || ''} ${lower?.symbol || ''}\n`;
    }
    promptText += `本卦：${this.detailItem.hexagram?.name || ''} ${this.detailItem.hexagram?.symbol || ''}\n`;
    promptText += `动爻：${this.detailItem.movingLine?.name || '无'}\n`;
    promptText += `之卦：${this.detailItem.changedHexagram?.name || ''} ${this.detailItem.changedHexagram?.symbol || ''}\n`;
    promptText += `帮忙解卦`;
    const data = pasteboard.createData(pasteboard.MIMETYPE_TEXT_PLAIN, promptText);
    try {
      await pasteboard.getSystemPasteboard().setData(data);
      promptAction.showToast({ message: '已复制到剪贴板，可粘贴至AI助手进行进阶解读' });
    } catch (e) {
      promptAction.showToast({ message: '复制失败' });
    }
  }

  @Builder
  HistInterpretationItem(label: string, content: string) {
    if (content) {
      Column() {
        Text(label)
          .fontSize(12)
          .fontColor('#8B6914')
          .fontWeight(FontWeight.Bold)
        Text(content)
          .fontSize(13)
          .fontColor('#5C4A32')
          .margin({ top: 4 })
          .lineHeight(20)
      }
      .width('100%')
      .padding(10)
      .backgroundColor('#F5F1E8')
      .borderRadius(8)
      .margin({ top: 8 })
      .alignItems(HorizontalAlign.Start)
    }
  }

  @Builder
  DetailSheetBuilder() {
    Scroll() {
      Column() {
        if (this.detailItem) {
          Row() {
            Text('占卜详情')
              .fontSize(18)
              .fontWeight(FontWeight.Bold)
              .fontColor('#2C2416')
            Blank()
            Button('✕')
              .width(32)
              .height(32)
              .fontSize(16)
              .fontColor('#6B5D4F')
              .backgroundColor(Color.Transparent)
              .onClick(() => { this.isDetailSheetOpen = false; })
          }
          .width('100%')
          .margin({ bottom: 12 })

          Column() {
            Text('问题')
              .fontSize(12)
              .fontColor('#B94A48')
            Text(this.detailItem.question)
              .fontSize(16)
              .fontColor('#2C2416')
              .margin({ top: 4 })
          }
          .width('100%')
          .alignItems(HorizontalAlign.Start)
          .padding({ bottom: 12 })
          .border({ width: { bottom: 1 }, color: '#D4C4A850' })

          Row() {
            Column() {
              Text('本卦')
                .fontSize(12)
                .fontColor('#6B5D4F')
              Text(this.detailItem.hexagram?.symbol || '')
                .fontSize(40)
              Text(this.detailItem.hexagram?.name || '')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
            }

            if (this.detailItem.changedHexagram) {
              Text('→')
                .fontSize(24)
                .fontColor('#6B5D4F')
                .margin({ left: 20, right: 20 })

              Column() {
                Text('之卦（变卦）')
                  .fontSize(12)
                  .fontColor('#6B5D4F')
                Text(this.detailItem.changedHexagram.symbol)
                  .fontSize(40)
                Text(this.detailItem.changedHexagram.name)
                  .fontSize(16)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#2C2416')
              }
            }
          }
          .justifyContent(FlexAlign.Center)
          .width('100%')
          .margin({ top: 12 })

          Row() {
            Column() {
              Text('上卦')
                .fontSize(12)
                .fontColor('#6B5D4F')
              Text(this.detailItem.hexagram?.upperTrigramInfo?.symbol || '')
                .fontSize(28)
              Text(this.detailItem.hexagram?.upperTrigramInfo?.name || '')
                .fontSize(14)
                .fontColor('#2C2416')
            }

            Column() {
              Text('下卦')
                .fontSize(12)
                .fontColor('#6B5D4F')
              Text(this.detailItem.hexagram?.lowerTrigramInfo?.symbol || '')
                .fontSize(28)
              Text(this.detailItem.hexagram?.lowerTrigramInfo?.name || '')
                .fontSize(14)
                .fontColor('#2C2416')
            }
          }
          .justifyContent(FlexAlign.SpaceEvenly)
          .width('100%')
          .margin({ top: 16 })

          // 取数信息
          Row() {
            Column() {
              Text('上卦取数')
                .fontSize(10)
                .fontColor('#6B5D4F')
              Text(this.getUpperNumberText())
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
            }

            Column() {
              Text('下卦取数')
                .fontSize(10)
                .fontColor('#6B5D4F')
              Text(this.getLowerNumberText())
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
            }

            Column() {
              Text('动爻取数')
                .fontSize(10)
                .fontColor('#6B5D4F')
              Text(this.getMovingLineText())
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .fontColor('#B94A48')
            }
          }
          .justifyContent(FlexAlign.SpaceEvenly)
          .width('100%')
          .margin({ top: 12 })
          .padding({ top: 8, bottom: 8 })
          .backgroundColor('#F5F1E8')
          .borderRadius(8)

          if (this.detailItem.hexagram?.judgment) {
            Column() {
              Text('📖 本卦卦辞')
                .fontSize(12)
                .fontColor('#8B7355')
                .fontWeight(FontWeight.Bold)
              Text(this.detailItem.hexagram.judgment)
                .fontSize(14)
                .fontColor('#5C4A32')
                .margin({ top: 4 })
            }
            .width('100%')
            .padding(12)
            .backgroundColor('#F5F1E8')
            .borderRadius(8)
            .margin({ top: 12 })
            .alignItems(HorizontalAlign.Start)
          }

          if (this.detailItem.hexagram?.interpretation) {
            Column() {
              Text('✨ 详细解读')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
                .margin({ bottom: 8 })

              this.HistInterpretationItem('总述', this.detailItem.hexagram.interpretation.summary)
              this.HistInterpretationItem('事业', this.detailItem.hexagram.interpretation.career)
              this.HistInterpretationItem('感情', this.detailItem.hexagram.interpretation.relationship)
              this.HistInterpretationItem('健康', this.detailItem.hexagram.interpretation.health)
              this.HistInterpretationItem('财运', this.detailItem.hexagram.interpretation.wealth)
            }
            .width('100%')
            .margin({ top: 12 })
            .alignItems(HorizontalAlign.Start)
          }

          if (this.detailItem.movingLine) {
            Column() {
              Text(`⚡ 动爻 · ${this.detailItem.movingLine.name}`)
                .fontSize(14)
                .fontColor('#B94A48')
                .fontWeight(FontWeight.Bold)
                .margin({ bottom: 4 })
              Text(this.detailItem.movingLine.text)
                .fontSize(13)
                .fontColor('#2C2416')
              Text(this.detailItem.movingLine.interpretation)
                .fontSize(12)
                .fontColor('#6B5D4F')
                .margin({ top: 4 })

              if (this.detailItem.movingLine.positionMeaning) {
                Column() {
                  Text('📍 动爻位置解读')
                    .fontSize(12)
                    .fontColor('#B94A48')
                    .fontWeight(FontWeight.Bold)
                  Text(this.detailItem.movingLine.positionMeaning)
                    .fontSize(12)
                    .fontColor('#2C2416')
                    .margin({ top: 4 })
                }
                .width('100%')
                .padding(12)
                .backgroundColor('#FFFEF9')
                .borderRadius(8)
                .margin({ top: 8 })
                .alignItems(HorizontalAlign.Start)
              }

              if (this.detailItem.movingLine.changeMeaning) {
                Column() {
                  Text('🔄 动爻变化')
                    .fontSize(12)
                    .fontColor('#B94A48')
                    .fontWeight(FontWeight.Bold)
                  Text(this.detailItem.movingLine.changeMeaning)
                    .fontSize(12)
                    .fontColor('#5C4A32')
                    .margin({ top: 4 })
                }
                .width('100%')
                .padding(12)
                .backgroundColor('#FFFEF9')
                .borderRadius(8)
                .margin({ top: 8 })
                .alignItems(HorizontalAlign.Start)
              }

              if (this.detailItem.movingLine.classicComment) {
                Column() {
                  Text('📚 经传释义')
                    .fontSize(12)
                    .fontColor('#B94A48')
                    .fontWeight(FontWeight.Bold)
                  Text(this.detailItem.movingLine.classicComment)
                    .fontSize(12)
                    .fontColor('#5C4A32')
                    .margin({ top: 4 })
                    .lineHeight(18)
                }
                .width('100%')
                .padding(12)
                .backgroundColor('#FFFEF9')
                .borderRadius(8)
                .margin({ top: 8 })
                .alignItems(HorizontalAlign.Start)
              }

              if (this.detailItem.movingLine.multipleJudgments && this.detailItem.movingLine.multipleJudgments.length > 0) {
                Column() {
                  Text('🔮 一辞多断')
                    .fontSize(12)
                    .fontColor('#B94A48')
                    .fontWeight(FontWeight.Bold)
                  ForEach(this.detailItem.movingLine.multipleJudgments, (mj: string) => {
                    Text(mj)
                      .fontSize(12)
                      .fontColor('#5C4A32')
                      .margin({ top: 4 })
                  })
                }
                .width('100%')
                .padding(12)
                .backgroundColor('#FFFEF9')
                .borderRadius(8)
                .margin({ top: 8 })
                .alignItems(HorizontalAlign.Start)
              }

              if (this.detailItem.movingLine.takashiCase) {
                Column() {
                  Text('📜 高岛活断实例')
                    .fontSize(12)
                    .fontColor('#B94A48')
                    .fontWeight(FontWeight.Bold)
                  Text(this.detailItem.movingLine.takashiCase)
                    .fontSize(12)
                    .fontColor('#5C4A32')
                    .margin({ top: 4 })
                    .lineHeight(18)
                }
                .width('100%')
                .padding(12)
                .backgroundColor('#FFFEF9')
                .borderRadius(8)
                .margin({ top: 8 })
                .alignItems(HorizontalAlign.Start)
              }
            }
            .width('100%')
            .padding(12)
            .backgroundColor('#F5F1E8')
            .borderRadius(8)
            .margin({ top: 12 })
            .alignItems(HorizontalAlign.Start)
          }

          if (this.detailItem.finalReading) {
            Column() {
              Text('📜 终卦解读')
                .fontSize(14)
                .fontColor('#B94A48')
                .fontWeight(FontWeight.Bold)
              Text(this.detailItem.finalReading.summary)
                .fontSize(13)
                .fontColor('#5C4A32')
                .margin({ top: 4 })
              Text(this.detailItem.finalReading.advice)
                .fontSize(12)
                .fontColor('#7A6B5A')
                .margin({ top: 4 })
              Text(this.detailItem.finalReading.outlook)
                .fontSize(12)
                .fontColor('#7A6B5A')
                .margin({ top: 4 })
            }
            .width('100%')
            .padding(12)
            .backgroundColor('#F5F1E8')
            .borderRadius(8)
            .margin({ top: 12 })
            .alignItems(HorizontalAlign.Start)
          }

          Column() {
            Row() {
              Text('📝 心得笔记')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
            }
            .width('100%')

            if (!this.isEditingComment) {
              if (this.detailItem.comment) {
                Text(this.detailItem.comment)
                  .fontSize(13)
                  .fontColor('#2C2416')
                  .margin({ top: 8 })
                  .padding(12)
                  .backgroundColor('#F5F1E8')
                  .borderRadius(8)
                  .width('100%')
              }

              Button(this.detailItem.comment ? '编辑笔记' : '+ 添加心得笔记')
                .height(40)
                .fontSize(14)
                .fontColor('#FFFFFF')
                .fontWeight(FontWeight.Medium)
                .backgroundColor('#B94A48')
                .borderRadius(8)
                .margin({ top: 8 })
                .width('100%')
                .onClick(() => {
                  this.isEditingComment = true;
                  this.commentInput = this.detailItem?.comment || '';
                })
            } else {
              TextArea({ placeholder: '记录您对这次占卜的心得体会...' })
                .width('100%')
                .height(80)
                .fontSize(14)
                .fontColor('#2C2416')
                .backgroundColor('#F5F1E8')
                .border({ width: 1, color: '#D4C4A8', radius: 8 })
                .margin({ top: 8 })
                .onChange((value: string) => {
                  this.commentInput = value;
                })

              Row() {
                Button('取消')
                  .height(32)
                  .fontSize(12)
                  .fontColor('#6B5D4F')
                  .backgroundColor('#F5F1E8')
                  .border({ width: 1, color: '#D4C4A8', radius: 6 })
                  .onClick(() => { this.isEditingComment = false; })

                Button('保存')
                  .height(32)
                  .fontSize(12)
                  .fontColor('#FFFFFF')
                  .backgroundColor('#B94A48')
                  .borderRadius(6)
                  .margin({ left: 8 })
                  .onClick(async () => {
                    if (this.detailItem) {
                      const user = this.findUserForItem(this.detailItem.id);
                      if (user) {
                        await updateHistoryComment(user, this.detailItem.id, this.commentInput.trim());
                        this.detailItem.comment = this.commentInput.trim();
                        this.detailItem.commentUpdatedAt = new Date().toISOString();
                        await this.loadAllHistory();
                      }
                    }
                    this.isEditingComment = false;
                  })
              }
              .margin({ top: 8 })
              .justifyContent(FlexAlign.End)
            }
          }
          .width('100%')
          .margin({ top: 16 })
          .alignItems(HorizontalAlign.Start)

          // 进阶解读按钮
          Button('🔮 进阶解读')
            .width('100%')
            .height(40)
            .fontSize(14)
            .fontColor('#D4AF37')
            .backgroundColor('#D4AF3708')
            .border({ width: 1, color: '#D4AF3740', radius: 8 })
            .margin({ top: 16 })
            .onClick(() => {
              this.handleAdvancedReading();
            })
        }
      }
      .padding(16)
      .width('100%')
    }
    .width('100%')
    .height('100%')
  }
}
