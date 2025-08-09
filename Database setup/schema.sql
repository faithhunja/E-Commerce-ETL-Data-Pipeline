CREATE TABLE users (
    user_id UUID PRIMARY KEY DEFAULT uuid_generate_v7(),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    address TEXT,
    join_date DATE
);

CREATE TABLE products (
    product_id UUID PRIMARY KEY DEFAULT uuid_generate_v7(),
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    creation_date DATE,
    description TEXT,
    stock_quantity INT
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id UUID REFERENCES users(user_id),
    order_date TIMESTAMP,
    total_amount NUMERIC(10, 2),
    payment_method VARCHAR(20),
    status VARCHAR(20)
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id UUID REFERENCES products(product_id),
    quantity INT,
    purchase_price NUMERIC(10, 2)
);

CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    user_id UUID REFERENCES users(user_id),
    product_id UUID REFERENCES products(product_id),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT,
    review_date DATE
);
