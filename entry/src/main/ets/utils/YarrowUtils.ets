import { DivinationResult, MovingLineInfo, ChangedHexagram, FinalReading, TrigramInfo, YarrowInput, YarrowStep, ChangedTrigramResult, Trigram } from '../model/DivinationModel';
import { getTrigramById, getTrigramByXianTianNumber, TRIGRAM_LIST } from '../data/TrigramsData';
import { getHexagramByTrigrams } from '../data/HexagramsData';

// 获取爻名
export function getLineNameByPosition(position: number, isYang: boolean): string {
  const posNames: string[] = ['初', '二', '三', '四', '五', '上'];
  return isYang ? `${posNames[position - 1]}九` : `${posNames[position - 1]}六`;
}

// 动爻位置含义
export function getPositionMeaning(position: number, hexagramName: string): string {
  const positionMeanings: Record<number, string> = {
    1: '初爻为卦之始，象征事物萌芽阶段。处于潜伏、积蓄力量之时，宜韬光养晦，不宜轻举妄动。',
    2: '二爻居下卦之中，得中正之位。象征事物发展中正平稳，宜守正待时，循序渐进。',
    3: '三爻居下卦之终，处内外卦交界。象征事物将变未变之际，宜谨慎行事，警惕危机。',
    4: '四爻居上卦之始，近君之位。象征进入新的阶段，宜审时度势，把握机遇。',
    5: '五爻居上卦之中，为君位。象征事物发展至鼎盛，宜大展宏图，但需防盛极而衰。',
    6: '上爻为卦之终，象征事物发展至极。物极必反，宜知进退，适时而止。'
  };
  const posNameArr: string[] = ['初爻', '二爻', '三爻', '四爻', '五爻', '上爻'];
  const posName = posNameArr[position - 1];
  return `${hexagramName}之${posName}动。${positionMeanings[position] || ''}`;
}

// 动爻变化含义
export function getChangeMeaning(position: number, isYang: boolean, changedHexagramName: string): string {
  const yinYang: string = isYang ? '阳' : '阴';
  const changeTo: string = isYang ? '阴' : '阳';
  const changeEffect: string = isYang
    ? '阳变阴，刚化为柔，由进取转为守成。'
    : '阴变阳，柔化为刚，由守成转为进取。';
  return `此爻本为${yinYang}爻，动而变${changeTo}。${changeEffect}卦象由本卦变为${changedHexagramName}，象征事物发展出现转机。`;
}

// 蓍草起卦步骤
const step1: YarrowStep = { step: 1, title: '诚心问卜', description: '大衍之数五十，其用四十有九。请先静心，诚心提出您的问题。' };
const step2: YarrowStep = { step: 2, title: '起卦取数', description: '依先天八卦数，分别取上卦、下卦、动爻之数。' };
const step3: YarrowStep = { step: 3, title: '卦象呈现', description: '根据所取之数，呈现本卦与变卦。' };
const step4: YarrowStep = { step: 4, title: '详细解读', description: '综合本卦、动爻、之卦，给出完整解读。' };

export const YARROW_STEPS: YarrowStep[] = [step1, step2, step3, step4];

// 计算变卦后的八卦
function calculateChangedTrigram(trigramId: string, linePosition: number): ChangedTrigramResult | null {
  const trigram: Trigram | null = getTrigramById(trigramId);
  if (!trigram) return null;

  const newLines: number[] = [trigram.lines[0], trigram.lines[1], trigram.lines[2]];
  const lineIndexInTrigram: number = (linePosition - 1) % 3;
  newLines[lineIndexInTrigram] = newLines[lineIndexInTrigram] === 1 ? 0 : 1;

  for (let i = 0; i < TRIGRAM_LIST.length; i++) {
    const t: Trigram = TRIGRAM_LIST[i];
    if (t.lines.join('') === newLines.join('')) {
      const result: ChangedTrigramResult = { id: t.id, name: t.name, symbol: t.symbol, nature: t.nature, lines: t.lines };
      return result;
    }
  }
  return null;
}

