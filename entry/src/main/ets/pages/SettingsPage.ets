import { getStorageStats, clearAllData, exportAllHistory } from '../utils/StorageUtils';
import { promptAction } from '@kit.ArkUI';

@Component
export struct SettingsPage {
  @State storageStatsText: string = '加载中...'
  @State platformInfo: string = '鸿蒙应用'

  aboutToAppear() {
    this.loadStats();
  }

  build() {
    Scroll() {
      Column() {
        Text('⚙️ 设置')
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2C2416')
          .margin({ top: 20, bottom: 4 })
        Text('应用配置与数据管理')
          .fontSize(14)
          .fontColor('#6B5D4F')
          .margin({ bottom: 20 })

        Column() {
          Text('📱 应用信息')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2C2416')
            .margin({ bottom: 12 })

          Row() {
            Text('版本')
              .fontSize(14)
              .fontColor('#6B5D4F')
            Blank()
            Text('1.0.0')
              .fontSize(14)
              .fontColor('#2C2416')
          }
          .width('100%')
          .margin({ top: 8 })

          Row() {
            Text('平台')
              .fontSize(14)
              .fontColor('#6B5D4F')
            Blank()
            Text(this.platformInfo)
              .fontSize(14)
              .fontColor('#2C2416')
          }
          .width('100%')
          .margin({ top: 8 })

          Row() {
            Text('存储统计')
              .fontSize(14)
              .fontColor('#6B5D4F')
            Blank()
            Text(this.storageStatsText)
              .fontSize(14)
              .fontColor('#2C2416')
          }
          .width('100%')
          .margin({ top: 8 })
        }
        .width('100%')
        .padding(16)
        .backgroundColor('#FFFEF9')
        .borderRadius(12)

        Column() {
          Text('📜 数据管理')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2C2416')
            .margin({ bottom: 12 })

          Button('导出所有数据')
            .width('100%')
            .height(40)
            .fontSize(14)
            .fontColor('#D4AF37')
            .backgroundColor('#D4AF3708')
            .border({ width: 1, color: '#D4AF3740', radius: 8 })
            .onClick(async () => {
              const data = await exportAllHistory();
              if (data) {
                promptAction.showToast({ message: '数据已导出到剪贴板' });
              } else {
                promptAction.showToast({ message: '导出失败，请重试' });
              }
            })

          Button('清除所有数据')
            .width('100%')
            .height(40)
            .fontSize(14)
            .fontColor('#FF4444')
            .backgroundColor('#FF444408')
            .border({ width: 1, color: '#FF444440', radius: 8 })
            .margin({ top: 8 })
            .onClick(async () => {
              const success = await clearAllData();
              if (success) {
                this.storageStatsText = '0 条记录';
                promptAction.showToast({ message: '所有数据已清除' });
              } else {
                promptAction.showToast({ message: '清除失败，请重试' });
              }
            })
        }
        .width('100%')
        .padding(16)
        .backgroundColor('#FFFEF9')
        .borderRadius(12)
        .margin({ top: 12 })

        Column() {
          Text('☯ 关于易经占卜')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2C2416')
            .margin({ bottom: 12 })

          Text('易经占卜是一款基于易经六十四卦的专业占卜应用，融合传统易学智慧与现代技术。源自日本明治时期易学大师高岛吞象（1832-1914）的易学体系，强调诚心问卜、蓍草起卦、动爻变化和综合解读。')
            .fontSize(13)
            .fontColor('#6B5D4F')
            .lineHeight(22)

          Text('本应用所有数据均存储在本地设备，不会上传至任何服务器，请放心使用。')
            .fontSize(12)
            .fontColor('#6B5D4F')
            .margin({ top: 8 })
            .lineHeight(18)
        }
        .width('100%')
        .padding(16)
        .backgroundColor('#FFFEF9')
        .borderRadius(12)
        .margin({ top: 12, bottom: 20 })
        .alignItems(HorizontalAlign.Start)
      }
      .padding({ left: 16, right: 16 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F1E8')
  }

  private async loadStats() {
    const stats = await getStorageStats();
    this.storageStatsText = `${stats.recordCount} 条记录`;
  }
}
