-- This script runs once when Postgres database is created

-- Create app user. Grant superuser privileges for Liquibase to succeed
CREATE USER code_inventory_backend WITH PASSWORD 'Smart-bananas-silly-nuts-57';
GRANT ALL PRIVILEGES ON DATABASE code_inventory_backend TO code_inventory_backend;
GRANT USAGE ON SCHEMA public TO code_inventory_backend;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO code_inventory_backend;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO code_inventory_backend;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO code_inventory_backend;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON SEQUENCES TO code_inventory_backend;
ALTER USER code_inventory_backend WITH SUPERUSER;