-- Create kong User:
CREATE USER kong WITH PASSWORD 'kong_password';  -- Create your password

--Create readwrite User:
CREATE USER readwrite WITH PASSWORD 'readwrite_password'; -- Create your password
GRANT CONNECT ON DATABASE postgres TO readwrite;
GRANT USAGE ON SCHEMA public TO readwrite;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO readwrite;
GRANT SELECT, USAGE ON ALL SEQUENCES IN SCHEMA public TO readwrite;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO readwrite;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE, SELECT ON SEQUENCES TO readwrite;

--Create readonly User:
CREATE USER readonly WITH PASSWORD 'readonly_password'; -- Create your password
GRANT CONNECT ON DATABASE postgres TO readonly;
GRANT USAGE ON SCHEMA public TO readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO readonly;
