---
name: 修复蓍草起卦UI、颜色、进阶解读与导航栏对齐
overview: 修复蓍草起卦页面数字输入框显示与布局问题；整改动爻相关模块背景色导致的文字不清问题；将分享结果改为进阶解读并支持复制prompt到剪贴板；修复底部导航栏卦象图标对齐问题。
todos:
  - id: fix-number-selector
    content: 优化YarrowPage起卦取数NumberSelectorComp布局，修复截字和拥挤问题
    status: completed
  - id: fix-moving-line-color
    content: 全局替换`#B94A4808`背景色为可读暖色，整改YarrowPage/DivinationPage/HistoryPage/HexagramsPage共6处
    status: completed
  - id: replace-share-button
    content: 将YarrowPage和DivinationPage的"分享结果"改为"进阶解读"，实现prompt组装和剪贴板复制
    status: completed
    dependencies:
      - fix-moving-line-color
  - id: fix-tab-icon-align
    content: 修复Index.ets底部导航栏"卦象"图标与其他不齐平的问题
    status: completed
---

## 产品概述

修复高岛易断占卜应用中的多项UI和功能bug，涉及蓍草起卦页面、结果展示颜色、分享功能改造和底部导航栏对齐。

## 核心功能

1. **起卦取数UI优化**：修复数字输入框底部截字问题，缩小按钮尺寸，改善三组件并列Row的拥挤布局
2. **动爻模块颜色整改**：将`#B94A4808`（极透明暗红底色）替换为可读性更好的暖色系背景，全局4个文件共6处
3. **"分享结果"改造为"进阶解读"**：点击后组装包含问题、上/下卦取数、本卦/动爻/之卦信息的prompt，复制到剪贴板并toast提示
4. **导航栏卦象图标对齐**：`☰`字符与emoji图标高度不齐，需通过lineHeight或字体调整使其平齐

## Tech Stack

- **平台**：HarmonyOS ArkTS（API 12, targetAPIVersion 60101024）
- **UI框架**：ArkUI声明式UI
- **状态管理**：`@State`、`@Link`
- **剪贴板API**：`@kit.BasicServicesKit` / `pasteboard`

## Implementation Approach

1. **NumberSelectorComp布局调整**：将TextInput高度从32提升至38解决截字；将左右Button缩小至28x28、fontSize降至14；减小margin使Row更紧凑；三个组件总宽控制在合理范围
2. **颜色全局替换**：`#B94A4808` → `#FFF5F0`（浅暖粉背景）或`#F5F1E8`（米黄背景），同时调整对应模块内标签文字颜色确保对比度
3. **进阶解读功能**：引入`pasteboard`模块创建PlainTextData，组装用户要求的prompt格式后写入系统剪贴板，使用现有`promptAction.showToast`反馈
4. **图标对齐**：TabBuilder中给Text(icon)添加`.lineHeight(28)`统一各图标的行高，抵消不同Unicode字符（emoji vs 符号）的默认baseline差异

## Implementation Notes

- **Blast radius控制**：颜色整改仅替换`#B94A4808`背景色及其直接关联的标签色，不动其他已和谐的配色
- **剪贴板兼容性**：API 12使用`import { pasteboard } from '@kit.BasicServicesKit'`，与现有`@kit.ArkUI`导入风格一致
- **性能**：无数据层改动，纯UI和事件回调调整，无性能影响

## Directory Structure

```
entry/src/main/ets/pages/
├── YarrowPage.ets      # [MODIFY] NumberSelectorComp尺寸、动爻颜色、分享→进阶解读+剪贴板
├── DivinationPage.ets  # [MODIFY] 动爻颜色、分享→进阶解读+剪贴板
├── HistoryPage.ets     # [MODIFY] 动爻颜色
├── HexagramsPage.ets   # [MODIFY] 卦辞区颜色
└── Index.ets           # [MODIFY] TabBuilder图标行高对齐
```

## Agent Extensions

无需要的扩展