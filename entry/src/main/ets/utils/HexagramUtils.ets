import { DivinationResult, MovingLineInfo, MovingPosition, ChangedHexagram, TrigramInfo, HexagramDisplay, LineOption } from '../model/DivinationModel';
import { findTrigramByLines } from '../data/TrigramsData';
import { getHexagramByTrigrams } from '../data/HexagramsData';

// 生成随机6爻
export function generateRandomLines(): number[] {
  const lines: number[] = [];
  for (let i = 0; i < 6; i++) {
    lines.push(Math.floor(Math.random() * 4) + 6);
  }
  return lines;
}

// 爻值转二进制
export function lineToBinary(line: number): number {
  if (line === 6 || line === 8) return 0;
  if (line === 7 || line === 9) return 1;
  return 0;
}

// 是否为动爻
export function isMovingLine(line: number): boolean {
  return line === 6 || line === 9;
}

// 获取爻名
export function getLineName(line: number, position: number): string {
  const posNames: string[] = ['初', '二', '三', '四', '五', '上'];
  const numNames: Record<number, string> = { 6: '六', 7: '七', 8: '八', 9: '九' };
  return `${posNames[position - 1]}${numNames[line]}`;
}

// 爻值选项
const lineOption6: LineOption = { value: 6, label: '6', desc: '老阴（动爻）', type: 'yin', moving: true };
const lineOption7: LineOption = { value: 7, label: '7', desc: '少阳（静爻）', type: 'yang', moving: false };
const lineOption8: LineOption = { value: 8, label: '8', desc: '少阴（静爻）', type: 'yin', moving: false };
const lineOption9: LineOption = { value: 9, label: '9', desc: '老阳（动爻）', type: 'yang', moving: true };

export const LINE_OPTIONS: LineOption[] = [lineOption6, lineOption7, lineOption8, lineOption9];

