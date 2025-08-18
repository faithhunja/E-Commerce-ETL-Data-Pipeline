CREATE TABLE users (
    user_id UUID PRIMARY KEY DEFAULT uuid_generate_v7(),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    address TEXT,
    join_date DATE
);
