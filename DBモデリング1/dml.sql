-- Customers テーブル
INSERT INTO Customers (name, phone_number, points, created_at, updated_at)
VALUES
    ('田中 太郎', '09012345678', 100, NOW(), NOW()),
    ('佐藤 花子', '08098765432', 50, NOW(), NOW()),
    ('鈴木 一郎', '07011112222', 200, NOW(), NOW()),
    ('高橋 美咲', '09033334444', 80, NOW(), NOW()),
    ('伊藤 健太', '08055556666', 150, NOW(), NOW());

-- Categories テーブル
INSERT INTO Categories (name, created_at, updated_at)
VALUES
    ('盛り込み', NOW(), NOW()),
    ('にぎり', NOW(), NOW()),
    ('鮨やの丼&おすすめ', NOW(), NOW()),
    ('地元に生まれた味', NOW(), NOW()),
    ('お好みすし', NOW(), NOW());

-- MenuItems テーブル
INSERT INTO MenuItems (name, category_id, price, start_date, end_date, created_at, updated_at)
VALUES
    ('はな', 1, 8650, NULL, NULL, NOW(), NOW()),
    ('わだつみ', 1, 5680, NULL, NULL, NOW(), NOW()),
    ('あさなぎ', 1, 4440, NULL, NULL, NOW(), NOW()),
    ('ゆうなぎ', 1, 3830, NULL, NULL, NOW(), NOW()),
    ('くろしお', 1, 2830, NULL, NULL, NOW(), NOW()),
    ('いさりび', 1, 2180, NULL, NULL, NOW(), NOW()),
    ('みさき', 2, 1940, NULL, NULL, NOW(), NOW()),
    ('みなと', 2, 1490, NULL, NULL, NOW(), NOW()),
    ('しおん', 2, 1060, NULL, NULL, NOW(), NOW()),
    ('なぎさ', 2, 800, NULL, NULL, NOW(), NOW()),
    ('海鮮ちらし', 3, 1280, NULL, NULL, NOW(), NOW()),
    ('鉄火丼', 3, 1000, NULL, NULL, NOW(), NOW()),
    ('鮨八宝巻', 4, 1280, NULL, NULL, NOW(), NOW()),
    ('鮨八宝巻（化粧箱入り）', 4, 1480, NULL, NULL, NOW(), NOW()),
    ('玉子', 5, 100, NULL, NULL, NOW(), NOW()),
    ('いなり', 5, 100, '2024-06-01', '2024-06-30', NOW(), NOW()),
    ('ゆでげそ', 5, 150, NULL, NULL, NOW(), NOW()),
    ('とびっこ', 5, 150,  '2024-07-01', '2024-07-31', NOW(), NOW()),
    ('えび', 5, 180, NULL, NULL, NOW(), NOW()),
    ('赤いか', 5, 180, NULL, NULL, NOW(), NOW()),
    ('生サーモン', 5, 220, NULL, NULL, NOW(), NOW()),
    ('生サーモン', 5, 220, NULL, NULL, NOW(), NOW()),
    ('あじ', 5, 260, NULL, NULL, NOW(), NOW()),
    ('いくら', 5, 360, NULL, NULL, NOW(), NOW()),
    ('活ヒラメ', 5, 400, NULL, NULL, NOW(), NOW()),
    ('中トロ', 5, 460, NULL, NULL, NOW(), NOW()),
    ('あなご一本すし', 5, 520, NULL, NULL, NOW(), NOW()),
    ('うに', 5, 600, NULL, NULL, NOW(), NOW());


-- Orders テーブル
INSERT INTO Orders (customer_id, pickup_date, need_remind, created_at, updated_at)
VALUES
    (1, '2024-03-12 18:30:00', true, NOW(), NOW()),
    (2, '2024-01-25 12:00:00', false, NOW(), NOW()),
    (3, '2023-12-08 19:45:00', true, NOW(), NOW()),
    (1, '2023-09-22 11:15:00', false, NOW(), NOW()),
    (4, '2024-05-05 17:00:00', true, NOW(), NOW());

-- OrderItems テーブル
INSERT INTO OrderItems (order_id, menu_item_id, quantity, no_wasabi, shari_size, created_at, updated_at)
VALUES
    (1, 1, 2, false, '中', NOW(), NOW()),
    (1, 3, 1, true, '大', NOW(), NOW()),
    (1, 5, 3, false, '小', NOW(), NOW()),  
    (2, 2, 3, false, '小', NOW(), NOW()),
    (2, 8, 1, true, '中', NOW(), NOW()),  
    (3, 4, 1, false, '中', NOW(), NOW()),
    (3, 12, 2, true, '大', NOW(), NOW()), 
    (4, 5, 2, true, '大', NOW(), NOW()),
    (4, 15, 1, false, '中', NOW(), NOW()), 
    (5, 10, 1, false, '小', NOW(), NOW()),
    (5, 22, 2, false, '大', NOW(), NOW()); 

-- PointsTransactions テーブル
INSERT INTO PointsTransactions (customer_id, order_id, points, transaction_type, created_at, updated_at)
VALUES
    (1, 1, 10, '付与', NOW(), NOW()),
    (2, 2, 5, '付与', NOW(), NOW()),
    (3, NULL, -20, '使用', NOW(), NOW()),
    (1, 4, 8, '付与', NOW(), NOW()),
    (4, 5, 12, '付与', NOW(), NOW());

-- Carts テーブル
INSERT INTO Carts (customer_id, created_at, updated_at)
VALUES
    (1, NOW(), NOW()),
    (2, NOW(), NOW()),
    (3, NOW(), NOW()),
    (4, NOW(), NOW()),
    (5, NOW(), NOW());

-- CartItems テーブル
INSERT INTO CartItems (cart_id, menu_item_id, quantity, no_wasabi, shari_size, created_at, updated_at)
VALUES
    (1, 1, 2, false, '中', NOW(), NOW()),
    (2, 2, 1, true, '大', NOW(), NOW()),
    (3, 3, 3, false, '小', NOW(), NOW()),
    (4, 4, 1, false, '中', NOW(), NOW()),
    (5, 5, 2, true, '大', NOW(), NOW());