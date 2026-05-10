import dataPreferences from '@ohos.data.preferences';
import { DivinationResult, StorageStats, ImportResult, ExportData, NoteItem, LightweightDivinationResult, HexagramReference, MovingLineReference, ChangedHexagramReference, ImportedRecord, Hexagram, MultipleJudgment } from '../model/DivinationModel';
import { getHexagramById } from '../data/HexagramsData';

const PREFERENCES_NAME = 'fateYi_preferences';
const HISTORY_KEY = 'fateYi_history';
const USER_KEY = 'fateYi_currentUser';
const SHARED_KEY = 'fateYi_shared';

let preferencesInstance: dataPreferences.Preferences | null = null;

// 初始化Preferences
export async function initPreferences(context: Context): Promise<void> {
  try {
    preferencesInstance = await dataPreferences.getPreferences(context, PREFERENCES_NAME);
  } catch (e) {
    console.error('初始化Preferences失败:', e);
  }
}

function getPreferences(): dataPreferences.Preferences | null {
  return preferencesInstance;
}

const DEFAULT_USER = '用户1';

// 将完整的DivinationResult转换为轻量级格式(用于存储)
function toLightweight(result: DivinationResult): LightweightDivinationResult {
  const lightweight: LightweightDivinationResult = {
    id: result.id,
    question: result.question,
    timestamp: result.timestamp,
    method: result.method,
    input: result.input,
    finalReading: result.finalReading,
    comment: result.comment,
    commentUpdatedAt: result.commentUpdatedAt,
    notes: result.notes
  };

  if (result.hexagram) {
    lightweight.hexagramRef = {
      id: result.hexagram.id,
      name: result.hexagram.name,
      symbol: result.hexagram.symbol,
      upperTrigram: result.hexagram.upperTrigram,
      lowerTrigram: result.hexagram.lowerTrigram,
      upperTrigramInfo: result.hexagram.upperTrigramInfo,
      lowerTrigramInfo: result.hexagram.lowerTrigramInfo
    };
  }

  if (result.movingLine) {
    lightweight.movingLineRef = {
      position: result.movingLine.position,
      name: result.movingLine.name,
      text: result.movingLine.text,
      interpretation: result.movingLine.interpretation,
      positionMeaning: result.movingLine.positionMeaning,
      changeMeaning: result.movingLine.changeMeaning
    };
  }

  if (result.changedHexagram) {
    lightweight.changedHexagramRef = {
      id: result.changedHexagram.id,
      name: result.changedHexagram.name,
      symbol: result.changedHexagram.symbol,
      upperTrigram: result.changedHexagram.upperTrigramInfo ? result.hexagram?.upperTrigram : undefined,
      lowerTrigram: result.changedHexagram.lowerTrigramInfo ? result.hexagram?.lowerTrigram : undefined
    };
  }

  return lightweight;
}

