import { Trigram, XianTianTrigram } from '../model/DivinationModel';

// 八卦数据（使用数组，符合ArkTS规范）
const trigramArray: Trigram[] = [
  {
    id: 'qian', name: '乾', symbol: '☰', nature: '天', attribute: '刚健',
    lines: [1, 1, 1], direction: '西北', number: 1,
    description: '乾者，健也。天行健，君子以自强不息。代表刚强、进取、创造之力。',
    family: '父'
  },
  {
    id: 'kun', name: '坤', symbol: '☷', nature: '地', attribute: '柔顺',
    lines: [0, 0, 0], direction: '西南', number: 8,
    description: '坤者，顺也。地势坤，君子以厚德载物。代表包容、承载、柔顺之德。',
    family: '母'
  },
  {
    id: 'zhen', name: '震', symbol: '☳', nature: '雷', attribute: '运动',
    lines: [1, 0, 0], direction: '东', number: 4,
    description: '震者，动也。帝出乎震。代表震动、启动、新生之机。',
    family: '长男'
  },
  {
    id: 'xun', name: '巽', symbol: '☴', nature: '风', attribute: '渗透',
    lines: [0, 1, 1], direction: '东南', number: 5,
    description: '巽者，入也。随风巽。代表渗透、顺应、谦逊之风。',
    family: '长女'
  },
  {
    id: 'kan', name: '坎', symbol: '☵', nature: '水', attribute: '险陷',
    lines: [0, 1, 0], direction: '北', number: 6,
    description: '坎者，陷也。水洊至。代表险陷、深渊、智慧之藏。',
    family: '中男'
  },
  {
    id: 'li', name: '离', symbol: '☲', nature: '火', attribute: '附丽',
    lines: [1, 0, 1], direction: '南', number: 3,
    description: '离者，丽也。明两作离。代表光明、文明、依附之象。',
    family: '中女'
  },
  {
    id: 'gen', name: '艮', symbol: '☶', nature: '山', attribute: '静止',
    lines: [0, 0, 1], direction: '东北', number: 7,
    description: '艮者，止也。兼山艮。代表静止、稳定、止息之态。',
    family: '少男'
  },
  {
    id: 'dui', name: '兑', symbol: '☱', nature: '泽', attribute: '喜悦',
    lines: [1, 1, 0], direction: '西', number: 2,
    description: '兑者，说也。丽泽兑。代表喜悦、沟通、和悦之情。',
    family: '少女'
  }
];

export const TRIGRAM_LIST: Trigram[] = trigramArray;

export function getTrigramById(id: string): Trigram | null {
  for (let i = 0; i < trigramArray.length; i++) {
    if (trigramArray[i].id === id) {
      return trigramArray[i];
    }
  }
  return null;
}

export function findTrigramByLines(lines: number[]): Trigram | null {
  const lineStr = lines.join('');
  for (let i = 0; i < trigramArray.length; i++) {
    if (trigramArray[i].lines.join('') === lineStr) {
      return trigramArray[i];
    }
  }
  return null;
}

// 先天八卦映射（使用数组，符合ArkTS规范）
const xianTianArray: XianTianTrigram[] = [
  { name: '乾', symbol: '☰', nature: '天', id: 'qian', lines: [1, 1, 1], number: 1 },
  { name: '兑', symbol: '☱', nature: '泽', id: 'dui', lines: [1, 1, 0], number: 2 },
  { name: '离', symbol: '☲', nature: '火', id: 'li', lines: [1, 0, 1], number: 3 },
  { name: '震', symbol: '☳', nature: '雷', id: 'zhen', lines: [1, 0, 0], number: 4 },
  { name: '巽', symbol: '☴', nature: '风', id: 'xun', lines: [0, 1, 1], number: 5 },
  { name: '坎', symbol: '☵', nature: '水', id: 'kan', lines: [0, 1, 0], number: 6 },
  { name: '艮', symbol: '☶', nature: '山', id: 'gen', lines: [0, 0, 1], number: 7 },
  { name: '坤', symbol: '☷', nature: '地', id: 'kun', lines: [0, 0, 0], number: 8 }
];

export const XIAN_TIAN_LIST: XianTianTrigram[] = xianTianArray;

export function getTrigramByXianTianNumber(num: number): XianTianTrigram | null {
  for (let i = 0; i < xianTianArray.length; i++) {
    if (xianTianArray[i].number === num) {
      return xianTianArray[i];
    }
  }
  return null;
}
