# Record Database 

## 1. 建立資料庫和表格
- **創建資料庫**: `record_company`
- **創建表格**:
  - **bands**: 儲存樂隊信息
    - `id`: INT, Primary Key, Auto-incremented
    - `name`: VARCHAR(255), 樂隊名稱
  - **albums**: 儲存專輯信息
    - `id`: INT, Primary Key, Auto-incremented
    - `name`: VARCHAR(255), 專輯名稱
    - `release_year`: INT, 發行年份
    - `band_id`: INT, 外鍵，參考 `bands(id)`

## 2. 插入數據
- 向 `bands` 表格插入多個樂隊名稱。
- 向 `albums` 表格插入多個專輯的詳細信息，包括發行年份和對應的樂隊ID。

## 3. 查詢數據
- 執行多種查詢，獲取樂隊和專輯信息：
  - 限制查詢結果
  - 修改列名
  - 排序
  - 去重

- 根據條件過濾專輯：
  - 發行年份
  - 名稱中的特定字母

## 4. 更新和刪除數據
- 更新某專輯的發行年份。
- 刪除特定的專輯記錄。

## 5. 連接查詢
- 使用JOIN語句從 `bands` 表格和 `albums` 表格獲取相關數據，顯示樂隊及其專輯的關係。

## 6. 聚合查詢
- 計算專輯的平均發行年份。
- 根據樂隊ID計算專輯數量，查詢只有一張專輯的樂隊。

---

這些操作組成了一個完整的音樂資料庫管理流程，涵蓋了數據的增、查、改、刪及其關聯性處理。