// 将轻量级格式转换为完整的DivinationResult(用于显示)
function fromLightweight(lightweight: LightweightDivinationResult): DivinationResult {
  const result: DivinationResult = {
    id: lightweight.id,
    question: lightweight.question,
    timestamp: lightweight.timestamp,
    method: lightweight.method,
    input: lightweight.input,
    hexagram: null,
    movingLine: null,
    changedHexagram: null,
    finalReading: lightweight.finalReading,
    comment: lightweight.comment,
    commentUpdatedAt: lightweight.commentUpdatedAt,
    notes: lightweight.notes
  };

  if (lightweight.hexagramRef) {
    const fullHexagram = getHexagramById(lightweight.hexagramRef.id);
    if (fullHexagram) {
      result.hexagram = {
        id: fullHexagram.id,
        name: fullHexagram.name,
        symbol: fullHexagram.symbol,
        upperTrigram: fullHexagram.upperTrigram,
        lowerTrigram: fullHexagram.lowerTrigram,
        number: fullHexagram.number,
        judgment: fullHexagram.judgment,
        image: fullHexagram.image,
        interpretation: fullHexagram.interpretation,
        lines: fullHexagram.lines,
        classicComment: fullHexagram.classicComment,
        multipleJudgments: fullHexagram.multipleJudgments,
        takashiCase: fullHexagram.takashiCase,
        upperTrigramInfo: lightweight.hexagramRef.upperTrigramInfo,
        lowerTrigramInfo: lightweight.hexagramRef.lowerTrigramInfo
      };
    } else {
      result.hexagram = {
        id: lightweight.hexagramRef.id,
        name: lightweight.hexagramRef.name,
        symbol: lightweight.hexagramRef.symbol,
        upperTrigram: lightweight.hexagramRef.upperTrigram,
        lowerTrigram: lightweight.hexagramRef.lowerTrigram,
        number: 0,
        judgment: '卦象数据待完善',
        image: '',
        interpretation: { summary: '此卦象数据尚在完善中...', career: '', relationship: '', health: '', wealth: '' },
        lines: [],
        upperTrigramInfo: lightweight.hexagramRef.upperTrigramInfo,
        lowerTrigramInfo: lightweight.hexagramRef.lowerTrigramInfo
      };
    }
  }

  if (lightweight.movingLineRef) {
    let classicComment: string | undefined = undefined;
    let multipleJudgments: MultipleJudgment[] | undefined = undefined;
    let takashiCase: string | undefined = undefined;

    if (result.hexagram && result.hexagram.lines && lightweight.movingLineRef.position >= 1 && lightweight.movingLineRef.position <= 6) {
      const lineData = result.hexagram.lines[lightweight.movingLineRef.position - 1];
      if (lineData) {
        classicComment = lineData.classicComment;
        multipleJudgments = lineData.multipleJudgments;
        takashiCase = lineData.takashiCase;
      }
    }

    result.movingLine = {
      position: lightweight.movingLineRef.position,
      name: lightweight.movingLineRef.name,
      text: lightweight.movingLineRef.text,
      interpretation: lightweight.movingLineRef.interpretation,
      positionMeaning: lightweight.movingLineRef.positionMeaning,
      changeMeaning: lightweight.movingLineRef.changeMeaning,
      classicComment: classicComment,
      multipleJudgments: multipleJudgments,
      takashiCase: takashiCase
    };
  }

  if (lightweight.changedHexagramRef) {
    let changedFullHexagram: Hexagram | null = null;
    if (lightweight.changedHexagramRef.id) {
      changedFullHexagram = getHexagramById(lightweight.changedHexagramRef.id);
    }

    if (changedFullHexagram) {
      result.changedHexagram = {
        id: changedFullHexagram.id,
        name: changedFullHexagram.name,
        symbol: changedFullHexagram.symbol,
        judgment: changedFullHexagram.judgment,
        image: changedFullHexagram.image,
        interpretation: changedFullHexagram.interpretation,
        upperTrigramInfo: lightweight.changedHexagramRef.upperTrigram ? 
          { name: '', symbol: '', nature: '' } : undefined,
        lowerTrigramInfo: lightweight.changedHexagramRef.lowerTrigram ? 
          { name: '', symbol: '', nature: '' } : undefined
      };
      
      if (changedFullHexagram.classicComment) {
        result.changedHexagram!.classicComment = changedFullHexagram.classicComment;
      }
      if (changedFullHexagram.multipleJudgments) {
        result.changedHexagram!.multipleJudgments = changedFullHexagram.multipleJudgments;
      }
      if (changedFullHexagram.takashiCase) {
        result.changedHexagram!.takashiCase = changedFullHexagram.takashiCase;
      }
    } else {
      result.changedHexagram = {
        id: lightweight.changedHexagramRef.id,
        name: lightweight.changedHexagramRef.name,
        symbol: lightweight.changedHexagramRef.symbol
      };
    }
  }

  return result;
}

