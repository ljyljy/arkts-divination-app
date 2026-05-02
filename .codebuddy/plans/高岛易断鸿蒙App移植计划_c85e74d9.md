---
name: 高岛易断鸿蒙App移植计划
overview: 将参考项目fateYi中已有的HarmonyOS版本(fateYi-harmonyos/)移植到当前arkTsTest工作区，包含6个页面（Tabs导航）、64卦数据、八卦数据、占卜/蓍草算法、历史记录存储、设置功能及中国传统美学UI风格。
todos:
  - id: config-resources
    content: 修改项目配置和资源文件(app.json5/string.json/color.json/module.json5)
    status: completed
  - id: data-model
    content: 创建数据模型和卦象数据文件(DivinationModel/TrigramsData/HexagramsData)
    status: completed
  - id: utils
    content: 创建工具类(HexagramUtils/YarrowUtils/StorageUtils)
    status: completed
    dependencies:
      - data-model
  - id: main-index
    content: 重写Index.ets为Tabs导航入口并创建DivinationPage
    status: completed
    dependencies:
      - utils
  - id: yarrow-hexagrams
    content: 创建YarrowPage和HexagramsPage
    status: completed
    dependencies:
      - utils
  - id: history-settings
    content: 创建HistoryPage和SettingsPage
    status: completed
    dependencies:
      - utils
---

## 产品概述

将高岛易断网页版完整移植到鸿蒙手机App中，参考项目 fateYi 中已有 ArkTS 鸿蒙实现版本，需将其移植到目标 arkTsTest 项目中。

## 核心功能

- **快速占卜**：随机起卦或手动指定六爻，自动计算本卦、动爻、变卦
- **蓍草起卦**：基于先天八卦数的传统起卦方式，四步流程（问卜/取数/卦象/解读）
- **六十四卦查询**：搜索、分类筛选、卦象详情、五维解读、每爻动变推演
- **历史记录**：按用户名管理占卜历史，支持筛选、心得笔记、导入导出
- **设置**：应用信息、数据管理（导出/清除）、关于信息

## 视觉风格

中国传统美学配色：朱砂红(#B94A48)、墨色(#2C2416)、宣纸色(#F5F1E8)、金色(#D4AF37)，古风卡片布局

## 技术栈

- **框架**: ArkTS (HarmonyOS NEXT API 24, Stage模型)
- **UI**: ArkUI 声明式组件 (@Entry/@Component/@State/@Builder)
- **导航**: Tabs 组件 + TabsController (底部5Tab)
- **存储**: @ohos.data.preferences (本地键值存储)
- **无后端**: 纯前端应用，所有数据本地存储

## 实现方案

直接从参考项目 fateYi-harmonyos 移植已有 ArkTS 代码到目标项目 arkTsTest。参考项目已包含完整的鸿蒙实现，包括数据模型、工具类、5个页面和资源文件，只需将代码复制到目标项目并调整配置差异（bundleName、资源引用路径等）。

## 架构设计

```
Index.ets (Tabs导航: 占卜|蓍草|卦象|历史|设置)
├── DivinationPage.ets   ← HexagramUtils + StorageUtils
├── YarrowPage.ets       ← YarrowUtils + StorageUtils
├── HexagramsPage.ets    ← HexagramsData + TrigramsData
├── HistoryPage.ets      ← StorageUtils
└── SettingsPage.ets     ← StorageUtils

数据层:
  DivinationModel.ets  ← 所有接口定义
  TrigramsData.ets     ← 八卦数据+先天八卦映射
  HexagramsData.ets    ← 64卦完整数据(~92KB)

工具层:
  HexagramUtils.ets    ← 随机/手动起卦算法
  YarrowUtils.ets      ← 蓍草起卦算法
  StorageUtils.ets     ← Preferences本地存储
```

## 目录结构

```
arkTsTest/
├── AppScope/
│   ├── app.json5                           # [MODIFY] bundleName改为com.fateyi.harmonyos
│   └── resources/base/element/
│       └── string.json                     # [MODIFY] app_name改为"高岛易断"
├── entry/
│   ├── src/main/
│   │   ├── module.json5                    # [MODIFY] 添加INTERNET权限
│   │   ├── ets/
│   │   │   ├── entryability/
│   │   │   │   └── EntryAbility.ets        # [MODIFY] 更新日志TAG和DOMAIN
│   │   │   ├── model/
│   │   │   │   └── DivinationModel.ets     # [NEW] 所有数据类型/接口定义(Trigram/Hexagram/DivinationResult等)
│   │   │   ├── data/
│   │   │   │   ├── TrigramsData.ets        # [NEW] 八卦数据+先天八卦映射+查找函数
│   │   │   │   └── HexagramsData.ets       # [NEW] 64卦完整数据+查找函数(~92KB)
│   │   │   ├── utils/
│   │   │   │   ├── HexagramUtils.ets       # [NEW] 随机/手动起卦核心算法
│   │   │   │   ├── YarrowUtils.ets         # [NEW] 蓍草起卦核心算法
│   │   │   │   └── StorageUtils.ets        # [NEW] Preferences本地存储封装
│   │   │   └── pages/
│   │   │       ├── Index.ets               # [MODIFY] 改为Tabs底部5Tab导航主入口
│   │   │       ├── DivinationPage.ets      # [NEW] 占卜页(随机/手动起卦)
│   │   │       ├── YarrowPage.ets          # [NEW] 蓍草起卦页
│   │   │       ├── HexagramsPage.ets       # [NEW] 64卦详解页
│   │   │       ├── HistoryPage.ets         # [NEW] 历史记录页
│   │   │       └── SettingsPage.ets        # [NEW] 设置页
│   │   └── resources/base/
│   │       ├── element/
│   │       │   ├── color.json              # [MODIFY] 添加中国传统配色资源
│   │       │   ├── string.json             # [MODIFY] 添加中文字符串资源
│   │       │   └── float.json              # [KEEP] 保留不变
│   │       └── profile/
│   │           └── main_pages.json         # [KEEP] 仅注册pages/Index(Tabs模式无需多页注册)
```

## 实现注意事项

- **HexagramsData.ets** 约92KB，包含64卦完整数据，直接从参考项目复制
- **StorageUtils** 使用 `@ohos.data.preferences`，需在 Index.ets 的 `aboutToAppear` 中调用 `initPreferences(this.context)` 初始化
- **Index.ets** 中 Tabs 使用 `BarPosition.End` 实现底部导航，每个 TabContent 加载对应页面组件
- **module.json5** 需添加 `ohos.permission.INTERNET` 权限（参考项目有此配置）
- **start_window_background** 颜色需从 #FFFFFF 改为 #F5F1E8（宣纸色启动页）
- 参考项目中使用系统资源图标 `$r('sys.media.ohos_ic_public_clock')` 作为Tab图标，需确认目标SDK版本兼容性

## SubAgent

- **code-explorer**: 用于在实现阶段快速定位参考项目中的具体代码片段和验证文件内容