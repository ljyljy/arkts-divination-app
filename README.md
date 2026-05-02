# 高岛易断 · HarmonyOS 易经占卜应用

<p align="center">
  <img src="https://img.shields.io/badge/HarmonyOS-ArkTS-blue?logo=harmonyos" alt="HarmonyOS ArkTS" />
  <img src="https://img.shields.io/badge/SDK-6.1.1+-orange" alt="SDK 6.1.1+" />
  <img src="https://img.shields.io/badge/license-MIT-green" alt="License" />
</p>

一款基于**高岛易断**体系的 HarmonyOS 原生易经占卜应用，融合传统易学智慧与现代交互设计，支持随机起卦、蓍草起卦、六十四卦详解、占卜历史归档与心得笔记。

> **高岛吞象**（1832–1914），日本明治时期易学大师，其易学体系以诚心问卜、蓍草起卦、动爻变化为核心，强调一辞多断与活断实例。

---

## 功能特性

### 五大核心模块

| 模块 | 功能说明 |
|------|---------|
| **☯ 占卜** | 支持「随机起卦」与「手动指定六爻」两种模式，自动推演本卦、动爻、之卦与终卦解读 |
| **🌿 蓍草** | 传统蓍草起卦法，先天八卦取数（上卦/下卦/动爻），实时卦象反馈 |
| **☰ 卦象** | 六十四卦网格浏览，支持搜索、上经/下经分类筛选，底部半屏弹窗展示卦辞、爻辞、经传释义、一辞多断与高岛活断实例 |
| **📜 历史** | 按用户分组保存占卜记录，支持今天/本周/本月时间筛选，底部半屏弹窗查看详情，可添加心得笔记 |
| **⚙️ 设置** | 应用信息查看、数据导出到剪贴板、一键清除所有本地数据 |

### 深度解读体系

- **本卦卦辞** — 易经原文卦辞
- **五维解读** — 总述 / 事业 / 感情 / 健康 / 财运
- **动爻详解**
  - 爻辞与基本解释
  - 动爻位置解读
  - 动爻变化推演
  - **📚 经传释义** — 传统经传深度注释
  - **🔮 一辞多断** — 同一爻辞多种情境断法
  - **📜 高岛活断实例** — 高岛吞象真实占断案例
- **之卦（变卦）** — 动爻变化后的卦象与解读
- **终卦解读** — 综合总结、建议与展望
- **进阶解读** — 一键复制占卜信息到剪贴板，供 AI 深度解卦

### 交互设计亮点

- **底部半屏弹窗（bindSheet）** — 卦象详情与历史详情均采用半屏态弹出，上滑可进入全屏态
- **古典美学配色** — 宣纸底色 `#F5F1E8`、朱砂红 `#B94A48`、墨黑 `#2C2416`，营造传统易学氛围
- **本地隐私存储** — 所有数据仅保存在设备本地，不上传任何服务器

---

## 技术架构

```
entry/src/main/ets/
├── data/               # 静态数据
│   ├── HexagramsData.ets   # 六十四卦数据
│   └── TrigramsData.ets    # 八卦数据
├── model/              # 数据模型
│   └── DivinationModel.ets # 全量 TypeScript 接口定义
├── pages/              # 五大页面组件
│   ├── Index.ets           # 入口（Tabs 导航）
│   ├── DivinationPage.ets  # 占卜页
│   ├── YarrowPage.ets      # 蓍草起卦页
│   ├── HexagramsPage.ets   # 卦象浏览页
│   ├── HistoryPage.ets     # 历史记录页
│   └── SettingsPage.ets    # 设置页
└── utils/              # 工具函数
    ├── HexagramUtils.ets   # 卦象计算逻辑
    ├── YarrowUtils.ets     # 蓍草起卦逻辑
    └── StorageUtils.ets    # Preferences 本地存储
```

- **开发语言**: ArkTS（TypeScript 超集）
- **UI 框架**: ArkUI 声明式开发
- **最低 SDK**: HarmonyOS 6.1.0(23)
- **目标 SDK**: HarmonyOS 6.1.1(24)
- **数据持久化**: `@ohos.data.preferences`

---

## 快速开始

### 环境要求

- [DevEco Studio](https://developer.harmonyos.com/cn/develop/deveco-studio) 4.0 或更高版本
- HarmonyOS SDK API 12+
- Node.js 16+

### 安装与运行

```bash
# 克隆仓库
git clone https://github.com/ljyljy/arkts-divination-app.git

# 用 DevEco Studio 打开项目
cd arkts-divination-app

# 同步依赖后，点击 Run 即可在模拟器或真机上运行
```

### 构建发布包

```bash
# 在 DevEco Studio 中选择 Build > Build Hap(s)/App(s) > Build App
# 或使用命令行
hvigor assembleApp
```

---

## 项目结构

```
arkts-divination-app/
├── AppScope/                  # 应用级配置
│   ├── app.json5              # 应用信息（包名、版本等）
│   └── resources/             # 应用级资源
├── entry/                     # Entry 模块
│   ├── src/main/ets/          # ArkTS 源码
│   └── src/main/resources/    # 模块级资源
├── hvigor/                    # 构建配置
├── oh-package.json5           # OHPM 依赖
└── build-profile.json5        # 编译配置
```

---

## 核心数据模型

```typescript
// 占卜结果
interface DivinationResult {
  id: string;
  question: string;           // 所占问题
  timestamp: string;          // 占卜时间
  hexagram: HexagramDisplay;  // 本卦
  movingLine: MovingLineInfo; // 动爻信息
  changedHexagram: ChangedHexagram; // 之卦
  finalReading: FinalReading; // 终卦解读
  comment?: string;           // 心得笔记
}

// 动爻信息（含高岛易断进阶内容）
interface MovingLineInfo {
  position: number;
  name: string;
  text: string;
  interpretation: string;
  positionMeaning?: string;      // 位置解读
  changeMeaning?: string;        // 变化解读
  classicComment?: string;       // 经传释义
  multipleJudgments?: string[];  // 一辞多断
  takashiCase?: string;          // 高岛活断实例
}
```

---

## 截图预览

> （建议补充应用各页面截图后更新此处）

| 占卜首页 | 蓍草起卦 | 卦象浏览 | 历史记录 |
|---------|---------|---------|---------|
| 占位 | 占位 | 占位 | 占位 |

---

## 版本历史

| 版本 | 日期 | 更新内容 |
|------|------|---------|
| 1.0.0 | 2026-05 | 初始版本：随机起卦、蓍草起卦、六十四卦详解、历史记录、心得笔记、数据导出 |

---

## 许可证

[MIT License](LICENSE)

---

## 致谢

- 易经原文参考：《周易》传统经传体系
- 高岛易断体系：高岛吞象（たかしま どんぞう）易学思想
- 开发平台：HarmonyOS / OpenHarmony

---

<p align="center">
  ☯ 诚心问卜，得见天机 ☯
</p>