// 获取当前用户
export async function getCurrentUser(): Promise<string> {
  try {
    const prefs = getPreferences();
    if (!prefs) return DEFAULT_USER;
    const user = (await prefs.get(USER_KEY, '')) as string;
    return user || DEFAULT_USER;
  } catch (e) {
    return DEFAULT_USER;
  }
}

// 设置当前用户
export async function setCurrentUser(username: string): Promise<void> {
  try {
    const prefs = getPreferences();
    if (!prefs) return;
    if (username) {
      await prefs.put(USER_KEY, username);
    } else {
      await prefs.delete(USER_KEY);
    }
    await prefs.flush();
  } catch (e) {
    console.warn('无法保存用户名:', e);
  }
}

// 解析历史记录数据
function parseAllHistory(data: string): Record<string, DivinationResult[]> {
  const emptyResult: Record<string, DivinationResult[]> = JSON.parse('{}') as Record<string, DivinationResult[]>;
  try {
    const parsed: Record<string, DivinationResult[]> = JSON.parse(data) as Record<string, DivinationResult[]>;
    return parsed;
  } catch (e) {
    return emptyResult;
  }
}

// 获取所有用户列表
export async function getAllUsers(): Promise<string[]> {
  try {
    const prefs = getPreferences();
    if (!prefs) return [];
    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, LightweightDivinationResult[]> = parseAllHistory(data);
    const keys: string[] = Object.keys(allHistory);
    const users: string[] = [];
    for (let i = 0; i < keys.length; i++) {
      const records: LightweightDivinationResult[] = allHistory[keys[i]];
      if (records && records.length > 0) {
        users.push(keys[i]);
      }
    }
    return users;
  } catch (e) {
    return [];
  }
}

// 获取历史记录
export async function getHistory(username: string): Promise<DivinationResult[]> {
  try {
    const prefs = getPreferences();
    if (!prefs) return [];
    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, LightweightDivinationResult[]> = parseAllHistory(data);
    const targetUser: string = username || DEFAULT_USER;
    if (allHistory[targetUser]) {
      const lightweightResults: LightweightDivinationResult[] = allHistory[targetUser];
      const fullResults: DivinationResult[] = [];
      for (let i = 0; i < lightweightResults.length; i++) {
        fullResults.push(fromLightweight(lightweightResults[i]));
      }
      return fullResults;
    }
    return [];
  } catch (e) {
    return [];
  }
}

// 保存占卜结果
export async function saveDivinationResult(username: string, result: DivinationResult): Promise<boolean> {
  try {
    const prefs = getPreferences();
    if (!prefs) return false;
    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, LightweightDivinationResult[]> = parseAllHistory(data);

    if (!allHistory[username]) {
      allHistory[username] = [];
    }

    const lightweightResult: LightweightDivinationResult = toLightweight(result);
    allHistory[username].unshift(lightweightResult);

    if (allHistory[username].length > 100) {
      allHistory[username] = allHistory[username].slice(0, 100);
    }

    await prefs.put(HISTORY_KEY, JSON.stringify(allHistory));
    await prefs.flush();
    return true;
  } catch (e) {
    console.warn('无法保存占卜结果:', e);
    return false;
  }
}

// 删除历史记录
export async function deleteHistoryItem(username: string, id: string): Promise<boolean> {
  try {
    const prefs = getPreferences();
    if (!prefs) return false;
    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, LightweightDivinationResult[]> = parseAllHistory(data);

    if (allHistory[username]) {
      allHistory[username] = allHistory[username].filter((item: LightweightDivinationResult) => item.id !== id);
      await prefs.put(HISTORY_KEY, JSON.stringify(allHistory));
      await prefs.flush();
      return true;
    }
    return false;
  } catch (e) {
    return false;
  }
}

