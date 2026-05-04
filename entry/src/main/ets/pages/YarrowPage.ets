import { performYarrowDivination, YARROW_STEPS, getPositionMeaning, getChangeMeaning } from '../utils/YarrowUtils';
import { XIAN_TIAN_LIST, getTrigramByXianTianNumber } from '../data/TrigramsData';
import { getCurrentUser, setCurrentUser, saveDivinationResult, addNote, editNote, deleteNote } from '../utils/StorageUtils';
import { DivinationResult, Interpretation, XianTianTrigram, NoteItem, MultipleJudgment } from '../model/DivinationModel';
import { promptAction } from '@kit.ArkUI';
import { pasteboard } from '@kit.BasicServicesKit';

@Component
struct NumberSelectorComp {
  label: string = ''
  @Link value: number
  min: number = 1
  max: number = 8
  private posNames: string[] = ['初爻', '二爻', '三爻', '四爻', '五爻', '上爻']

  private getTrigramNameForNumber(num: number): string {
    const tri = getTrigramByXianTianNumber(num);
    if (tri !== null) {
      return `${tri.symbol} ${tri.name}`;
    }
    return '';
  }

  private parseInput(text: string): number {
    const num = parseInt(text);
    if (isNaN(num)) return this.value;
    if (num < this.min) return this.min;
    if (num > this.max) return this.max;
    return num;
  }

  build() {
    Row() {
      Column() {
        Text(this.label)
          .fontSize(12)
          .fontColor('#6B5D4F')
      }
      .width(50)
      .alignItems(HorizontalAlign.Start)

      Row() {
        Button('-')
          .width(28)
          .height(28)
          .fontSize(14)
          .fontColor('#2C2416')
          .backgroundColor('#F5F1E8')
          .border({ width: 1, color: '#D4C4A8', radius: 8 })
          .onClick(() => {
            this.value = this.value > this.min ? this.value - 1 : this.max;
          })

        TextInput({ text: `${this.value}` })
          .width(50)
          .height(36)
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2C2416')
          .textAlign(TextAlign.Center)
          .backgroundColor('#FFFEF9')
          .border({ width: 1, color: '#D4C4A8', radius: 6 })
          .type(InputType.Number)
          .margin({ left: 4, right: 4 })
          .onChange((text: string) => {
            this.value = this.parseInput(text);
          })

        Button('+')
          .width(28)
          .height(28)
          .fontSize(14)
          .fontColor('#2C2416')
          .backgroundColor('#F5F1E8')
          .border({ width: 1, color: '#D4C4A8', radius: 8 })
          .onClick(() => {
            this.value = this.value < this.max ? this.value + 1 : this.min;
          })
      }

      Column() {
        if (this.max === 8 && this.getTrigramNameForNumber(this.value) !== '') {
          Text(this.getTrigramNameForNumber(this.value))
            .fontSize(14)
            .fontColor('#6B5D4F')
        } else if (this.max === 6) {
          Text(this.posNames[this.value - 1])
            .fontSize(14)
            .fontColor('#6B5D4F')
        }
      }
      .width(80)
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Center)
    .margin({ top: 8, bottom: 8 })
  }
}

@Component
export struct YarrowPage {
  @State question: string = ''
  @State username: string = ''
  @State upperNumber: number = 1
  @State lowerNumber: number = 1
  @State movingLine: number = 1
  @State result: DivinationResult | null = null
  @State isDivining: boolean = false
  @State isAddingNote: boolean = false
  @State newNoteContent: string = ''
  @State editingNoteId: string = ''
  @State editingNoteContent: string = ''
  @State notesVersion: number = 0
  @State showContentSheet: boolean = false
  @State sheetTitle: string = ''
  @State sheetContent: string = ''
  @State showTeachingSheet: boolean = false

  private xianTianKeys: number[] = [1, 2, 3, 4, 5, 6, 7, 8]
  private posNames: string[] = ['初爻', '二爻', '三爻', '四爻', '五爻', '上爻']

  aboutToAppear() {
    this.loadCurrentUser();
  }

  private async loadCurrentUser() {
    const user = await getCurrentUser();
    this.username = user;
  }

  private getTrigramNameForNumber(num: number): string {
    const tri = getTrigramByXianTianNumber(num);
    if (tri !== null) {
      return `${tri.symbol} ${tri.name}`;
    }
    return '';
  }

