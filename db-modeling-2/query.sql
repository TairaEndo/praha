

-- 1. 特定のワークスペースに所属する全ユーザーを取得するクエリ
SELECT 
    u.id AS user_id, 
    u.username AS username, 
    u.email AS email 
FROM 
    Users u
JOIN 
    WorkspaceUsers wu ON u.id = wu.user_id
JOIN 
    Workspaces w ON wu.workspace_id = w.id
WHERE 
    w.name = 'ワークスペースA';


-- 2. 特定のチャンネル内の全メッセージを取得するクエリ
SELECT 
    m.id AS message_id, 
    u.username AS username, 
    m.content AS content, 
    m.created_at AS created_at 
FROM 
    Messages m
JOIN 
    Users u ON m.user_id = u.id
JOIN 
    Channels c ON m.channel_id = c.id
WHERE 
    c.name = 'general' AND c.workspace_id = 1
ORDER BY 
    m.created_at;


-- 3. ユーザーが送信した全メッセージを取得するクエリ
SELECT 
    m.id AS message_id, 
    c.name AS channel_name, 
    m.content AS content, 
    m.created_at AS created_at 
FROM 
    Messages m
JOIN 
    Channels c ON m.channel_id = c.id
JOIN 
    Users u ON m.user_id = u.id
WHERE 
    u.username = '高橋'
ORDER BY 
    m.created_at;


-- 4. 特定のワークスペース内の全チャンネルを取得するクエリ
SELECT 
    c.id AS channel_id, 
    c.name AS channel_name 
FROM 
    Channels c
JOIN 
    Workspaces w ON c.workspace_id = w.id
WHERE 
    w.name = 'ワークスペースA';



