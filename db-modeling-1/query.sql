---- 顧客関連のクエリ

-- 顧客情報とその注文履歴の取得
SELECT c.name, c.phone_number, c.points, o.pickup_date, o.need_remind
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customer_id;

-- ポイント残高が多い順に顧客情報を取得
SELECT name, phone_number, points
FROM Customers
ORDER BY points DESC;

-- 特定の顧客のポイント履歴を取得
SELECT points, transaction_type, created_at
FROM PointsTransactions
WHERE customer_id = 1;  -- 顧客IDを指定





---- 注文関連のクエリ

-- 特定の日付の注文とその詳細を取得
SELECT o.id, c.name, o.pickup_date, mi.name AS menu_item_name, oi.quantity, oi.no_wasabi, oi.shari_size
FROM Orders o
JOIN Customers c ON o.customer_id = c.id
JOIN OrderItems oi ON o.id = oi.order_id
JOIN MenuItems mi ON oi.menu_item_id = mi.id
WHERE DATE_FORMAT(o.pickup_date, '%Y-%m-%d') = '2024-03-12';

-- リマインダーが必要な注文を取得
SELECT *
FROM Orders
WHERE need_remind = true;

-- 注文ごとの合計金額を計算
SELECT o.id, c.name, SUM(mi.price * oi.quantity) AS total_price
FROM Orders o
JOIN Customers c ON o.customer_id = c.id
JOIN OrderItems oi ON o.id = oi.order_id
JOIN MenuItems mi ON oi.menu_item_id = mi.id
GROUP BY o.id, c.name;




---- メニュー関連のクエリ

-- 現在販売中のメニューを取得
SELECT *
FROM MenuItems
WHERE (start_date IS NULL OR start_date <= NOW())
  AND (end_date IS NULL OR end_date >= NOW());

-- 特定のカテゴリのメニューを取得
SELECT mi.*
FROM MenuItems mi
JOIN Categories c ON mi.category_id = c.id
WHERE c.name = 'にぎり';

-- 6月の期間限定メニューを取得
SELECT *
FROM MenuItems
WHERE start_date >= '2024-06-01'
  AND end_date <= '2024-06-30';




---- ポイント関連のクエリ

-- 顧客ごとにポイントの付与と使用の合計を計算
SELECT
  c.name AS customer_name,
  SUM(CASE WHEN pt.transaction_type = '付与' THEN pt.points ELSE 0 END) AS total_granted_points,
  SUM(CASE WHEN pt.transaction_type = '使用' THEN pt.points ELSE 0 END) AS total_used_points
FROM Customers c
LEFT JOIN PointsTransactions pt ON c.id = pt.customer_id
GROUP BY c.id, c.name;