  build() {
    Scroll() {
      Column() {
        Text('🌿 蓍草起卦')
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2C2416')
          .margin({ top: 20, bottom: 4 })
        Text('大衍之数五十，其用四十有九')
          .fontSize(14)
          .fontColor('#6B5D4F')
          .margin({ bottom: 12 })

        Button('📖 教学')
          .height(32)
          .fontSize(14)
          .fontColor('#B94A48')
          .backgroundColor('#FFF5F0')
          .border({ width: 1, color: '#E8C8C0', radius: 16 })
          .margin({ bottom: 16 })
          .onClick(() => {
            this.showTeachingSheet = true;
            setTimeout(() => {
              promptAction.showToast({ message: '教学图为大模型生成，仅作参考。', duration: 2000 });
            }, 300);
          })

        Column() {
          Row() {
            Text('1')
              .fontSize(12)
              .fontColor('#FFFFFF')
              .backgroundColor('#B94A48')
              .borderRadius(10)
              .width(20)
              .height(20)
              .textAlign(TextAlign.Center)
            Text('诚心问卜')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor('#2C2416')
              .margin({ left: 8 })
          }
          .margin({ bottom: 8 })

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

          TextArea({ placeholder: '请输入您想问的问题...' })
            .width('100%')
            .height(80)
            .fontSize(16)
            .fontColor('#2C2416')
            .placeholderColor('#6B5D4F40')
            .backgroundColor('#F5F1E8')
            .border({ width: 1, color: '#D4C4A8', radius: 8 })
            .margin({ top: 8 })
            .onChange((value: string) => {
              this.question = value;
            })
        }
        .width('100%')
        .padding(16)
        .backgroundColor('#FFFEF9')
        .borderRadius(12)

        Column() {
          Row() {
            Text('2')
              .fontSize(12)
              .fontColor('#FFFFFF')
              .backgroundColor('#B94A48')
              .borderRadius(10)
              .width(20)
              .height(20)
              .textAlign(TextAlign.Center)
            Text('起卦取数')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor('#2C2416')
              .margin({ left: 8 })
          }
          .margin({ bottom: 12 })

          Column() {
            NumberSelectorComp({ label: '上卦', value: $upperNumber, min: 1, max: 8 })
            NumberSelectorComp({ label: '下卦', value: $lowerNumber, min: 1, max: 8 })
            NumberSelectorComp({ label: '动爻', value: $movingLine, min: 1, max: 6 })
          }
          .width('100%')

          Column() {
            Text('先天八卦参考')
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .fontColor('#B94A48')
              .margin({ bottom: 8 })

            Flex({ wrap: FlexWrap.Wrap, justifyContent: FlexAlign.Center }) {
              ForEach(XIAN_TIAN_LIST, (tri: XianTianTrigram) => {
                Row() {
                  Text(`${tri.number}`)
                    .fontSize(14)
                    .fontWeight(FontWeight.Bold)
                    .fontColor('#2C2416')
                  Text(tri.symbol)
                    .fontSize(18)
                    .margin({ left: 2 })
                  Text(tri.name)
                    .fontSize(12)
                    .fontColor('#6B5D4F')
                    .margin({ left: 2 })
                }
                .margin({ left: 6, right: 6, bottom: 4 })
              })
            }
          }
          .width('100%')
          .padding(12)
          .backgroundColor('#F5F1E8')
          .borderRadius(8)
          .margin({ top: 12 })
        }
        .width('100%')
        .padding(16)
        .backgroundColor('#FFFEF9')
        .borderRadius(12)
        .margin({ top: 12 })

        Button(this.isDivining ? '正在解析...' : '确认起卦 ☯')
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

        if (this.result) {
          Column() {
            Row() {
              Text('3')
                .fontSize(12)
                .fontColor('#FFFFFF')
                .backgroundColor('#B94A48')
                .borderRadius(10)
                .width(20)
                .height(20)
                .textAlign(TextAlign.Center)
              Text('卦象呈现')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
                .margin({ left: 8 })
            }
            .margin({ bottom: 12 })

            Row() {
              Column() {
                Text('本卦')
                  .fontSize(12)
                  .fontColor('#6B5D4F')
                Text(this.result.hexagram?.symbol || '')
                  .fontSize(48)
                Text(this.result.hexagram?.name || '')
                  .fontSize(18)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#2C2416')
                if (this.result.movingLine) {
                  Text(`动爻: ${this.result.movingLine.name}`)
                    .fontSize(12)
                    .fontColor('#B94A48')
                    .margin({ top: 4 })
                }
              }

              if (this.result.changedHexagram) {
                Text('→')
                  .fontSize(28)
                  .fontColor('#6B5D4F')
                  .margin({ left: 24, right: 24 })
              }

              if (this.result.changedHexagram) {
                Column() {
                  Text('之卦（变卦）')
                    .fontSize(12)
                    .fontColor('#6B5D4F')
                  Text(this.result.changedHexagram.symbol)
                    .fontSize(48)
                  Text(this.result.changedHexagram.name)
                    .fontSize(18)
                    .fontWeight(FontWeight.Bold)
                    .fontColor('#2C2416')
                }
              }
            }
            .justifyContent(FlexAlign.Center)
            .width('100%')

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
            .margin({ top: 16 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#FFFEF9')
          .borderRadius(12)
          .margin({ top: 16 })
          .alignItems(HorizontalAlign.Center)

          Column() {
            Row() {
              Text('4')
                .fontSize(12)
                .fontColor('#FFFFFF')
                .backgroundColor('#B94A48')
                .borderRadius(10)
                .width(20)
                .height(20)
                .textAlign(TextAlign.Center)
              Text('详细解读')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
                .margin({ left: 8 })
            }
            .margin({ bottom: 12 })

            Column() {
              Text('📖 本卦卦辞')
                .fontSize(12)
                .fontColor('#8B7355')
                .fontWeight(FontWeight.Bold)
              Text(this.result.hexagram?.judgment || '')
                .fontSize(14)
                .fontColor('#5C4A32')
                .margin({ top: 4 })
            }
            .width('100%')
            .padding(12)
            .backgroundColor('#F5F1E8')
            .borderRadius(8)
            .alignItems(HorizontalAlign.Start)

            if (this.result.hexagram?.interpretation) {
              Column() {
                Text('✨ 本卦解释')
                  .fontSize(14)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#2C2416')
                  .margin({ bottom: 8 })

                this.YarrowInterpretationItem('总述', this.result.hexagram.interpretation.summary)
                this.YarrowInterpretationItem('事业', this.result.hexagram.interpretation.career)
                this.YarrowInterpretationItem('感情', this.result.hexagram.interpretation.relationship)
                this.YarrowInterpretationItem('健康', this.result.hexagram.interpretation.health)
                this.YarrowInterpretationItem('财运', this.result.hexagram.interpretation.wealth)
              }
              .width('100%')
              .margin({ top: 12 })
              .alignItems(HorizontalAlign.Start)
            }

            if (this.result.hexagram?.multipleJudgments && this.result.hexagram.multipleJudgments.length > 0) {
              Column() {
                Text('📜 本卦一辞多断')
                  .fontSize(14)
                  .fontColor('#B94A48')
                  .fontWeight(FontWeight.Bold)
                  .margin({ bottom: 8 })
                ForEach(this.result.hexagram.multipleJudgments, (mj: MultipleJudgment) => {
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
                Text(this.result.movingLine.interpretation)
                  .fontSize(12)
                  .fontColor('#7A6B5A')
                  .margin({ top: 4 })

                if (this.result.movingLine.positionMeaning) {
                  Column() {
                    Text('📍 动爻位置解读')
                      .fontSize(12)
                      .fontColor('#B94A48')
                      .fontWeight(FontWeight.Bold)
                    Text(this.result.movingLine.positionMeaning)
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

                if (this.result.movingLine.changeMeaning) {
                  Column() {
                    Text('🔄 动爻变化')
                      .fontSize(12)
                      .fontColor('#B94A48')
                      .fontWeight(FontWeight.Bold)
                    Text(this.result.movingLine.changeMeaning)
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
                      .maxLines(2)
                      .textOverflow({ overflow: TextOverflow.Ellipsis })
                    Row() {
                      Text('查看全部 ›')
                        .fontSize(12)
                        .fontColor('#B94A48')
                        .padding(8)
                        .onClick(() => {
                          this.sheetTitle = '📚 经传释义';
                          this.sheetContent = this.result!.movingLine!.classicComment!;
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

                if (this.result.movingLine.multipleJudgments && this.result.movingLine.multipleJudgments.length > 0) {
                  Column() {
                    Text('📜 一辞多断')
                      .fontSize(12)
                      .fontColor('#B94A48')
                      .fontWeight(FontWeight.Bold)
                    ForEach(this.result.movingLine.multipleJudgments, (mj: MultipleJudgment) => {
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
                      .maxLines(2)
                      .textOverflow({ overflow: TextOverflow.Ellipsis })
                    Row() {
                      Text('查看全部 ›')
                        .fontSize(12)
                        .fontColor('#B94A48')
                        .padding(8)
                        .onClick(() => {
                          this.sheetTitle = '📜 高岛活断实例';
                          this.sheetContent = this.result!.movingLine!.takashiCase!;
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

            if (this.result.finalReading) {
              Column() {
                Text('📜 终卦解读')
                  .fontSize(14)
                  .fontColor('#B94A48')
                  .fontWeight(FontWeight.Bold)
                Text(this.result.finalReading.summary)
                  .fontSize(13)
                  .fontColor('#5C4A32')
                  .margin({ top: 4 })
                Text(this.result.finalReading.advice)
                  .fontSize(12)
                  .fontColor('#7A6B5A')
                  .margin({ top: 4 })
                Text(this.result.finalReading.outlook)
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
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#FFFEF9')
          .borderRadius(12)
          .margin({ top: 12 })
          .alignItems(HorizontalAlign.Start)

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
                            const updatedNotes = this.result.notes?.map(n =>
                              n.id === note.id
                                ? { id: note.id, content: this.editingNoteContent.trim(), createdAt: note.createdAt, updatedAt: new Date().toISOString() }
                                : n
                            );
                            this.result.notes = updatedNotes;
                            this.notesVersion++;
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
                            this.notesVersion++;
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
              }, (note: NoteItem) => `${note.id}-${this.notesVersion}`)
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
                      const noteId = await addNote(user, this.result.id, this.newNoteContent.trim());
                      if (noteId) {
                        const notes = this.result.notes || [];
                        this.result.notes = [...notes, { id: noteId, content: this.newNoteContent.trim(), createdAt: new Date().toISOString() }];
                        this.notesVersion++;
                      }
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
            Button('重新起卦')
              .layoutWeight(1)
              .height(40)
              .fontSize(14)
              .fontColor('#6B5D4F')
              .backgroundColor('#FFFEF9')
              .border({ width: 1, color: '#D4C4A8', radius: 8 })
              .onClick(() => {
                this.question = '';
                this.upperNumber = 1;
                this.lowerNumber = 1;
                this.movingLine = 1;
                this.result = null;
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
        }
      }
      .padding({ left: 16, right: 16 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F1E8')
    .bindSheet($$this.showContentSheet, this.ContentSheetBuilder(), {
      height: SheetSize.MEDIUM,
      showClose: true,
      dragBar: true,
      backgroundColor: Color.Transparent
    })
    .bindSheet($$this.showTeachingSheet, this.TeachingSheetBuilder(), {
      height: SheetSize.LARGE,
      showClose: true,
      dragBar: true,
      backgroundColor: Color.Transparent
    })
  }

  @Builder
  YarrowInterpretationItem(label: string, content: string) {
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

  private handleDivine() {
    if (!this.question.trim()) return;
    this.isDivining = true;

    setTimeout(async () => {
      const divinationResult = performYarrowDivination(
        this.question.trim(),
        this.upperNumber,
        this.lowerNumber,
        this.movingLine
      );

      this.result = divinationResult;
      this.isDivining = false;

      const user = this.username.trim() || await getCurrentUser();
      await setCurrentUser(user);
      await saveDivinationResult(user, divinationResult);
    }, 600);
  }

  private async handleAdvancedReading() {
    if (!this.result) return;
    const upperName = this.getTrigramNameForNumber(this.result.input?.upperNumber || 1);
    const lowerName = this.getTrigramNameForNumber(this.result.input?.lowerNumber || 1);
    const movingPos = this.posNames[(this.result.input?.movingLine || 1) - 1];
    const promptText = `易经占卜，问：${this.result.question}\n上卦取数：${this.result.input?.upperNumber || 1}（${upperName}）\n下卦取数：${this.result.input?.lowerNumber || 1}（${lowerName}）\n动爻取数：${this.result.input?.movingLine || 1}（${movingPos}）\n本卦：${this.result.hexagram?.name || ''} ${this.result.hexagram?.symbol || ''}\n动爻：${this.result.movingLine?.name || '无'}\n之卦：${this.result.changedHexagram?.name || ''} ${this.result.changedHexagram?.symbol || ''}\n帮忙解卦`;
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

  @Builder
  TeachingSheetBuilder() {
    Column() {
      Text('📖 蓍草起卦教学')
        .fontSize(18)
        .fontWeight(FontWeight.Bold)
        .fontColor('#2C2416')
        .margin({ top: 20, bottom: 12 })

      Scroll() {
        Column() {
          Text('教学图 1')
            .fontSize(14)
            .fontColor('#6B5D4F')
            .fontWeight(FontWeight.Bold)
            .margin({ bottom: 8 })
          Image($rawfile('teaching1.jpg'))
            .width('100%')
            .objectFit(ImageFit.Contain)
            .borderRadius(8)

          Text('教学图 2')
            .fontSize(14)
            .fontColor('#6B5D4F')
            .fontWeight(FontWeight.Bold)
            .margin({ top: 16, bottom: 8 })
          Image($rawfile('teaching2.jpg'))
            .width('100%')
            .objectFit(ImageFit.Contain)
            .borderRadius(8)

          Text('教学图 3')
            .fontSize(14)
            .fontColor('#6B5D4F')
            .fontWeight(FontWeight.Bold)
            .margin({ top: 16, bottom: 8 })
          Image($rawfile('teaching3.jpg'))
            .width('100%')
            .objectFit(ImageFit.Contain)
            .borderRadius(8)
        }
        .width('100%')
        .padding({ bottom: 20 })
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
