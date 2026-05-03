// 八卦数据模型
export interface Trigram {
  id: string;
  name: string;
  symbol: string;
  nature: string;
  attribute: string;
  lines: number[];
  direction: string;
  number: number;
  description: string;
  family: string;
}

// 简化的八卦信息（用于卦象中的上下卦展示）
export interface TrigramInfo {
  name: string;
  symbol: string;
  nature: string;
  attribute?: string;
  number?: number;
}

// 一辞多断来源类型
export type JudgmentSource = '高岛易断' | '断易天机' | '增删卜易';

// 一辞多断项
export interface MultipleJudgment {
  category: string;
  content: string;
  source: JudgmentSource;
}

// 爻数据
export interface HexagramLine {
  position: number;
  name: string;
  text: string;
  interpretation: string;
  classicComment?: string;
  multipleJudgments?: MultipleJudgment[];
  takashiCase?: string;
}

// 五维解读
export interface Interpretation {
  summary: string;
  career: string;
  relationship: string;
  health: string;
  wealth: string;
}

// 卦象数据
export interface Hexagram {
  id: number;
  name: string;
  symbol: string;
  upperTrigram: string;
  lowerTrigram: string;
  number: number;
  judgment: string;
  image: string;
  interpretation: Interpretation;
  lines: HexagramLine[];
  classicComment?: string;
  multipleJudgments?: MultipleJudgment[];
  takashiCase?: string;
}

// 完整卦象展示（含上下卦信息）
export interface HexagramDisplay extends Hexagram {
  upperTrigramInfo?: TrigramInfo;
  lowerTrigramInfo?: TrigramInfo;
  rawLines?: number[];
}

// 动爻信息
export interface MovingLineInfo {
  position: number;
  name: string;
  text: string;
  interpretation: string;
  isOldYin?: boolean;
  isOldYang?: boolean;
  positionMeaning?: string;
  changeMeaning?: string;
  classicComment?: string;
  multipleJudgments?: MultipleJudgment[];
  takashiCase?: string;
}

// 变卦信息
export interface ChangedHexagram {
  id?: number;
  name: string;
  symbol: string;
  judgment?: string;
  image?: string;
  interpretation?: Interpretation;
  upperTrigramInfo?: TrigramInfo;
  lowerTrigramInfo?: TrigramInfo;
  finalInterpretation?: string;
}

// 终卦解读
export interface FinalReading {
  summary: string;
  advice: string;
  outlook: string;
}

// 心得笔记
export interface NoteItem {
  id: string;
  content: string;
  createdAt: string;
  updatedAt?: string;
}

// 占卜结果
export interface DivinationResult {
  id: string;
  question: string;
  timestamp: string;
  method?: string;
  input?: YarrowInput;
  hexagram: HexagramDisplay | null;
  movingLine: MovingLineInfo | null;
  changedHexagram: ChangedHexagram | null;
  allMovingPositions?: MovingPosition[];
  finalReading?: FinalReading;
  comment?: string;
  commentUpdatedAt?: string;
  notes?: NoteItem[];
}

// 蓍草起卦输入
export interface YarrowInput {
  upperNumber: number;
  lowerNumber: number;
  movingLine: number;
}

// 动爻位置
export interface MovingPosition {
  position: number;
  value: number;
  name: string;
}

// 先天八卦映射
export interface XianTianTrigram {
  name: string;
  symbol: string;
  nature: string;
  id: string;
  lines: number[];
  number: number;
}

// 爻值选项
export interface LineOption {
  value: number;
  label: string;
  desc: string;
  type: string;
  moving: boolean;
}

// 蓍草起卦步骤
export interface YarrowStep {
  step: number;
  title: string;
  description: string;
}

// 变卦计算结果
export interface ChangedTrigramResult {
  id: string;
  name: string;
  symbol: string;
  nature: string;
  lines: number[];
}

// 筛选项
export interface FilterItem {
  key: string;
  label: string;
}

// 存储统计
export interface StorageStats {
  userCount: number;
  recordCount: number;
}

// 导入结果
export interface ImportResult {
  success: boolean;
  importedCount: number;
  skippedCount: number;
  totalCount: number;
  error?: string;
}

// 导出数据
export interface ExportData {
  version: string;
  lastUpdated: string;
  users: Record<string, DivinationResult[]>;
}
