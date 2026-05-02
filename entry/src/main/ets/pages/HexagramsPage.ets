import { HEXAGRAMS, getHexagramByTrigrams } from '../data/HexagramsData';
import { getTrigramById, findTrigramByLines } from '../data/TrigramsData';
import { Hexagram, HexagramLine, Interpretation, Trigram } from '../model/DivinationModel';


@Component
export struct HexagramsPage {
  @State searchQuery: string = ''
  @State activeTab: string = 'all'
  @State selectedHex: Hexagram | null = null
  @State filteredList: Hexagram[] = HEXAGRAMS
  @State isSheetOpen: boolean = false
  @State sheetHex: Hexagram | null = null

  build() {
    Scroll() {
      Column() {
        Text('六十四卦详解')
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2C2416')
          .margin({ top: 20, bottom: 4 })
        Text('探索易经六十四卦的奥秘')
          .fontSize(14)
          .fontColor('#6B5D4F')
          .margin({ bottom: 20 })

        TextInput({ placeholder: '搜索卦名、序号...' })
          .width('80%')
          .height(40)
          .fontSize(14)
          .fontColor('#2C2416')
          .placeholderColor('#6B5D4F40')
          .backgroundColor('#FFFEF9')
          .border({ width: 1, color: '#D4C4A8', radius: 20 })
          .padding({ left: 16, right: 16 })
          .onChange((value: string) => {
            this.searchQuery = value;
            this.updateFilteredList();
          })

        Row() {
          Button('全部')
            .height(28)
            .fontSize(12)
            .fontColor(this.activeTab === 'all' ? '#FFFFFF' : '#6B5D4F')
            .backgroundColor(this.activeTab === 'all' ? '#B94A48' : '#FFFEF9')
            .border({ width: 1, color: '#D4C4A8', radius: 14 })
            .padding({ left: 16, right: 16 })
            .onClick(() => { this.activeTab = 'all'; this.updateFilteredList(); })

          Button('上经(1-30)')
            .height(28)
            .fontSize(12)
            .fontColor(this.activeTab === 'upper' ? '#FFFFFF' : '#6B5D4F')
            .backgroundColor(this.activeTab === 'upper' ? '#B94A48' : '#FFFEF9')
            .border({ width: 1, color: '#D4C4A8', radius: 14 })
            .padding({ left: 16, right: 16 })
            .margin({ left: 8 })
            .onClick(() => { this.activeTab = 'upper'; this.updateFilteredList(); })

          Button('下经(31+)')
            .height(28)
            .fontSize(12)
            .fontColor(this.activeTab === 'lower' ? '#FFFFFF' : '#6B5D4F')
            .backgroundColor(this.activeTab === 'lower' ? '#B94A48' : '#FFFEF9')
            .border({ width: 1, color: '#D4C4A8', radius: 14 })
            .padding({ left: 16, right: 16 })
            .margin({ left: 8 })
            .onClick(() => { this.activeTab = 'lower'; this.updateFilteredList(); })
        }
        .margin({ top: 12 })

        Grid() {
          ForEach(this.filteredList, (hex: Hexagram) => {
            GridItem() {
              Column() {
                Text(hex.symbol)
                  .fontSize(32)
                Text(hex.name)
                  .fontSize(12)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#2C2416')
                  .maxLines(1)
                Text(`第${hex.id}卦`)
                  .fontSize(10)
                  .fontColor('#6B5D4F')
                  .margin({ top: 2 })
              }
              .width('100%')
              .padding(10)
              .backgroundColor('#FFFEF9')
              .borderRadius(8)
              .border({
                width: this.selectedHex?.id === hex.id ? 2 : 1,
                color: this.selectedHex?.id === hex.id ? '#B94A48' : '#D4C4A850',
                radius: 8
              })
              .alignItems(HorizontalAlign.Center)
              .onClick(() => {
                this.selectedHex = hex;
                this.sheetHex = hex;
                this.isSheetOpen = true;
              })
            }
          })
        }
        .columnsTemplate('1fr 1fr 1fr 1fr')
        .rowsGap(8)
        .columnsGap(8)
        .width('100%')
        .margin({ top: 16 })
        .height(360)

        // 详情已移至底部弹窗
      }
      .padding({ left: 16, right: 16, bottom: 20 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F1E8')
    .bindSheet(this.isSheetOpen, this.SheetBuilder(), {
      height: 'MEDIUM',
      dragBar: true,
      showClose: true,
      backgroundColor: '#FFFEF9',
      onDisappear: () => { this.isSheetOpen = false; }
    })
  }

  @Builder
  HexInterpItem(label: string, content: string) {
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

  private getTrigramName(id: string): string {
    const tri: Trigram | null = getTrigramById(id);
    return tri ? tri.name : '';
  }

  private getTrigramSymbol(id: string): string {
    const tri: Trigram | null = getTrigramById(id);
    return tri ? tri.symbol : '';
  }

  private getMovingLineChange(position: number): string {
    if (!this.selectedHex) return '';
    const upperTrigram: Trigram | null = getTrigramById(this.selectedHex.upperTrigram);
    const lowerTrigram: Trigram | null = getTrigramById(this.selectedHex.lowerTrigram);
    if (!upperTrigram || !lowerTrigram) return '';

    const isUpperLine: boolean = position > 3;
    const lineIndexInTrigram: number = (position - 1) % 3;
    let changedUpperId: string = this.selectedHex.upperTrigram;
    let changedLowerId: string = this.selectedHex.lowerTrigram;
    let changedTrigramInfo: string = '';

    if (isUpperLine) {
      const upperLines: number[] = [upperTrigram.lines[0], upperTrigram.lines[1], upperTrigram.lines[2]];
      const originalYinYang: string = upperLines[lineIndexInTrigram] === 1 ? '阳' : '阴';
      upperLines[lineIndexInTrigram] = upperLines[lineIndexInTrigram] === 1 ? 0 : 1;
      const newYinYang: string = upperLines[lineIndexInTrigram] === 1 ? '阳' : '阴';
      const changedTrigram = findTrigramByLines(upperLines);
      if (changedTrigram) {
        changedUpperId = changedTrigram.id;
        const posNames: string[] = ['初', '二', '上'];
        changedTrigramInfo = `上卦${upperTrigram.name}之${posNames[lineIndexInTrigram]}爻由${originalYinYang}变${newYinYang}，化为${changedTrigram.name}卦。`;
      }
    } else {
      const lowerLines: number[] = [lowerTrigram.lines[0], lowerTrigram.lines[1], lowerTrigram.lines[2]];
      const originalYinYang: string = lowerLines[lineIndexInTrigram] === 1 ? '阳' : '阴';
      lowerLines[lineIndexInTrigram] = lowerLines[lineIndexInTrigram] === 1 ? 0 : 1;
      const newYinYang: string = lowerLines[lineIndexInTrigram] === 1 ? '阳' : '阴';
      const changedTrigram = findTrigramByLines(lowerLines);
      if (changedTrigram) {
        changedLowerId = changedTrigram.id;
        const posNames: string[] = ['初', '二', '上'];
        changedTrigramInfo = `下卦${lowerTrigram.name}之${posNames[lineIndexInTrigram]}爻由${originalYinYang}变${newYinYang}，化为${changedTrigram.name}卦。`;
      }
    }

    const changedHexagram = getHexagramByTrigrams(changedUpperId, changedLowerId);
    if (changedHexagram) {
      changedTrigramInfo += ` 之卦：${changedHexagram.name} ${changedHexagram.symbol}`;
    }
    return changedTrigramInfo;
  }

  private updateFilteredList() {
    let list = HEXAGRAMS;
    if (this.searchQuery.trim()) {
      const q = this.searchQuery;
      list = list.filter(h => h.name.includes(q) || h.number === parseInt(q));
    }
    if (this.activeTab === 'upper') {
      list = list.filter(h => h.number <= 30);
    } else if (this.activeTab === 'lower') {
      list = list.filter(h => h.number > 30);
    }
    this.filteredList = list;
  }

  @Builder
  SheetBuilder() {
    Scroll() {
      Column() {
        if (this.sheetHex) {
          Row() {
            Text(this.sheetHex.symbol)
              .fontSize(44)
            Column() {
              Text(this.sheetHex.name)
                .fontSize(22)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
              Text(`第${this.sheetHex.id}卦`)
                .fontSize(12)
                .fontColor('#6B5D4F')
                .margin({ top: 4 })
            }
            .alignItems(HorizontalAlign.Start)
            .margin({ left: 12 })

            Blank()

            Button('✕')
              .width(32)
              .height(32)
              .fontSize(16)
              .fontColor('#6B5D4F')
              .backgroundColor(Color.Transparent)
              .onClick(() => { this.isSheetOpen = false; })
          }
          .width('100%')
          .padding({ bottom: 12 })
          .border({ width: { bottom: 1 }, color: '#D4C4A850' })

          Row() {
            Column() {
              Text('上卦（外卦）')
                .fontSize(12)
                .fontColor('#B94A48')
              Text(this.getTrigramSymbol(this.sheetHex.upperTrigram))
                .fontSize(32)
              Text(this.getTrigramName(this.sheetHex.upperTrigram))
                .fontSize(14)
                .fontColor('#2C2416')
            }
            .layoutWeight(1)
            .padding(12)
            .backgroundColor('#F5F1E8')
            .borderRadius(8)

            Column() {
              Text('下卦（内卦）')
                .fontSize(12)
                .fontColor('#D4AF37')
              Text(this.getTrigramSymbol(this.sheetHex.lowerTrigram))
                .fontSize(32)
              Text(this.getTrigramName(this.sheetHex.lowerTrigram))
                .fontSize(14)
                .fontColor('#2C2416')
            }
            .layoutWeight(1)
            .padding(12)
            .backgroundColor('#F5F1E8')
            .borderRadius(8)
            .margin({ left: 8 })
          }
          .width('100%')
          .margin({ top: 12 })

          Column() {
            Text('📖 卦辞')
              .fontSize(12)
              .fontColor('#B94A48')
              .fontWeight(FontWeight.Bold)
            Text(this.sheetHex.judgment)
              .fontSize(14)
              .fontColor('#2C2416')
              .margin({ top: 4 })
              .lineHeight(22)
          }
          .width('100%')
          .padding(12)
          .backgroundColor('#F5F1E8')
          .borderRadius(8)
          .margin({ top: 12 })
          .alignItems(HorizontalAlign.Start)

          if (this.sheetHex.classicComment) {
            Column() {
              Text('📚 经传释义')
                .fontSize(12)
                .fontColor('#B94A48')
                .fontWeight(FontWeight.Bold)
              Text(this.sheetHex.classicComment)
                .fontSize(13)
                .fontColor('#5C4A32')
                .margin({ top: 4 })
                .lineHeight(20)
            }
            .width('100%')
            .padding(12)
            .backgroundColor('#F5F1E8')
            .borderRadius(8)
            .margin({ top: 12 })
            .alignItems(HorizontalAlign.Start)
          }

          if (this.sheetHex.multipleJudgments && this.sheetHex.multipleJudgments.length > 0) {
            Column() {
              Text('🔮 一辞多断')
                .fontSize(12)
                .fontColor('#B94A48')
                .fontWeight(FontWeight.Bold)
              ForEach(this.sheetHex.multipleJudgments, (item: string) => {
                Text(item)
                  .fontSize(13)
                  .fontColor('#5C4A32')
                  .margin({ top: 4 })
              })
            }
            .width('100%')
            .padding(12)
            .backgroundColor('#F5F1E8')
            .borderRadius(8)
            .margin({ top: 12 })
            .alignItems(HorizontalAlign.Start)
          }

          if (this.sheetHex.takashiCase) {
            Column() {
              Text('📜 高岛活断实例')
                .fontSize(12)
                .fontColor('#B94A48')
                .fontWeight(FontWeight.Bold)
              Text(this.sheetHex.takashiCase)
                .fontSize(13)
                .fontColor('#5C4A32')
                .margin({ top: 4 })
                .lineHeight(20)
            }
            .width('100%')
            .padding(12)
            .backgroundColor('#F5F1E8')
            .borderRadius(8)
            .margin({ top: 12 })
            .alignItems(HorizontalAlign.Start)
          }

          if (this.sheetHex.interpretation) {
            Column() {
              Text('✨ 易经解读')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
                .margin({ bottom: 8 })

              this.HexInterpItem('总述', this.sheetHex.interpretation.summary)
              this.HexInterpItem('事业', this.sheetHex.interpretation.career)
              this.HexInterpItem('感情', this.sheetHex.interpretation.relationship)
              this.HexInterpItem('健康', this.sheetHex.interpretation.health)
              this.HexInterpItem('财运', this.sheetHex.interpretation.wealth)
            }
            .width('100%')
            .margin({ top: 16 })
            .alignItems(HorizontalAlign.Start)
          }

          if (this.sheetHex.lines && this.sheetHex.lines.length > 0) {
            Column() {
              Text('📜 爻辞详解')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2C2416')
                .margin({ bottom: 8 })

              ForEach(this.sheetHex.lines, (line: HexagramLine) => {
                Column() {
                  Row() {
                    Text(line.name)
                      .fontSize(12)
                      .fontColor('#8B6914')
                      .fontWeight(FontWeight.Bold)
                      .backgroundColor('#F0E6D2')
                      .padding({ left: 8, right: 8, top: 2, bottom: 2 })
                      .borderRadius(4)
                    Text(`第${line.position}爻`)
                      .fontSize(12)
                      .fontColor('#7A6B5A')
                      .margin({ left: 8 })
                  }
                  Text(line.text)
                    .fontSize(14)
                    .fontColor('#5C4A32')
                    .margin({ top: 4 })
                  Text(line.interpretation)
                    .fontSize(12)
                    .fontColor('#7A6B5A')
                    .margin({ top: 4 })
                    .lineHeight(18)

                  if (line.classicComment) {
                    Column() {
                      Text('📚 经传释义')
                        .fontSize(11)
                        .fontColor('#8B7355')
                        .fontWeight(FontWeight.Bold)
                      Text(line.classicComment)
                        .fontSize(12)
                        .fontColor('#5C4A32')
                        .margin({ top: 2 })
                        .lineHeight(18)
                    }
                    .width('100%')
                    .margin({ top: 6 })
                    .alignItems(HorizontalAlign.Start)
                  }

                  if (line.multipleJudgments && line.multipleJudgments.length > 0) {
                    Column() {
                      Text('🔮 一辞多断')
                        .fontSize(11)
                        .fontColor('#8B7355')
                        .fontWeight(FontWeight.Bold)
                      ForEach(line.multipleJudgments, (mj: string) => {
                        Text(mj)
                          .fontSize(12)
                          .fontColor('#5C4A32')
                          .margin({ top: 2 })
                      })
                    }
                    .width('100%')
                    .margin({ top: 6 })
                    .alignItems(HorizontalAlign.Start)
                  }

                  if (line.takashiCase) {
                    Column() {
                      Text('📜 高岛活断实例')
                        .fontSize(11)
                        .fontColor('#8B7355')
                        .fontWeight(FontWeight.Bold)
                      Text(line.takashiCase)
                        .fontSize(12)
                        .fontColor('#5C4A32')
                        .margin({ top: 2 })
                        .lineHeight(18)
                    }
                    .width('100%')
                    .margin({ top: 6 })
                    .alignItems(HorizontalAlign.Start)
                  }

                  Column() {
                    Text('🔄 动爻变化')
                      .fontSize(12)
                      .fontColor('#8B7355')
                      .fontWeight(FontWeight.Bold)
                    Text(this.getMovingLineChange(line.position))
                      .fontSize(12)
                      .fontColor('#7A6B5A')
                      .margin({ top: 2 })
                  }
                  .width('100%')
                  .padding({ top: 8 })
                  .margin({ top: 8 })
                  .border({ width: { top: 1 }, color: '#D4C4A830' })
                  .alignItems(HorizontalAlign.Start)
                }
                .width('100%')
                .padding(12)
                .backgroundColor('#F5F1E8')
                .borderRadius(8)
                .margin({ top: 8 })
                .alignItems(HorizontalAlign.Start)
              })
            }
            .width('100%')
            .margin({ top: 16, bottom: 20 })
            .alignItems(HorizontalAlign.Start)
          }
        }
      }
      .padding(16)
      .width('100%')
    }
    .width('100%')
    .height('100%')
  }
}
