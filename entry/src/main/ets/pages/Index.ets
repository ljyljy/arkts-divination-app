import { initPreferences } from '../utils/StorageUtils';
import { DivinationPage } from './DivinationPage';
import { YarrowPage } from './YarrowPage';
import { HexagramsPage } from './HexagramsPage';
import { HistoryPage } from './HistoryPage';
import { SettingsPage } from './SettingsPage';

@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  private tabController: TabsController = new TabsController()

  aboutToAppear() {
    initPreferences(getContext(this));
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, controller: this.tabController }) {
        TabContent() {
          DivinationPage()
        }.tabBar(this.TabBuilder(0, '占卜', '☯'))

        TabContent() {
          YarrowPage()
        }.tabBar(this.TabBuilder(1, '蓍草', '🌿'))

        TabContent() {
          HexagramsPage()
        }.tabBar(this.TabBuilder(2, '卦象', '☰'))

        TabContent() {
          HistoryPage()
        }.tabBar(this.TabBuilder(3, '历史', '📜'))

        TabContent() {
          SettingsPage()
        }.tabBar(this.TabBuilder(4, '设置', '⚙'))
      }
      .barMode(BarMode.Fixed)
      .scrollable(false)
      .onChange((index: number) => {
        this.currentIndex = index;
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F1E8')
  }

  @Builder
  TabBuilder(index: number, title: string, icon: string) {
    Column() {
      Text(icon)
        .fontSize(22)
        .height(28)
        .lineHeight(28)
      Text(title)
        .fontSize(10)
        .fontColor(this.currentIndex === index ? '#B94A48' : '#6B5D4F')
        .margin({ top: 2 })
        .height(14)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
  }
}
