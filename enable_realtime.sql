-- Execute este SQL no Supabase SQL Editor para habilitar Realtime
-- Settings > Replication > Tables

-- Habilitar realtime na tabela apontamentos
ALTER PUBLICATION supabase_realtime ADD TABLE apontamentos;

-- Habilitar realtime na tabela ordens
ALTER PUBLICATION supabase_realtime ADD TABLE ordens;

-- Verificar quais tabelas têm realtime ativo
SELECT schemaname, tablename 
FROM pg_publication_tables 
WHERE pubname = 'supabase_realtime';