// 更新心得笔记(旧版兼容)
export async function updateHistoryComment(username: string, id: string, comment: string): Promise<boolean> {
  try {
    const prefs = getPreferences();
    if (!prefs) return false;
    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, LightweightDivinationResult[]> = parseAllHistory(data);
    const targetUser: string = username || DEFAULT_USER;

    if (allHistory[targetUser]) {
      const itemIndex: number = allHistory[targetUser].findIndex((item: LightweightDivinationResult) => item.id === id);
      if (itemIndex !== -1) {
        allHistory[targetUser][itemIndex].comment = comment;
        allHistory[targetUser][itemIndex].commentUpdatedAt = new Date().toISOString();
        await prefs.put(HISTORY_KEY, JSON.stringify(allHistory));
        await prefs.flush();
        return true;
      }
    }
    return false;
  } catch (e) {
    return false;
  }
}

// 生成简单UUID
function generateNoteId(): string {
  return Date.now().toString(36) + Math.random().toString(36).substring(2, 7);
}

// 添加笔记
export async function addNote(username: string, resultId: string, content: string): Promise<string | null> {
  try {
    const prefs = getPreferences();
    if (!prefs) return null;
    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, LightweightDivinationResult[]> = parseAllHistory(data);
    const targetUser: string = username || DEFAULT_USER;

    if (allHistory[targetUser]) {
      const itemIndex: number = allHistory[targetUser].findIndex((item: LightweightDivinationResult) => item.id === resultId);
      if (itemIndex !== -1) {
        if (!allHistory[targetUser][itemIndex].notes) {
          allHistory[targetUser][itemIndex].notes = [];
        }
        const noteId = generateNoteId();
        const note: NoteItem = {
          id: noteId,
          content: content,
          createdAt: new Date().toISOString()
        };
        allHistory[targetUser][itemIndex].notes!.push(note);
        await prefs.put(HISTORY_KEY, JSON.stringify(allHistory));
        await prefs.flush();
        return noteId;
      }
    }
    return null;
  } catch (e) {
    return null;
  }
}

// 编辑笔记
export async function editNote(username: string, resultId: string, noteId: string, content: string): Promise<boolean> {
  try {
    const prefs = getPreferences();
    if (!prefs) return false;
    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, LightweightDivinationResult[]> = parseAllHistory(data);
    const targetUser: string = username || DEFAULT_USER;

    if (allHistory[targetUser]) {
      const itemIndex: number = allHistory[targetUser].findIndex((item: LightweightDivinationResult) => item.id === resultId);
      if (itemIndex !== -1 && allHistory[targetUser][itemIndex].notes) {
        const noteIndex: number = allHistory[targetUser][itemIndex].notes!.findIndex((n: NoteItem) => n.id === noteId);
        if (noteIndex !== -1) {
          allHistory[targetUser][itemIndex].notes![noteIndex].content = content;
          allHistory[targetUser][itemIndex].notes![noteIndex].updatedAt = new Date().toISOString();
          await prefs.put(HISTORY_KEY, JSON.stringify(allHistory));
          await prefs.flush();
          return true;
        }
      }
    }
    return false;
  } catch (e) {
    return false;
  }
}

// 删除笔记
export async function deleteNote(username: string, resultId: string, noteId: string): Promise<boolean> {
  try {
    const prefs = getPreferences();
    if (!prefs) return false;
    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, LightweightDivinationResult[]> = parseAllHistory(data);
    const targetUser: string = username || DEFAULT_USER;

    if (allHistory[targetUser]) {
      const itemIndex: number = allHistory[targetUser].findIndex((item: LightweightDivinationResult) => item.id === resultId);
      if (itemIndex !== -1 && allHistory[targetUser][itemIndex].notes) {
        allHistory[targetUser][itemIndex].notes = allHistory[targetUser][itemIndex].notes!.filter((n: NoteItem) => n.id !== noteId);
        await prefs.put(HISTORY_KEY, JSON.stringify(allHistory));
        await prefs.flush();
        return true;
      }
    }
    return false;
  } catch (e) {
    return false;
  }
}

