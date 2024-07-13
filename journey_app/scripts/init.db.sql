CREATE EXTENSION IF NOT EXISTS dblink;

DO $$
BEGIN
   IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'journey') THEN
      PERFORM dblink_exec('dbname=postgres', 'CREATE DATABASE journey');
   END IF;
END
$$;
