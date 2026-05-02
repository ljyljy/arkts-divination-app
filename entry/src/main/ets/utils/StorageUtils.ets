import dataPreferences from '@ohos.data.preferences';
import { DivinationResult, StorageStats, ImportResult, ExportData } from '../model/DivinationModel';

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
    const allHistory: Record<string, DivinationResult[]> = parseAllHistory(data);
    const keys: string[] = Object.keys(allHistory);
    const users: string[] = [];
    for (let i = 0; i < keys.length; i++) {
      const records: DivinationResult[] = allHistory[keys[i]];
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
    const allHistory: Record<string, DivinationResult[]> = parseAllHistory(data);
    const targetUser: string = username || DEFAULT_USER;
    if (allHistory[targetUser]) {
      return allHistory[targetUser];
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
    const allHistory: Record<string, DivinationResult[]> = parseAllHistory(data);

    if (!allHistory[username]) {
      allHistory[username] = [];
    }

    const resultCopy: DivinationResult = JSON.parse(JSON.stringify(result)) as DivinationResult;
    allHistory[username].unshift(resultCopy);

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
    const allHistory: Record<string, DivinationResult[]> = parseAllHistory(data);

    if (allHistory[username]) {
      allHistory[username] = allHistory[username].filter((item: DivinationResult) => item.id !== id);
      await prefs.put(HISTORY_KEY, JSON.stringify(allHistory));
      await prefs.flush();
      return true;
    }
    return false;
  } catch (e) {
    return false;
  }
}

// 更新心得笔记
export async function updateHistoryComment(username: string, id: string, comment: string): Promise<boolean> {
  try {
    const prefs = getPreferences();
    if (!prefs) return false;
    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, DivinationResult[]> = parseAllHistory(data);
    const targetUser: string = username || DEFAULT_USER;

    if (allHistory[targetUser]) {
      const itemIndex: number = allHistory[targetUser].findIndex((item: DivinationResult) => item.id === id);
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
    const allHistory: Record<string, DivinationResult[]> = parseAllHistory(data);
    const keys: string[] = Object.keys(allHistory);
    const userCount: number = keys.length;
    let recordCount: number = 0;
    for (let i = 0; i < keys.length; i++) {
      const records: DivinationResult[] = allHistory[keys[i]];
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

// 导入历史记录
export async function importHistory(username: string, jsonData: string, mode: string = 'merge'): Promise<ImportResult> {
  try {
    const importData: Record<string, Object> = JSON.parse(jsonData) as Record<string, Object>;
    const recordsRaw: Object[] = importData['records'] as Object[];
    if (!recordsRaw || !Array.isArray(recordsRaw)) {
      const failResult: ImportResult = { success: false, importedCount: 0, skippedCount: 0, totalCount: 0, error: '无效的数据格式' };
      return failResult;
    }

    const prefs = getPreferences();
    if (!prefs) {
      const failResult: ImportResult = { success: false, importedCount: 0, skippedCount: 0, totalCount: 0, error: '存储未初始化' };
      return failResult;
    }

    const data = (await prefs.get(HISTORY_KEY, '{}')) as string;
    const allHistory: Record<string, DivinationResult[]> = parseAllHistory(data);
    if (!allHistory[username]) {
      allHistory[username] = [];
    }

    let importedCount: number = 0;
    let skippedCount: number = 0;

    const importRecords: DivinationResult[] = recordsRaw as DivinationResult[];

    if (mode === 'replace') {
      allHistory[username] = importRecords;
      importedCount = importRecords.length;
    } else {
      const existingIds: Set<string> = new Set<string>(allHistory[username].map((item: DivinationResult) => item.id));
      for (let i = 0; i < importRecords.length; i++) {
        const record: DivinationResult = importRecords[i];
        if (!existingIds.has(record.id)) {
          allHistory[username].push(record);
          importedCount++;
        } else {
          skippedCount++;
        }
      }
      allHistory[username].sort((a: DivinationResult, b: DivinationResult) =>
        new Date(b.timestamp).getTime() - new Date(a.timestamp).getTime()
      );
      if (allHistory[username].length > 100) {
        allHistory[username] = allHistory[username].slice(0, 100);
      }
    }

    await prefs.put(HISTORY_KEY, JSON.stringify(allHistory));
    await prefs.flush();

    const successResult: ImportResult = { success: true, importedCount: importedCount, skippedCount: skippedCount, totalCount: allHistory[username].length };
    return successResult;
  } catch (e) {
    const failResult: ImportResult = { success: false, importedCount: 0, skippedCount: 0, totalCount: 0, error: '解析数据失败' };
    return failResult;
  }
}
