-- サンプルユーザーの挿入
INSERT INTO Users (username, email, created_at) VALUES
('佐藤', 'sato@example.com', '2023-01-01 10:00:00'),
('鈴木', 'suzuki@example.com', '2023-01-02 11:00:00'),
('高橋', 'takahashi@example.com', '2023-01-03 12:00:00');

-- サンプルワークスペースの挿入
INSERT INTO Workspaces (name, created_at) VALUES
('ワークスペースA', '2023-01-01 10:00:00'),
('ワークスペースB', '2023-01-02 11:00:00');

-- サンプルワークスペースユーザーの挿入
INSERT INTO WorkspaceUsers (workspace_id, user_id, joined_at, left_at) VALUES
(1, 1, '2023-01-01 10:00:00', NULL),
(1, 2, '2023-01-01 11:00:00', NULL),
(2, 3, '2023-01-02 12:00:00', NULL);

-- サンプルチャンネルの挿入
INSERT INTO Channels (workspace_id, name, created_at) VALUES
(1, 'general', '2023-01-01 10:00:00'),
(1, 'random', '2023-01-01 11:00:00'),
(2, 'general', '2023-01-02 12:00:00');

-- サンプルチャンネルユーザーの挿入
INSERT INTO ChannelUsers (channel_id, user_id, joined_at, left_at) VALUES
(1, 1, '2023-01-01 10:00:00', NULL),
(1, 2, '2023-01-01 11:00:00', NULL),
(2, 2, '2023-01-01 12:00:00', NULL),
(3, 3, '2023-01-02 12:00:00', NULL);

-- サンプルメッセージの挿入
INSERT INTO Messages (channel_id, user_id, parent_message_id, content, created_at) VALUES
(1, 1, NULL, 'こんにちは、みんな！', '2023-01-01 10:00:00'),
(1, 2, 1, 'こんにちは、佐藤さん！', '2023-01-01 10:05:00'),
(2, 2, NULL, 'ここは雑談用のチャンネルです。', '2023-01-01 11:00:00'),
(3, 3, NULL, 'ワークスペースBへようこそ！', '2023-01-02 12:00:00');
