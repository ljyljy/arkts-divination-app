import { performDivination, performManualDivination, LINE_OPTIONS, generateRandomLines, isMovingLine, lineToBinary } from '../utils/HexagramUtils';
import { findTrigramByLines } from '../data/TrigramsData';
import { getCurrentUser, setCurrentUser, saveDivinationResult, addNote, editNote, deleteNote } from '../utils/StorageUtils';
import { DivinationResult, LineOption, Interpretation, NoteItem } from '../model/DivinationModel';
import { promptAction } from '@kit.ArkUI';
import { pasteboard } from '@kit.BasicServicesKit';

@Component
export struct DivinationPage {
  @State question: string = ''
  @State username: string = ''
  @State mode: string = 'random'
  @State manualLines: number[] = [7, 7, 7, 7, 7, 7]
  @State result: DivinationResult | null = null
  @State isDivining: boolean = false
  @State hasResult: boolean = false
  @State isAddingNote: boolean = false
  @State newNoteContent: string = ''
  @State editingNoteId: string = ''
  @State editingNoteContent: string = ''
  @State showContentSheet: boolean = false
  @State sheetTitle: string = ''
  @State sheetContent: string = ''

  private lineLabels: string[] = ['初爻', '二爻', '三爻', '四爻', '五爻', '上爻']

  aboutToAppear() {
    this.loadCurrentUser();
  }

  private async loadCurrentUser() {
    const user = await getCurrentUser();
    this.username = user;
  }