// 蓍草起卦
export function performYarrowDivination(question: string, upperNum: number, lowerNum: number, movingLinePos: number): DivinationResult {
  const upperTrigram = getTrigramByXianTianNumber(upperNum);
  const lowerTrigram = getTrigramByXianTianNumber(lowerNum);

  const yarrowInput: YarrowInput = { upperNumber: upperNum, lowerNumber: lowerNum, movingLine: movingLinePos };
  const emptyFinalReading: FinalReading = { summary: '此卦象数据尚在完善中...', advice: '', outlook: '' };

  if (!upperTrigram || !lowerTrigram) {
    return {
      id: generateUUID(),
      question,
      timestamp: new Date().toISOString(),
      method: 'yarrow',
      input: yarrowInput,
      hexagram: null,
      movingLine: null,
      changedHexagram: null,
      finalReading: emptyFinalReading
    };
  }

  const hexagram = getHexagramByTrigrams(upperTrigram.id, lowerTrigram.id);

  if (!hexagram) {
    const fallbackFinalReading: FinalReading = { summary: '综合解读待完善...', advice: '', outlook: '' };
    return {
      id: generateUUID(),
      question,
      timestamp: new Date().toISOString(),
      method: 'yarrow',
      input: yarrowInput,
      hexagram: {
        id: 0, name: `${upperTrigram.name}${lowerTrigram.name}`, symbol: '䷀',
        upperTrigram: upperTrigram.id, lowerTrigram: lowerTrigram.id,
        number: 0, judgment: '卦象数据待完善', image: '',
        interpretation: { summary: '此卦象数据尚在完善中...', career: '', relationship: '', health: '', wealth: '' },
        lines: [],
        upperTrigramInfo: { name: upperTrigram.name, symbol: upperTrigram.symbol, nature: upperTrigram.nature, number: upperNum },
        lowerTrigramInfo: { name: lowerTrigram.name, symbol: lowerTrigram.symbol, nature: lowerTrigram.nature, number: lowerNum }
      },
      movingLine: null,
      changedHexagram: null,
      finalReading: fallbackFinalReading
    };
  }

  let movingLineInfo: MovingLineInfo | null = null;
  let changedHexagram: ChangedHexagram | null = null;

  if (movingLinePos >= 1 && movingLinePos <= 6) {
    const lineData = hexagram.lines?.[movingLinePos - 1];
    const isYang: boolean = movingLinePos <= 3
      ? lowerTrigram.lines[(movingLinePos - 1) % 3] === 1
      : upperTrigram.lines[(movingLinePos - 1) % 3] === 1;

    const isUpperLine: boolean = movingLinePos > 3;
    let changedUpperId: string = upperTrigram.id;
    let changedLowerId: string = lowerTrigram.id;

    if (isUpperLine) {
      const changedUpper = calculateChangedTrigram(upperTrigram.id, movingLinePos);
      if (changedUpper) changedUpperId = changedUpper.id;
    } else {
      const changedLower = calculateChangedTrigram(lowerTrigram.id, movingLinePos);
      if (changedLower) changedLowerId = changedLower.id;
    }

    const changedHexagramData = getHexagramByTrigrams(changedUpperId, changedLowerId);

    if (changedHexagramData) {
      const upperTri = getTrigramById(changedUpperId);
      const lowerTri = getTrigramById(changedLowerId);
      changedHexagram = {
        id: changedHexagramData.id,
        name: changedHexagramData.name,
        symbol: changedHexagramData.symbol,
        judgment: changedHexagramData.judgment,
        image: changedHexagramData.image,
        interpretation: changedHexagramData.interpretation,
        upperTrigramInfo: upperTri ? { name: upperTri.name, symbol: upperTri.symbol, nature: upperTri.nature, number: upperNum } : undefined,
        lowerTrigramInfo: lowerTri ? { name: lowerTri.name, symbol: lowerTri.symbol, nature: lowerTri.nature, number: lowerNum } : undefined
      };
    }

    movingLineInfo = {
      position: movingLinePos,
      name: lineData?.name || getLineNameByPosition(movingLinePos, isYang),
      text: lineData?.text || '',
      interpretation: lineData?.interpretation || '动爻变化之象，宜审时度势。',
      positionMeaning: getPositionMeaning(movingLinePos, hexagram.name),
      changeMeaning: getChangeMeaning(movingLinePos, isYang, changedHexagram?.name || '未知卦象'),
      classicComment: lineData?.classicComment,
      multipleJudgments: lineData?.multipleJudgments,
      takashiCase: lineData?.takashiCase
    };
  }

  const finalReading = generateFinalReading(hexagram.name, hexagram.interpretation.summary, movingLineInfo, changedHexagram);

  return {
    id: generateUUID(),
    question,
    timestamp: new Date().toISOString(),
    method: 'yarrow',
    input: yarrowInput,
    hexagram: {
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
      upperTrigramInfo: { name: upperTrigram.name, symbol: upperTrigram.symbol, nature: upperTrigram.nature, number: upperNum },
      lowerTrigramInfo: { name: lowerTrigram.name, symbol: lowerTrigram.symbol, nature: lowerTrigram.nature, number: lowerNum }
    },
    movingLine: movingLineInfo,
    changedHexagram,
    finalReading
  };
}

// 生成终卦解读
function generateFinalReading(hexagramName: string, summary: string, movingLine: MovingLineInfo | null, changedHexagram: ChangedHexagram | null): FinalReading {
  let advice: string = '';
  let outlook: string = '';

  if (movingLine && changedHexagram) {
    advice = `本卦${hexagramName}因${movingLine.name}动而变为${changedHexagram.name}，象征事物发展变化。`;
    outlook = changedHexagram.interpretation?.summary || '变化之中蕴含新的机遇。';
  } else if (movingLine) {
    advice = `${movingLine.name}为动爻，${movingLine.interpretation || '宜审时度势'}`;
    outlook = '动而不变，守正待时。';
  } else {
    advice = '此卦无动爻，为静卦，宜守正待时。';
    outlook = summary;
  }

  const result: FinalReading = { summary, advice, outlook };
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
