CREATE TABLE products (
    product_id UUID PRIMARY KEY DEFAULT uuid_generate_v7(),
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    creation_date DATE,
    description TEXT,
    stock_quantity INT
);