// 保存分享结果
export async function saveSharedResult(result: DivinationResult): Promise<string | null> {
  try {
    const prefs = getPreferences();
    if (!prefs) return null;
    const data = (await prefs.get(SHARED_KEY, '{}')) as string;
    const sharedData: Record<string, DivinationResult> = JSON.parse(data) as Record<string, DivinationResult>;
    const resultCopy: DivinationResult = JSON.parse(JSON.stringify(result)) as DivinationResult;
    sharedData[result.id] = resultCopy;
    await prefs.put(SHARED_KEY, JSON.stringify(sharedData));
    await prefs.flush();
    return result.id;
  } catch (e) {
    return null;
  }
}

// 获取分享结果
export async function getSharedResult(id: string): Promise<DivinationResult | null> {
  try {
    const prefs = getPreferences();
    if (!prefs) return null;
    const data = (await prefs.get(SHARED_KEY, '{}')) as string;
    const sharedData: Record<string, DivinationResult> = JSON.parse(data) as Record<string, DivinationResult>;
    return sharedData[id] || null;
  } catch (e) {
    return null;
  }
}

// 获取存储统计
export async function getStorageStats(): Promise<StorageStats> {
  try {
    const prefs = getPreferences();
    const emptyStats: StorageStats = { userCount: 0, recordCount: 0 };
    if (!prefs) return emptyStats;
    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, LightweightDivinationResult[]> = parseAllHistory(data);
    const keys: string[] = Object.keys(allHistory);
    const userCount: number = keys.length;
    let recordCount: number = 0;
    for (let i = 0; i < keys.length; i++) {
      const records: LightweightDivinationResult[] = allHistory[keys[i]];
      if (records && Array.isArray(records)) {
        recordCount += records.length;
      }
    }
    const result: StorageStats = { userCount: userCount, recordCount: recordCount };
    return result;
  } catch (e) {
    const emptyStats: StorageStats = { userCount: 0, recordCount: 0 };
    return emptyStats;
  }
}

// 清除所有数据
export async function clearAllData(): Promise<boolean> {
  try {
    const prefs = getPreferences();
    if (!prefs) return false;
    await prefs.delete(HISTORY_KEY);
    await prefs.delete(USER_KEY);
    await prefs.delete(SHARED_KEY);
    await prefs.flush();
    return true;
  } catch (e) {
    return false;
  }
}

// 导出所有历史记录
export async function exportAllHistory(): Promise<string | null> {
  try {
    const prefs = getPreferences();
    if (!prefs) return null;
    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, DivinationResult[]> = parseAllHistory(data);
    const exportData: ExportData = {
      version: '1.0',
      lastUpdated: new Date().toISOString(),
      users: allHistory
    };
    return JSON.stringify(exportData, null, 2);
  } catch (e) {
    return null;
  }
}

