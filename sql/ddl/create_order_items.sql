CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id UUID REFERENCES products(product_id),
    quantity INT,
    purchase_price NUMERIC(10, 2)
);
