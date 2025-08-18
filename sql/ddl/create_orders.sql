CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id UUID REFERENCES users(user_id),
    order_date TIMESTAMP,
    total_amount NUMERIC(10, 2),
    payment_method VARCHAR(20),
    status VARCHAR(20)
);