// 导入历史记录(支持 ExportData 格式和旧 records 格式)
export async function importHistory(username: string, jsonData: string, mode: string = 'merge'): Promise<ImportResult> {
  try {
    const importData: Record<string, Object> = JSON.parse(jsonData) as Record<string, Object>;
    const prefs = getPreferences();
    if (!prefs) {
      const failResult: ImportResult = { success: false, importedCount: 0, skippedCount: 0, totalCount: 0, error: '存储未初始化' };
      return failResult;
    }

    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, LightweightDivinationResult[]> = parseAllHistory(data);

    let importedCount: number = 0;
    let skippedCount: number = 0;

    const usersObj: Object | undefined = importData['users'] as Object | undefined;
    if (usersObj && typeof usersObj === 'object') {
      const usersMap: Record<string, Object[]> = usersObj as Record<string, Object[]>;
      const userKeys: string[] = Object.keys(usersMap);
      for (let i = 0; i < userKeys.length; i++) {
        const userName: string = userKeys[i];
        const recordsRaw: Object[] = usersMap[userName];
        if (!recordsRaw || !Array.isArray(recordsRaw)) continue;

        if (!allHistory[userName]) {
          allHistory[userName] = [];
        }

        const importRecords: ImportedRecord[] = recordsRaw as ImportedRecord[];
        const existingIds: Set<string> = new Set<string>(allHistory[userName].map((item: LightweightDivinationResult) => item.id));
        for (let j = 0; j < importRecords.length; j++) {
          const record: ImportedRecord = importRecords[j];
          if (mode === 'replace' || !existingIds.has(record.id)) {
            let lightweightRecord: LightweightDivinationResult;
            if (record.hexagramRef) {
              lightweightRecord = record as LightweightDivinationResult;
            } else if (record.hexagram) {
              lightweightRecord = toLightweight(record as DivinationResult);
            } else {
              continue;
            }
            allHistory[userName].push(lightweightRecord);
            importedCount++;
          } else {
            skippedCount++;
          }
        }
        allHistory[userName].sort((a: LightweightDivinationResult, b: LightweightDivinationResult) =>
          new Date(b.timestamp).getTime() - new Date(a.timestamp).getTime()
        );
        if (allHistory[userName].length > 100) {
          allHistory[userName] = allHistory[userName].slice(0, 100);
        }
      }
    } else {
      const recordsRaw: Object[] = importData['records'] as Object[];
      if (!recordsRaw || !Array.isArray(recordsRaw)) {
        const failResult: ImportResult = { success: false, importedCount: 0, skippedCount: 0, totalCount: 0, error: '无效的数据格式' };
        return failResult;
      }

      const targetUser: string = username || DEFAULT_USER;
      if (!allHistory[targetUser]) {
        allHistory[targetUser] = [];
      }

      const importRecords: ImportedRecord[] = recordsRaw as ImportedRecord[];
      if (mode === 'replace') {
        allHistory[targetUser] = [];
        for (let i = 0; i < importRecords.length; i++) {
          const record: ImportedRecord = importRecords[i];
          let lightweightRecord: LightweightDivinationResult;
          if (record.hexagramRef) {
            lightweightRecord = record as LightweightDivinationResult;
          } else if (record.hexagram) {
            lightweightRecord = toLightweight(record as DivinationResult);
          } else {
            continue;
          }
          allHistory[targetUser].push(lightweightRecord);
          importedCount++;
        }
      } else {
        const existingIds: Set<string> = new Set<string>(allHistory[targetUser].map((item: LightweightDivinationResult) => item.id));
        for (let i = 0; i < importRecords.length; i++) {
          const record: ImportedRecord = importRecords[i];
          if (!existingIds.has(record.id)) {
            let lightweightRecord: LightweightDivinationResult;
            if (record.hexagramRef) {
              lightweightRecord = record as LightweightDivinationResult;
            } else if (record.hexagram) {
              lightweightRecord = toLightweight(record as DivinationResult);
            } else {
              continue;
            }
            allHistory[targetUser].push(lightweightRecord);
            importedCount++;
          } else {
            skippedCount++;
          }
        }
        allHistory[targetUser].sort((a: LightweightDivinationResult, b: LightweightDivinationResult) =>
          new Date(b.timestamp).getTime() - new Date(a.timestamp).getTime()
        );
        if (allHistory[targetUser].length > 100) {
          allHistory[targetUser] = allHistory[targetUser].slice(0, 100);
        }
      }
    }

    await prefs.put(HISTORY_KEY, JSON.stringify(allHistory));
    await prefs.flush();

    const totalAll: number = Object.values(allHistory).reduce((sum: number, recs: LightweightDivinationResult[]) => sum + recs.length, 0);
    const successResult: ImportResult = { success: true, importedCount: importedCount, skippedCount: skippedCount, totalCount: totalAll };
    return successResult;
  } catch (e) {
    const failResult: ImportResult = { success: false, importedCount: 0, skippedCount: 0, totalCount: 0, error: '解析数据失败' };
    return failResult;
  }
}
