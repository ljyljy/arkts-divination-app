import { getAllUsers, getHistory, deleteHistoryItem, addNote, editNote, deleteNote } from '../utils/StorageUtils';
import { DivinationResult, FilterItem, NoteItem, MultipleJudgment } from '../model/DivinationModel';
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
  @State showDetail: boolean = false
  @State selectedUserIndex: number = 0
  @State detailOffsetX: number = 0
  @State listOpacity: number = 1
  @State editingNoteId: string = ''
  @State editingNoteContent: string = ''
  @State newNoteContent: string = ''
  @State isAddingNote: boolean = false
  @State showUserHistory: string = ''
  @State showContentSheet: boolean = false
  @State sheetTitle: string = ''
  @State sheetContent: string = ''
  @Link @Watch('onDetailStateChanged') showDetailState: boolean
  @Prop @Watch('onTabChanged') currentTabIndex: number = 3

  private filterAll: FilterItem = { key: 'all', label: '全部' }
  private filterToday: FilterItem = { key: 'today', label: '今天' }
  private filterWeek: FilterItem = { key: 'week', label: '本周' }
  private filterMonth: FilterItem = { key: 'month', label: '本月' }
  private filters: FilterItem[] = [this.filterAll, this.filterToday, this.filterWeek, this.filterMonth]

  aboutToAppear() {
    this.loadAllHistory();
  }

  build() {
    Stack() {
      // 主列表
      Scroll() {
        Column() {
          Text('📜 占卜历史')
            .fontSize(28)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2C2416')
            .margin({ top: 20, bottom: 4 })
          Text('回顾您的占卜记录')
            .fontSize(14)
            .fontColor('#6B5D4F')
            .margin({ bottom: 16 })

          if (this.userGroups.length > 0) {
            // 用户下拉框
            Row() {
              Text('👤')
                .fontSize(16)
                .margin({ right: 4 })
              Select(this.getUserSelectOptions())
                .selected(this.selectedUserIndex)
                .value('全部用户')
                .font({ size: 14 })
                .fontColor('#2C2416')
                .selectedOptionFont({ size: 14 })
                .selectedOptionFontColor('#FFFFFF')
                .selectedOptionBgColor('#B94A48')
                .optionFont({ size: 14 })
                .optionFontColor('#2C2416')
                .onSelect((index: number) => {
                  animateTo({ duration: 200, curve: Curve.EaseInOut }, () => {
                    this.selectedUserIndex = index;
                  });
                })
            }
            .width('100%')
            .margin({ bottom: 8 })

            // 时间筛选 + 记录数
            Row() {
              ForEach(this.filters, (f: FilterItem) => {
                Button(f.label)
                  .height(28)
                  .fontSize(12)
                  .fontColor(this.filter === f.key ? '#FFFFFF' : '#6B5D4F')
                  .backgroundColor(this.filter === f.key ? '#B94A48' : '#FFFEF9')
                  .border({ width: 1, color: this.filter === f.key ? '#B94A48' : '#D4C4A8', radius: 14 })
                  .padding({ left: 12, right: 12 })
                  .margin({ right: 8 })
                  .animation({ duration: 200, curve: Curve.EaseInOut })
                  .onClick(() => {
                    animateTo({ duration: 200, curve: Curve.EaseInOut }, () => {
                      this.filter = f.key;
                    });
                  })
              })

              Text(`📋 共 ${this.getTotalCount()} 条`)
                .fontSize(12)
                .fontColor('#6B5D4F')
            }
            .width('100%')
            .margin({ bottom: 12 })
          }

          if (this.userGroups.length > 0) {
            ForEach(this.getDisplayGroups(), (group: UserGroup) => {
              if (this.getFilteredRecords(group.records).length > 0) {
                Column() {
                  Row() {
                    Text('🏷')
                      .fontSize(14)
                      .margin({ right: 4 })
                    Text(`${group.username}`)
                      .fontSize(14)
                      .fontWeight(FontWeight.Bold)
                      .fontColor('#B94A48')
                    Text(` (${group.records.length})`)
                      .fontSize(12)
                      .fontColor('#6B5D4F')
                  }
                  .margin({ bottom: 8 })

                  ForEach(this.getLimitedRecords(group.records), (item: DivinationResult) => {
                    Row() {
                      Column() {
                        Text(item.question)
                          .fontSize(14)
                          .fontColor('#2C2416')
                          .fontWeight(FontWeight.Bold)
                          .maxLines(1)
                          .textOverflow({ overflow: TextOverflow.Ellipsis })
                        Row() {
                          Text(`${item.hexagram?.symbol || ''} ${item.hexagram?.name || ''}`)
                            .fontSize(12)
                            .fontColor('#B94A48')
                          Text('🕐')
                            .fontSize(10)
                            .fontColor('#6B5D4F')
                            .margin({ left: 8, right: 2 })
                          Text(this.formatTime(item.timestamp))
                            .fontSize(12)
                            .fontColor('#6B5D4F')
                        }
                        .margin({ top: 4 })

                        if (item.notes && item.notes.length > 0) {
                          Row() {
                            Text('💭')
                              .fontSize(10)
                              .margin({ right: 2 })
                            if (item.notes.length > 1) {
                              Text(`${item.notes.length}`)
                                .fontSize(10)
                                .fontColor('#FFFFFF')
                                .backgroundColor('#B94A48')
                                .borderRadius(8)
                                .padding({ left: 4, right: 4, top: 1, bottom: 1 })
                                .margin({ right: 4 })
                            }
                            Text(item.notes[item.notes.length - 1].content)
                              .fontSize(12)
                              .fontColor('#6B5D4F')
                              .maxLines(1)
                              .textOverflow({ overflow: TextOverflow.Ellipsis })
                              .layoutWeight(1)
                          }
                          .margin({ top: 4 })
                          .width('100%')
                        }
                      }
                      .layoutWeight(1)
                      .alignItems(HorizontalAlign.Start)

                      Button('🗑')
                        .height(28)
                        .fontSize(11)
                        .fontColor('#C0A080')
                        .fontWeight(FontWeight.Medium)
                        .backgroundColor('#F5F1E8')
                        .borderRadius(6)
                        .stateStyles({
                          pressed: { .backgroundColor('#E8E0D0') },
                          normal: { .backgroundColor('#F5F1E8') }
                        })
                        .onClick(async () => {
                          await deleteHistoryItem(group.username, item.id);
                          await this.loadAllHistory();
                          if (this.detailItem?.id === item.id) {
                            this.detailItem = null;
                            this.showDetail = false;
                          }
                        })
                    }
                    .width('100%')
                    .padding(12)
                    .backgroundColor('#FFFEF9')
                    .borderRadius(8)
                    .margin({ top: 8 })
                    .shadow({ radius: 2, color: '#00000008', offsetY: 1 })
                    .onClick(() => {
                      this.detailItem = item;
                      this.editingNoteId = '';
                      this.editingNoteContent = '';
                      this.isAddingNote = false;
                      animateTo({ duration: 300, curve: Curve.EaseInOut }, () => {
                        this.showDetail = true;
                        this.showDetailState = true;
                      });
                    })
                  })

                  if (this.getFilteredRecords(group.records).length > 10) {
                    Row() {
                      Text('更多 ▸')
                        .fontSize(13)
                        .fontColor('#B94A48')
                        .fontWeight(FontWeight.Medium)
                    }
                    .width('100%')
                    .height(40)
                    .justifyContent(FlexAlign.Center)
                    .backgroundColor('#FFFEF9')
                    .borderRadius(8)
                    .margin({ top: 8 })
                    .onClick(() => {
                      this.showUserHistory = group.username;
                      this.showDetailState = true;
                    })
                  }
                }
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
                .fontSize(48)
                .fontColor('#2C241620')
              Text('暂无历史记录')
                .fontSize(16)
                .fontColor('#6B5D4F')
                .margin({ top: 12 })
              Text('开始您的第一次占卜吧')
                .fontSize(12)
                .fontColor('#6B5D4F60')
                .margin({ top: 4 })
            }
            .width('100%')
            .padding(48)
            .backgroundColor('#FFFEF9')
            .borderRadius(12)
            .margin({ top: 16 })
            .alignItems(HorizontalAlign.Center)
          }
        }
        .padding({ left: 16, right: 16 })
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#F5F1E8')

      // 全屏详情页（带滑入动画和手势）
      if (this.showUserHistory) {
        this.UserHistoryBuilder()
      }

      if (this.showDetail) {
        this.DetailFullScreenBuilder()
      }
    }
    .width('100%')
    .height('100%')
    .bindSheet($$this.showContentSheet, this.ContentSheetBuilder(), {
      height: SheetSize.MEDIUM,
      showClose: true,
      dragBar: true,
      backgroundColor: Color.Transparent
    })
  }

  onDetailStateChanged() {
    if (!this.showDetailState) {
      if (this.showDetail) {
        this.showDetail = false;
        this.detailOffsetX = 0;
      }
      if (this.showUserHistory) {
        this.showUserHistory = '';
      }
    }
  }

  onTabChanged() {
    if (this.currentTabIndex === 3) {
      this.loadAllHistory();
    }
  }

  private getUserSelectOptions(): SelectOption[] {
    const options: SelectOption[] = [{ value: '全部用户' }];
    for (let i = 0; i < this.userGroups.length; i++) {
      options.push({ value: this.userGroups[i].username });
    }
    return options;
  }

  private getDisplayGroups(): UserGroup[] {
    if (this.selectedUserIndex === 0) {
      return this.userGroups;
    }
    const idx = this.selectedUserIndex - 1;
    if (idx >= 0 && idx < this.userGroups.length) {
      return [this.userGroups[idx]];
    }
    return this.userGroups;
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
    // 每组内按时间降序，用户组按最新记录时间降序排列
    for (const g of groups) {
      g.records.sort((a, b) => new Date(b.timestamp).getTime() - new Date(a.timestamp).getTime());
    }
    groups.sort((a, b) => {
      const aLatest = a.records.length > 0 ? new Date(a.records[0].timestamp).getTime() : 0;
      const bLatest = b.records.length > 0 ? new Date(b.records[0].timestamp).getTime() : 0;
      return bLatest - aLatest;
    });
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

  private getLimitedRecords(records: DivinationResult[], limit: number = 10): DivinationResult[] {
    return this.getFilteredRecords(records).slice(0, limit);
  }

  private getUserAllRecords(): DivinationResult[] {
    for (const g of this.userGroups) {
      if (g.username === this.showUserHistory) {
        return this.getFilteredRecords(g.records);
      }
    }
    return [];
  }

  private getTotalCount(): number {
    let count = 0;
    const groups = this.getDisplayGroups();
    for (let i = 0; i < groups.length; i++) {
      count += this.getFilteredRecords(groups[i].records).length;
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

  private closeDetail() {
    animateTo({ duration: 250, curve: Curve.EaseInOut, onFinish: () => {
      this.detailOffsetX = 0;
    }}, () => {
      this.showDetail = false;
      if (!this.showUserHistory) {
        this.showDetailState = false;
      }
    });
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
  DetailFullScreenBuilder() {
    Column() {
      // 顶部导航栏
      Row() {
        Row() {
          Text('‹')
            .fontSize(24)
            .fontColor('#2C2416')
            .fontWeight(FontWeight.Bold)
            .margin({ right: 2 })
          Text('返回')
            .fontSize(15)
            .fontColor('#2C2416')
        }
        .padding({ left: 8, right: 12, top: 6, bottom: 6 })
        .borderRadius(8)
        .backgroundColor('#F5F1E8')
        .onClick(() => { this.closeDetail(); })
        Text('☯ 占卜详情')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2C2416')
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
        Row().width(60)
      }
      .width('100%')
      .padding({ left: 8, right: 8 })
      .height(56)
      .alignItems(VerticalAlign.Center)
      .backgroundColor('#FFFEF9')
      .border({ width: { bottom: 1 }, color: '#D4C4A850' })

      // 详情内容
      Scroll() {
        Column() {
          if (this.detailItem) {
            Column() {
              Text('❓ 问题')
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
                Text('☰ 上卦')
                  .fontSize(12)
                  .fontColor('#6B5D4F')
                Text(this.detailItem.hexagram?.upperTrigramInfo?.symbol || '')
                  .fontSize(28)
                Text(this.detailItem.hexagram?.upperTrigramInfo?.name || '')
                  .fontSize(14)
                  .fontColor('#2C2416')
              }

              Column() {
                Text('☷ 下卦')
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
                Text('🔢 上卦取数')
                  .fontSize(10)
                  .fontColor('#6B5D4F')
                Text(this.getUpperNumberText())
                  .fontSize(16)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#2C2416')
              }

              Column() {
                Text('🔢 下卦取数')
                  .fontSize(10)
                  .fontColor('#6B5D4F')
                Text(this.getLowerNumberText())
                  .fontSize(16)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#2C2416')
              }

              Column() {
                Text('⚡ 动爻取数')
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
                this.HistInterpretationItem('💼 事业', this.detailItem.hexagram.interpretation.career)
                this.HistInterpretationItem('💕 感情', this.detailItem.hexagram.interpretation.relationship)
                this.HistInterpretationItem('💪 健康', this.detailItem.hexagram.interpretation.health)
                this.HistInterpretationItem('💰 财运', this.detailItem.hexagram.interpretation.wealth)
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
                      .maxLines(2)
                      .textOverflow({ overflow: TextOverflow.Ellipsis })
                    Row() {
                      Button('查看全部 ›')
                        .fontSize(12)
                        .fontColor('#B94A48')
                        .backgroundColor(Color.Transparent)
                        .height(24)
                        .padding({ left: 8, right: 8 })
                        .onClick(() => {
                          this.sheetTitle = '📚 经传释义';
                          this.sheetContent = this.detailItem!.movingLine!.classicComment!;
                          this.showContentSheet = true;
                        })
                    }
                    .margin({ top: 4 })
                    .width('100%')
                    .justifyContent(FlexAlign.End)
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
                    Text('📜 一辞多断')
                      .fontSize(12)
                      .fontColor('#B94A48')
                      .fontWeight(FontWeight.Bold)
                    ForEach(this.detailItem.movingLine.multipleJudgments, (mj: MultipleJudgment) => {
                      Column() {
                        Text(mj.category)
                          .fontSize(11)
                          .fontColor('#8B7355')
                          .fontWeight(FontWeight.Bold)
                        Text(mj.content)
                          .fontSize(12)
                          .fontColor('#5C4A32')
                          .margin({ top: 2 })
                          .lineHeight(18)
                      }
                      .width('100%')
                      .margin({ top: 8 })
                      .padding(8)
                      .backgroundColor('#FFF9F0')
                      .borderRadius(6)
                      .alignItems(HorizontalAlign.Start)
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
                      .maxLines(2)
                      .textOverflow({ overflow: TextOverflow.Ellipsis })
                    Row() {
                      Button('查看全部 ›')
                        .fontSize(12)
                        .fontColor('#B94A48')
                        .backgroundColor(Color.Transparent)
                        .height(24)
                        .padding({ left: 8, right: 8 })
                        .onClick(() => {
                          this.sheetTitle = '📜 高岛活断实例';
                          this.sheetContent = this.detailItem!.movingLine!.takashiCase!;
                          this.showContentSheet = true;
                        })
                    }
                    .margin({ top: 4 })
                    .width('100%')
                    .justifyContent(FlexAlign.End)
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

            if (this.detailItem.changedHexagram) {
              Column() {
                Text('🔄 之卦（变卦）详解')
                  .fontSize(14)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#2C2416')
                  .margin({ bottom: 8 })

                if (this.detailItem.changedHexagram.judgment) {
                  Column() {
                    Text('📖 之卦卦辞')
                      .fontSize(12)
                      .fontColor('#8B7355')
                      .fontWeight(FontWeight.Bold)
                    Text(this.detailItem.changedHexagram.judgment)
                      .fontSize(14)
                      .fontColor('#5C4A32')
                      .margin({ top: 4 })
                  }
                  .width('100%')
                  .padding(12)
                  .backgroundColor('#F5F1E8')
                  .borderRadius(8)
                  .alignItems(HorizontalAlign.Start)
                }

                if (this.detailItem.changedHexagram.interpretation) {
                  Column() {
                    Text('✨ 之卦解释')
                      .fontSize(14)
                      .fontWeight(FontWeight.Bold)
                      .fontColor('#2C2416')
                      .margin({ bottom: 8 })

                    this.HistInterpretationItem('总述', this.detailItem.changedHexagram.interpretation.summary)
                    this.HistInterpretationItem('💼 事业', this.detailItem.changedHexagram.interpretation.career)
                    this.HistInterpretationItem('💕 感情', this.detailItem.changedHexagram.interpretation.relationship)
                    this.HistInterpretationItem('💪 健康', this.detailItem.changedHexagram.interpretation.health)
                    this.HistInterpretationItem('💰 财运', this.detailItem.changedHexagram.interpretation.wealth)
                  }
                  .width('100%')
                  .margin({ top: 12 })
                  .alignItems(HorizontalAlign.Start)
                }

                if (this.detailItem.changedHexagram.multipleJudgments && this.detailItem.changedHexagram.multipleJudgments.length > 0) {
                  Column() {
                    Text('📜 之卦一辞多断')
                      .fontSize(14)
                      .fontColor('#B94A48')
                      .fontWeight(FontWeight.Bold)
                      .margin({ bottom: 8 })
                    ForEach(this.detailItem.changedHexagram.multipleJudgments, (mj: MultipleJudgment) => {
                      Column() {
                        Text(mj.category)
                          .fontSize(11)
                          .fontColor('#8B7355')
                          .fontWeight(FontWeight.Bold)
                        Text(mj.content)
                          .fontSize(12)
                          .fontColor('#5C4A32')
                          .margin({ top: 2 })
                          .lineHeight(18)
                      }
                      .width('100%')
                      .margin({ top: 8 })
                      .padding(8)
                      .backgroundColor('#FFF9F0')
                      .borderRadius(6)
                      .alignItems(HorizontalAlign.Start)
                    })
                  }
                  .width('100%')
                  .padding(12)
                  .backgroundColor('#FFFEF9')
                  .borderRadius(8)
                  .margin({ top: 12 })
                  .alignItems(HorizontalAlign.Start)
                }

                if (this.detailItem.changedHexagram.takashiCase) {
                  Column() {
                    Text('📜 之卦高岛活断')
                      .fontSize(14)
                      .fontColor('#B94A48')
                      .fontWeight(FontWeight.Bold)
                      .margin({ bottom: 8 })
                    Text(this.detailItem.changedHexagram.takashiCase)
                      .fontSize(12)
                      .fontColor('#5C4A32')
                      .lineHeight(18)
                      .maxLines(2)
                      .textOverflow({ overflow: TextOverflow.Ellipsis })
                    Row() {
                      Button('查看全部 ›')
                        .fontSize(12)
                        .fontColor('#B94A48')
                        .backgroundColor(Color.Transparent)
                        .height(24)
                        .padding({ left: 8, right: 8 })
                        .onClick(() => {
                          this.sheetTitle = '📜 之卦高岛活断';
                          this.sheetContent = this.detailItem!.changedHexagram!.takashiCase!;
                          this.showContentSheet = true;
                        })
                    }
                    .margin({ top: 4 })
                    .width('100%')
                    .justifyContent(FlexAlign.End)
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
              Text('📝 心得笔记')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
                .margin({ bottom: 8 })

              // 已有笔记列表
              if (this.detailItem.notes && this.detailItem.notes.length > 0) {
                ForEach(this.detailItem.notes, (note: NoteItem) => {
                  if (this.editingNoteId === note.id) {
                    // 编辑模式
                    Column() {
                      TextArea({ text: this.editingNoteContent })
                        .width('100%')
                        .height(70)
                        .fontSize(13)
                        .fontColor('#2C2416')
                        .backgroundColor('#FFFEF9')
                        .border({ width: 1, color: '#D4C4A8', radius: 8 })
                        .onChange((value: string) => {
                          this.editingNoteContent = value;
                        })
                      Row() {
                        Button('取消')
                          .height(28)
                          .fontSize(11)
                          .fontColor('#6B5D4F')
                          .backgroundColor('#F5F1E8')
                          .border({ width: 1, color: '#D4C4A8', radius: 6 })
                          .onClick(() => {
                            this.editingNoteId = '';
                            this.editingNoteContent = '';
                          })
                        Button('💾')
                          .height(28)
                          .fontSize(11)
                          .fontColor('#FFFFFF')
                          .backgroundColor('#B94A48')
                          .borderRadius(6)
                          .margin({ left: 6 })
                          .onClick(async () => {
                            if (this.detailItem && this.editingNoteContent.trim()) {
                              const user = this.findUserForItem(this.detailItem.id);
                              if (user) {
                                await editNote(user, this.detailItem.id, note.id, this.editingNoteContent.trim());
                                await this.loadAllHistory();
                                // 刷新 detailItem
                                for (const g of this.userGroups) {
                                  const found = g.records.find(r => r.id === this.detailItem?.id);
                                  if (found) { this.detailItem = found; break; }
                                }
                              }
                            }
                            this.editingNoteId = '';
                            this.editingNoteContent = '';
                          })
                      }
                      .margin({ top: 6 })
                      .justifyContent(FlexAlign.End)
                    }
                    .width('100%')
                    .padding(10)
                    .backgroundColor('#F5F1E8')
                    .borderRadius(8)
                    .margin({ top: 6 })
                  } else {
                    // 展示模式
                    Row() {
                      Text(note.content)
                        .fontSize(13)
                        .fontColor('#2C2416')
                        .layoutWeight(1)
                        .lineHeight(18)
                      Row() {
                        Text('✏')
                          .fontSize(14)
                          .fontColor('#C0A080')
                          .margin({ left: 6 })
                          .onClick(() => {
                            this.editingNoteId = note.id;
                            this.editingNoteContent = note.content;
                          })
                        Text('🗑')
                          .fontSize(14)
                          .fontColor('#C0A080')
                          .margin({ left: 8 })
                          .onClick(async () => {
                            if (this.detailItem) {
                              const user = this.findUserForItem(this.detailItem.id);
                              if (user) {
                                await deleteNote(user, this.detailItem.id, note.id);
                                await this.loadAllHistory();
                                for (const g of this.userGroups) {
                                  const found = g.records.find(r => r.id === this.detailItem?.id);
                                  if (found) { this.detailItem = found; break; }
                                }
                              }
                            }
                          })
                      }
                    }
                    .width('100%')
                    .padding(10)
                    .backgroundColor('#F5F1E8')
                    .borderRadius(8)
                    .margin({ top: 6 })
                    .alignItems(VerticalAlign.Top)
                  }
                })
              }

              // 添加新笔记
              if (this.isAddingNote) {
                Column() {
                  TextArea({ placeholder: '记录心得体会...', text: this.newNoteContent })
                    .width('100%')
                    .height(70)
                    .fontSize(13)
                    .fontColor('#2C2416')
                    .backgroundColor('#FFFEF9')
                    .border({ width: 1, color: '#D4C4A8', radius: 8 })
                    .onChange((value: string) => {
                      this.newNoteContent = value;
                    })
                  Row() {
                    Button('取消')
                      .height(28)
                      .fontSize(11)
                      .fontColor('#6B5D4F')
                      .backgroundColor('#F5F1E8')
                      .border({ width: 1, color: '#D4C4A8', radius: 6 })
                      .onClick(() => {
                        this.isAddingNote = false;
                        this.newNoteContent = '';
                      })
                    Button('💾 保存')
                      .height(28)
                      .fontSize(11)
                      .fontColor('#FFFFFF')
                      .backgroundColor('#B94A48')
                      .borderRadius(6)
                      .margin({ left: 6 })
                      .onClick(async () => {
                        if (this.detailItem && this.newNoteContent.trim()) {
                          const user = this.findUserForItem(this.detailItem.id);
                          if (user) {
                            await addNote(user, this.detailItem.id, this.newNoteContent.trim());
                            await this.loadAllHistory();
                            for (const g of this.userGroups) {
                              const found = g.records.find(r => r.id === this.detailItem?.id);
                              if (found) { this.detailItem = found; break; }
                            }
                          }
                        }
                        this.isAddingNote = false;
                        this.newNoteContent = '';
                      })
                  }
                  .margin({ top: 6 })
                  .justifyContent(FlexAlign.End)
                }
                .width('100%')
                .padding(10)
                .backgroundColor('#F5F1E8')
                .borderRadius(8)
                .margin({ top: 6 })
              } else {
                Text('➕')
                  .fontSize(16)
                  .fontColor('#B94A48')
                  .margin({ top: 6 })
                  .onClick(() => {
                    this.isAddingNote = true;
                    this.newNoteContent = '';
                  })
              }
            }
            .width('100%')
            .margin({ top: 16 })
            .alignItems(HorizontalAlign.Start)

            // 进阶解读按钮
            Button('🔮 进阶解读')
              .width('100%')
              .height(44)
              .fontSize(15)
              .fontColor('#D4AF37')
              .backgroundColor('#D4AF3708')
              .border({ width: 1, color: '#D4AF3740', radius: 8 })
              .margin({ top: 16, bottom: 20 })
              .stateStyles({
                pressed: { .backgroundColor('#D4AF3718') },
                normal: { .backgroundColor('#D4AF3708') }
              })
              .onClick(() => {
                this.handleAdvancedReading();
              })
          }
        }
        .padding(16)
        .width('100%')
      }
      .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFEF9')
    .translate({ x: this.detailOffsetX })
    .transition(TransitionEffect.OPACITY.animation({ duration: 300, curve: Curve.EaseInOut }))
    .gesture(
      PanGesture({ fingers: 1, direction: PanDirection.Horizontal, distance: 20 })
        .onActionStart((event: GestureEvent) => {
        })
        .onActionUpdate((event: GestureEvent) => {
          if (event.offsetX > 0) {
            this.detailOffsetX = event.offsetX;
          }
        })
        .onActionEnd((event: GestureEvent) => {
          if (event.offsetX > 80) {
            this.closeDetail();
          } else {
            animateTo({ duration: 200, curve: Curve.EaseOut }, () => {
              this.detailOffsetX = 0;
            });
          }
        })
    )
  }

  @Builder
  UserHistoryBuilder() {
    Column() {
      // 顶部导航栏
      Row() {
        Row() {
          Text('‹')
            .fontSize(24)
            .fontColor('#2C2416')
            .fontWeight(FontWeight.Bold)
            .margin({ right: 2 })
          Text('返回')
            .fontSize(15)
            .fontColor('#2C2416')
        }
        .padding({ left: 8, right: 12, top: 6, bottom: 6 })
        .borderRadius(8)
        .backgroundColor('#F5F1E8')
        .onClick(() => {
          this.showUserHistory = '';
          if (!this.showDetail) {
            this.showDetailState = false;
          }
        })
        Text(`🏷 ${this.showUserHistory}`)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2C2416')
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
        Row().width(60)
      }
      .width('100%')
      .padding({ left: 8, right: 8 })
      .height(56)
      .alignItems(VerticalAlign.Center)
      .backgroundColor('#FFFEF9')
      .border({ width: { bottom: 1 }, color: '#D4C4A850' })

      // 记录列表
      Scroll() {
        Column() {
          Text(`📋 共 ${this.getUserAllRecords().length} 条记录`)
            .fontSize(12)
            .fontColor('#6B5D4F')
            .margin({ top: 12, bottom: 8 })

          ForEach(this.getUserAllRecords(), (item: DivinationResult) => {
            Row() {
              Column() {
                Text(item.question)
                  .fontSize(14)
                  .fontColor('#2C2416')
                  .fontWeight(FontWeight.Bold)
                  .maxLines(1)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
                Row() {
                  Text(`${item.hexagram?.symbol || ''} ${item.hexagram?.name || ''}`)
                    .fontSize(12)
                    .fontColor('#B94A48')
                  Text('🕐')
                    .fontSize(10)
                    .fontColor('#6B5D4F')
                    .margin({ left: 8, right: 2 })
                  Text(this.formatTime(item.timestamp))
                    .fontSize(12)
                    .fontColor('#6B5D4F')
                }
                .margin({ top: 4 })

                if (item.notes && item.notes.length > 0) {
                  Row() {
                    Text('💭')
                      .fontSize(10)
                      .margin({ right: 2 })
                    if (item.notes.length > 1) {
                      Text(`${item.notes.length}`)
                        .fontSize(10)
                        .fontColor('#FFFFFF')
                        .backgroundColor('#B94A48')
                        .borderRadius(8)
                        .padding({ left: 4, right: 4, top: 1, bottom: 1 })
                        .margin({ right: 4 })
                    }
                    Text(item.notes[item.notes.length - 1].content)
                      .fontSize(12)
                      .fontColor('#6B5D4F')
                      .maxLines(1)
                      .textOverflow({ overflow: TextOverflow.Ellipsis })
                      .layoutWeight(1)
                  }
                  .margin({ top: 4 })
                  .width('100%')
                }
              }
              .layoutWeight(1)
              .alignItems(HorizontalAlign.Start)

              Text('▸')
                .fontSize(16)
                .fontColor('#C0A080')
            }
            .width('100%')
            .padding(12)
            .backgroundColor('#FFFEF9')
            .borderRadius(8)
            .margin({ top: 8 })
            .shadow({ radius: 2, color: '#00000008', offsetY: 1 })
            .onClick(() => {
              this.detailItem = item;
              this.editingNoteId = '';
              this.editingNoteContent = '';
              this.isAddingNote = false;
              animateTo({ duration: 300, curve: Curve.EaseInOut }, () => {
                this.showDetail = true;
                this.showDetailState = true;
              });
            })
          })
        }
        .padding({ left: 16, right: 16, bottom: 20 })
      }
      .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F1E8')
    .transition(TransitionEffect.OPACITY.animation({ duration: 300, curve: Curve.EaseInOut }))
    .gesture(
      PanGesture({ fingers: 1, direction: PanDirection.Horizontal, distance: 20 })
        .onActionUpdate((event: GestureEvent) => {
          if (event.offsetX > 0 && !this.showDetail) {
            // 仅在非详情页时响应侧滑关闭
          }
        })
        .onActionEnd((event: GestureEvent) => {
          if (event.offsetX > 80 && !this.showDetail) {
            this.showUserHistory = '';
            this.showDetailState = false;
          }
        })
    )
  }

  @Builder
  ContentSheetBuilder() {
    Column() {
      Text(this.sheetTitle)
        .fontSize(18)
        .fontWeight(FontWeight.Bold)
        .fontColor('#2C2416')
        .margin({ top: 20, bottom: 12 })

      Scroll() {
        Text(this.sheetContent)
          .fontSize(14)
          .fontColor('#5C4A32')
          .lineHeight(24)
          .width('100%')
      }
      .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
    .padding({ left: 20, right: 20, bottom: 24 })
    .backgroundColor('#FFFEF9')
    .borderRadius({ topLeft: 16, topRight: 16 })
  }
}