// 计算卦象结果
export function calculateHexagramResult(lines: number[]): DivinationResult {
  const upperLinesRaw: number[] = lines.slice(0, 3);
  const lowerLinesRaw: number[] = lines.slice(3, 6);

  const upperBinary: number[] = upperLinesRaw.map(l => lineToBinary(l)).reverse();
  const lowerBinary: number[] = lowerLinesRaw.map(l => lineToBinary(l)).reverse();

  const upperTrigramData = findTrigramByLines(upperBinary);
  const lowerTrigramData = findTrigramByLines(lowerBinary);

  const hexagram = getHexagramByTrigrams(upperTrigramData?.id || '', lowerTrigramData?.id || '');

  let movingLineInfo: MovingLineInfo | null = null;
  const movingPositions: MovingPosition[] = [];

  lines.forEach((line, idx) => {
    if (isMovingLine(line)) {
      const pos: MovingPosition = {
        position: idx + 1,
        value: line,
        name: getLineName(line, idx + 1)
      };
      movingPositions.push(pos);
    }
  });

  if (movingPositions.length > 0) {
    const primaryMoving = movingPositions[0];
    const pos = primaryMoving.position;

    if (hexagram && hexagram.lines && hexagram.lines[pos - 1]) {
      movingLineInfo = {
        position: pos,
        name: primaryMoving.name,
        text: hexagram.lines[pos - 1].text,
        interpretation: hexagram.lines[pos - 1].interpretation,
        isOldYin: primaryMoving.value === 6,
        isOldYang: primaryMoving.value === 9,
        classicComment: hexagram.lines[pos - 1].classicComment,
        multipleJudgments: hexagram.lines[pos - 1].multipleJudgments,
        takashiCase: hexagram.lines[pos - 1].takashiCase
      };
    } else {
      movingLineInfo = {
        position: pos,
        name: primaryMoving.name,
        text: '',
        interpretation: '动爻变化之象，宜审时度势。',
        isOldYin: primaryMoving.value === 6,
        isOldYang: primaryMoving.value === 9
      };
    }
  }

  let changedHexagram: ChangedHexagram | null = null;

  if (movingPositions.length > 0) {
    const changedLines: number[] = lines.map(line => {
      if (line === 6) return 7;
      if (line === 9) return 8;
      return line;
    });

    const changedUpperBinary: number[] = changedLines.slice(0, 3).map(l => lineToBinary(l)).reverse();
    const changedLowerBinary: number[] = changedLines.slice(3, 6).map(l => lineToBinary(l)).reverse();

    const changedUpperTri = findTrigramByLines(changedUpperBinary);
    const changedLowerTri = findTrigramByLines(changedLowerBinary);

    const changedHexagramData = getHexagramByTrigrams(changedUpperTri?.id || '', changedLowerTri?.id || '');

    if (changedHexagramData) {
      const upperInfo: TrigramInfo | undefined = changedUpperTri ? {
        name: changedUpperTri.name, symbol: changedUpperTri.symbol, nature: changedUpperTri.nature, attribute: changedUpperTri.attribute
      } : undefined;
      const lowerInfo: TrigramInfo | undefined = changedLowerTri ? {
        name: changedLowerTri.name, symbol: changedLowerTri.symbol, nature: changedLowerTri.nature, attribute: changedLowerTri.attribute
      } : undefined;

      changedHexagram = {
        id: changedHexagramData.id,
        name: changedHexagramData.name,
        symbol: changedHexagramData.symbol,
        judgment: changedHexagramData.judgment,
        image: changedHexagramData.image,
        interpretation: changedHexagramData.interpretation,
        upperTrigramInfo: upperInfo,
        lowerTrigramInfo: lowerInfo,
        finalInterpretation: `由${hexagram?.name || '本卦'}变为${changedHexagramData.name}，象征事物发展之趋向。`
      };
    }
  }

  let hexagramDisplay: HexagramDisplay | null = null;
  if (hexagram) {
    const upperTriInfo: TrigramInfo | undefined = upperTrigramData ? {
      name: upperTrigramData.name, symbol: upperTrigramData.symbol, nature: upperTrigramData.nature, attribute: upperTrigramData.attribute
    } : undefined;
    const lowerTriInfo: TrigramInfo | undefined = lowerTrigramData ? {
      name: lowerTrigramData.name, symbol: lowerTrigramData.symbol, nature: lowerTrigramData.nature, attribute: lowerTrigramData.attribute
    } : undefined;

    hexagramDisplay = {
      id: hexagram.id,
      name: hexagram.name,
      symbol: hexagram.symbol,
      upperTrigram: hexagram.upperTrigram,
      lowerTrigram: hexagram.lowerTrigram,
      number: hexagram.number,
      judgment: hexagram.judgment,
      image: hexagram.image,
      interpretation: hexagram.interpretation,
      lines: hexagram.lines,
      classicComment: hexagram.classicComment,
      multipleJudgments: hexagram.multipleJudgments,
      takashiCase: hexagram.takashiCase,
      upperTrigramInfo: upperTriInfo,
      lowerTrigramInfo: lowerTriInfo,
      rawLines: lines
    };
  }

  return {
    id: generateUUID(),
    question: '',
    timestamp: new Date().toISOString(),
    hexagram: hexagramDisplay,
    movingLine: movingLineInfo,
    changedHexagram,
    allMovingPositions: movingPositions
  };
}

// 随机起卦
export function performDivination(question: string): DivinationResult {
  const lines = generateRandomLines();
  const result = calculateHexagramResult(lines);
  result.question = question;
  return result;
}

// 手动起卦
export function performManualDivination(question: string, lines: number[]): DivinationResult {
  const validLines: number[] = lines.map(l => {
    const n = parseInt(l.toString());
    return (n >= 6 && n <= 9) ? n : 7;
  });
  const result = calculateHexagramResult(validLines);
  result.question = question;
  return result;
}

// 生成UUID（ArkTS合规，不使用函数表达式和replace回调）
function generateUUID(): string {
  const chars: string[] = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'];
  const segments: number[] = [8, 4, 4, 4, 12];
  let uuid = '';
  for (let s = 0; s < segments.length; s++) {
    if (s > 0) {
      uuid += '-';
    }
    for (let i = 0; i < segments[s]; i++) {
      if (s === 2 && i === 0) {
        uuid += '4';
      } else if (s === 3 && i === 0) {
        uuid += chars[8 + Math.floor(Math.random() * 4)];
      } else {
        uuid += chars[Math.floor(Math.random() * 16)];
      }
    }
  }
  return uuid;
}