  build() {
    Scroll() {
      Column() {
        Text('☯ 易经占卜')
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2C2416')
          .margin({ top: 20, bottom: 4 })
        Text('诚心问卜，得见天机')
          .fontSize(14)
          .fontColor('#6B5D4F')
          .margin({ bottom: 20 })

        Column() {
          Text('用户名（用于归档）')
            .fontSize(12)
            .fontColor('#6B5D4F')
            .margin({ bottom: 4 })

          TextInput({ placeholder: '不填则默认「用户1」', text: this.username })
            .width('100%')
            .height(40)
            .fontSize(14)
            .fontColor('#2C2416')
            .placeholderColor('#6B5D4F40')
            .backgroundColor('#F5F1E8')
            .border({ width: 1, color: '#D4C4A8', radius: 8 })
            .onChange((value: string) => {
              this.username = value;
            })

          Text('请输入您想问的问题')
            .fontSize(14)
            .fontColor('#B94A48')
            .margin({ top: 12, bottom: 8 })

          TextArea({ placeholder: '例如：我的工作前景如何？近期运势怎样？' })
            .width('100%')
            .height(80)
            .fontSize(16)
            .fontColor('#2C2416')
            .placeholderColor('#6B5D4F40')
            .backgroundColor('#F5F1E8')
            .border({ width: 1, color: '#D4C4A8', radius: 8 })
            .onChange((value: string) => {
              this.question = value;
            })

          Row() {
            Button('🎲 随机起卦')
              .layoutWeight(1)
              .height(36)
              .fontSize(14)
              .fontColor(this.mode === 'random' ? '#FFFFFF' : '#6B5D4F')
              .backgroundColor(this.mode === 'random' ? '#B94A48' : '#F5F1E8')
              .border({ width: 1, color: '#D4C4A8', radius: 8 })
              .onClick(() => { this.mode = 'random'; })

            Button('✋ 手动指定')
              .layoutWeight(1)
              .height(36)
              .fontSize(14)
              .fontColor(this.mode === 'manual' ? '#FFFFFF' : '#6B5D4F')
              .backgroundColor(this.mode === 'manual' ? '#B94A48' : '#F5F1E8')
              .border({ width: 1, color: '#D4C4A8', radius: 8 })
              .margin({ left: 8 })
              .onClick(() => { this.mode = 'manual'; })
          }
          .margin({ top: 12 })

          if (this.mode === 'manual') {
            Column() {
              Row() {
                Text('六爻数值（从上到下）')
                  .fontSize(12)
                  .fontColor('#B94A48')
                  .fontWeight(FontWeight.Bold)
                Blank()
                Text('🎲 随机填入')
                  .fontSize(12)
                  .fontColor('#D4AF37')
                  .onClick(() => {
                    this.manualLines = generateRandomLines();
                  })
              }
              .width('100%')
              .margin({ bottom: 8 })

              ForEach(this.manualLines, (line: number, idx: number) => {
                Row() {
                  Text(this.lineLabels[5 - idx])
                    .fontSize(12)
                    .fontColor('#6B5D4F')
                    .width(40)

                  Row() {
                    ForEach(LINE_OPTIONS, (opt: LineOption) => {
                      Button(opt.label)
                        .layoutWeight(1)
                        .height(32)
                        .fontSize(12)
                        .fontColor(line === opt.value ? '#FFFFFF' : '#6B5D4F')
                        .backgroundColor(line === opt.value ?
                          (opt.moving ? '#B94A48' : '#2C2416') : '#F5F1E8')
                        .border({ width: 1, color: '#D4C4A8', radius: 6 })
                        .margin({ left: 2, right: 2 })
                        .onClick(() => {
                          this.manualLines[idx] = opt.value;
                        })
                    })
                  }
                  .layoutWeight(1)

                  Text(isMovingLine(line) ? '动' : '')
                    .fontSize(10)
                    .fontColor('#FFFFFF')
                    .backgroundColor(isMovingLine(line) ? '#B94A48' : Color.Transparent)
                    .borderRadius(10)
                    .width(20)
                    .height(20)
                    .textAlign(TextAlign.Center)
                }
                .width('100%')
                .margin({ top: 4 })
              })

              Row() {
                Text(`上卦：${this.getUpperTrigramName()} · 下卦：${this.getLowerTrigramName()}`)
                  .fontSize(10)
                  .fontColor('#6B5D4F')
                Blank()
                Text(`动爻数：${this.getMovingCount()}`)
                  .fontSize(10)
                  .fontColor('#6B5D4F')
              }
              .width('100%')
              .margin({ top: 8 })
            }
            .padding(12)
            .backgroundColor('#F5F1E8')
            .borderRadius(8)
            .margin({ top: 12 })
          }

          Button(this.isDivining ? '正在起卦...' : (this.mode === 'random' ? '开始占卜 ☯' : '确认卦象 ☯'))
            .width('100%')
            .height(48)
            .fontSize(18)
            .fontColor('#FFFFFF')
            .backgroundColor('#B94A48')
            .borderRadius(8)
            .margin({ top: 16 })
            .enabled(!this.isDivining && this.question.trim().length > 0)
            .onClick(() => {
              this.handleDivine();
            })
        }
        .padding(16)
        .backgroundColor('#FFFEF9')
        .borderRadius(12)
        .shadow({ radius: 4, color: '#00000010', offsetY: 2 })

        if (this.hasResult && this.result) {
          Column() {
            Text(this.result.hexagram?.symbol || '')
              .fontSize(56)
              .margin({ top: 16, bottom: 8 })
            Text(this.result.hexagram?.name || '')
              .fontSize(22)
              .fontWeight(FontWeight.Bold)
              .fontColor('#2C2416')
            Text(this.result.hexagram?.judgment || '')
              .fontSize(14)
              .fontColor('#5C4A32')
              .margin({ top: 8, bottom: 12 })
              .padding({ left: 16, right: 16 })

            Row() {
              Column() {
                Text('上卦')
                  .fontSize(12)
                  .fontColor('#6B5D4F')
                Text(this.result.hexagram?.upperTrigramInfo?.symbol || '')
                  .fontSize(28)
                Text(this.result.hexagram?.upperTrigramInfo?.name || '')
                  .fontSize(14)
                  .fontColor('#2C2416')
              }

              Column() {
                Text('下卦')
                  .fontSize(12)
                  .fontColor('#6B5D4F')
                Text(this.result.hexagram?.lowerTrigramInfo?.symbol || '')
                  .fontSize(28)
                Text(this.result.hexagram?.lowerTrigramInfo?.name || '')
                  .fontSize(14)
                  .fontColor('#2C2416')
              }
            }
            .justifyContent(FlexAlign.SpaceEvenly)
            .width('100%')
            .margin({ top: 8 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#FFFEF9')
          .borderRadius(12)
          .margin({ top: 16 })
          .alignItems(HorizontalAlign.Center)

          if (this.result.hexagram?.interpretation) {
            this.InterpretationSection('本卦详解', this.result.hexagram.interpretation)
          }

          if (this.result.movingLine) {
            Column() {
              Text(`⚡ 动爻 · ${this.result.movingLine.name}`)
                .fontSize(14)
                .fontColor('#B94A48')
                .fontWeight(FontWeight.Bold)
                .margin({ bottom: 4 })
              Text(this.result.movingLine.text)
                .fontSize(14)
                .fontColor('#5C4A32')
                .margin({ bottom: 4 })
              Text(this.result.movingLine.interpretation)
                .fontSize(12)
                .fontColor('#7A6B5A')

              if (this.result.movingLine.classicComment) {
                Column() {
                  Text('📚 经传释义')
                    .fontSize(12)
                    .fontColor('#B94A48')
                    .fontWeight(FontWeight.Bold)
                  Text(this.result.movingLine.classicComment)
                    .fontSize(12)
                    .fontColor('#5C4A32')
                    .margin({ top: 4 })
                    .lineHeight(18)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                  Row() {
                    Text('查看全部 ›')
                      .fontSize(12)
                      .fontColor('#B94A48')
                  }
                  .margin({ top: 4 })
                  .onClick(() => {
                    this.sheetTitle = '📚 经传释义';
                    this.sheetContent = this.result!.movingLine!.classicComment!;
                    this.showContentSheet = true;
                  })
                }
                .width('100%')
                .padding(12)
                .backgroundColor('#FFFEF9')
                .borderRadius(8)
                .margin({ top: 8 })
                .alignItems(HorizontalAlign.Start)
              }

              if (this.result.movingLine.multipleJudgments && this.result.movingLine.multipleJudgments.length > 0) {
                Column() {
                  Text('🔮 一辞多断')
                    .fontSize(12)
                    .fontColor('#B94A48')
                    .fontWeight(FontWeight.Bold)
                  ForEach(this.result.movingLine.multipleJudgments, (mj: string) => {
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

              if (this.result.movingLine.takashiCase) {
                Column() {
                  Text('📜 高岛活断实例')
                    .fontSize(12)
                    .fontColor('#B94A48')
                    .fontWeight(FontWeight.Bold)
                  Text(this.result.movingLine.takashiCase)
                    .fontSize(12)
                    .fontColor('#5C4A32')
                    .margin({ top: 4 })
                    .lineHeight(18)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                  Row() {
                    Text('查看全部 ›')
                      .fontSize(12)
                      .fontColor('#B94A48')
                  }
                  .margin({ top: 4 })
                  .onClick(() => {
                    this.sheetTitle = '📜 高岛活断实例';
                    this.sheetContent = this.result!.movingLine!.takashiCase!;
                    this.showContentSheet = true;
                  })
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
            .padding(16)
            .backgroundColor('#F5F1E8')
            .borderRadius(12)
            .margin({ top: 12 })
            .alignItems(HorizontalAlign.Start)
          }

          if (this.result.changedHexagram) {
            Column() {
              Text(`🔄 之卦（变卦） · ${this.result.changedHexagram.name}`)
                .fontSize(14)
                .fontColor('#B94A48')
                .fontWeight(FontWeight.Bold)
                .margin({ bottom: 4 })
              Text(this.result.changedHexagram.judgment || '')
                .fontSize(14)
                .fontColor('#5C4A32')
              if (this.result.changedHexagram.finalInterpretation) {
                Text(this.result.changedHexagram.finalInterpretation)
                  .fontSize(12)
                  .fontColor('#7A6B5A')
                  .margin({ top: 8 })
              }
            }
            .width('100%')
            .padding(16)
            .backgroundColor('#FFFEF9')
            .borderRadius(12)
            .margin({ top: 12 })
            .alignItems(HorizontalAlign.Start)
          }

          // 心得笔记
          Column() {
            Row() {
              Text('📝 心得笔记')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
              Blank()
              if (!this.isAddingNote) {
                Text('➕')
                  .fontSize(16)
                  .fontColor('#B94A48')
                  .onClick(() => {
                    this.isAddingNote = true;
                    this.newNoteContent = '';
                  })
              }
            }
            .width('100%')

            if (this.result.notes && this.result.notes.length > 0) {
              ForEach(this.result.notes, (note: NoteItem) => {
                if (this.editingNoteId === note.id) {
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
                      Text('取消')
                        .fontSize(12)
                        .fontColor('#6B5D4F')
                        .margin({ right: 12 })
                        .onClick(() => {
                          this.editingNoteId = '';
                          this.editingNoteContent = '';
                        })
                      Text('💾')
                        .fontSize(12)
                        .fontColor('#B94A48')
                        .fontWeight(FontWeight.Medium)
                        .onClick(async () => {
                          if (this.result && this.editingNoteContent.trim()) {
                            const user = this.username.trim() || await getCurrentUser();
                            await editNote(user, this.result.id, note.id, this.editingNoteContent.trim());
                            const idx = this.result.notes!.findIndex(n => n.id === note.id);
                            if (idx >= 0) {
                              this.result.notes![idx] = {
                                id: note.id, content: this.editingNoteContent.trim(),
                                createdAt: note.createdAt, updatedAt: new Date().toISOString()
                              };
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
                          if (this.result) {
                            const user = this.username.trim() || await getCurrentUser();
                            await deleteNote(user, this.result.id, note.id);
                            this.result.notes = this.result.notes?.filter(n => n.id !== note.id);
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

            if (this.isAddingNote) {
              TextArea({ placeholder: '记录心得体会...', text: this.newNoteContent })
                .width('100%')
                .height(70)
                .fontSize(13)
                .fontColor('#2C2416')
                .backgroundColor('#FFFEF9')
                .border({ width: 1, color: '#D4C4A8', radius: 8 })
                .margin({ top: 6 })
                .onChange((value: string) => {
                  this.newNoteContent = value;
                })
              Row() {
                Text('取消')
                  .fontSize(12)
                  .fontColor('#6B5D4F')
                  .margin({ right: 12 })
                  .onClick(() => {
                    this.isAddingNote = false;
                    this.newNoteContent = '';
                  })
                Text('💾 保存')
                  .fontSize(12)
                  .fontColor('#B94A48')
                  .fontWeight(FontWeight.Medium)
                  .onClick(async () => {
                    if (this.result && this.newNoteContent.trim()) {
                      const user = this.username.trim() || await getCurrentUser();
                      await addNote(user, this.result.id, this.newNoteContent.trim());
                      if (!this.result.notes) { this.result.notes = []; }
                      this.result.notes.push({ id: Date.now().toString(), content: this.newNoteContent.trim(), createdAt: new Date().toISOString() });
                    }
                    this.isAddingNote = false;
                    this.newNoteContent = '';
                  })
              }
              .margin({ top: 6 })
              .justifyContent(FlexAlign.End)
            }
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#FFFEF9')
          .borderRadius(12)
          .margin({ top: 12 })
          .alignItems(HorizontalAlign.Start)

          Row() {
            Button('重新占卜')
              .layoutWeight(1)
              .height(40)
              .fontSize(14)
              .fontColor('#6B5D4F')
              .backgroundColor('#FFFEF9')
              .border({ width: 1, color: '#D4C4A8', radius: 8 })
              .onClick(() => {
                this.question = '';
                this.result = null;
                this.hasResult = false;
              })

            Button('进阶解读')
              .layoutWeight(1)
              .height(40)
              .fontSize(14)
              .fontColor('#D4AF37')
              .backgroundColor('#D4AF3708')
              .border({ width: 1, color: '#D4AF3740', radius: 8 })
              .margin({ left: 8 })
              .onClick(() => {
                this.handleAdvancedReading();
              })
          }
          .margin({ top: 16, bottom: 20 })
        } else if (!this.hasResult) {
          Column() {
            Text('䷀')
              .fontSize(56)
              .fontColor('#2C241630')
            Text('输入问题后点击「开始占卜」')
              .fontSize(16)
              .fontColor('#6B5D4F60')
              .margin({ top: 12 })
            Text('卦象将在此处显示')
              .fontSize(12)
              .fontColor('#6B5D4F40')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(40)
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
    .bindSheet($$this.showContentSheet, this.ContentSheetBuilder(), {
      height: SheetSize.LARGE,
      showClose: true,
      dragBar: true,
      backgroundColor: Color.Transparent
    })
  }

  @Builder
  InterpretationSection(title: string, interpretation: Interpretation) {
    Column() {
      Text(`✨ ${title}`)
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .fontColor('#2C2416')
        .margin({ bottom: 8 })

      this.InterpretationItem('总述', interpretation.summary)
      this.InterpretationItem('事业', interpretation.career)
      this.InterpretationItem('感情', interpretation.relationship)
      this.InterpretationItem('健康', interpretation.health)
      this.InterpretationItem('财运', interpretation.wealth)
    }
    .width('100%')
    .padding(16)
    .backgroundColor('#FFFEF9')
    .borderRadius(12)
    .margin({ top: 12 })
    .alignItems(HorizontalAlign.Start)
  }

  @Builder
  InterpretationItem(label: string, content: string) {
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

  private getUpperTrigramName(): string {
    const upperBin = this.manualLines.slice(0, 3).map(l => lineToBinary(l)).reverse();
    const tri = findTrigramByLines(upperBin);
    return tri ? tri.name : '--';
  }

  private getLowerTrigramName(): string {
    const lowerBin = this.manualLines.slice(3, 6).map(l => lineToBinary(l)).reverse();
    const tri = findTrigramByLines(lowerBin);
    return tri ? tri.name : '--';
  }

  private getMovingCount(): number {
    return this.manualLines.filter(l => isMovingLine(l)).length;
  }

  private async handleDivine() {
    if (!this.question.trim()) return;
    this.isDivining = true;

    setTimeout(async () => {
      let divinationResult: DivinationResult;
      if (this.mode === 'manual') {
        divinationResult = performManualDivination(this.question.trim(), [...this.manualLines]);
      } else {
        divinationResult = performDivination(this.question.trim());
      }

      this.result = divinationResult;
      this.hasResult = true;
      this.isDivining = false;

      const user = this.username.trim() || await getCurrentUser();
      await setCurrentUser(user);
      await saveDivinationResult(user, divinationResult);
    }, 800);
  }

  private async handleAdvancedReading() {
    if (!this.result) return;
    const upper = this.result.hexagram?.upperTrigramInfo;
    const lower = this.result.hexagram?.lowerTrigramInfo;
    const promptText = `易经占卜，问：${this.result.question}\n上卦：${upper?.name || ''} ${upper?.symbol || ''}\n下卦：${lower?.name || ''} ${lower?.symbol || ''}\n动爻：${this.result.movingLine?.name || '无'}\n本卦：${this.result.hexagram?.name || ''} ${this.result.hexagram?.symbol || ''}\n之卦：${this.result.changedHexagram?.name || ''} ${this.result.changedHexagram?.symbol || ''}\n帮忙解卦`;
    const data = pasteboard.createData(pasteboard.MIMETYPE_TEXT_PLAIN, promptText);
    try {
      await pasteboard.getSystemPasteboard().setData(data);
      promptAction.showToast({ message: '已复制到剪贴板' });
    } catch (e) {
      promptAction.showToast({ message: '复制失败' });
    }
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
