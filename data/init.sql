CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    country VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products(
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  category VARCHAR(100),
  price DECIMAL(10,2) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

CREATE TABLE orders(
 order_id SERIAL PRIMARY KEY,
 customer_id INT NOT NULL,
 order_date TIMESTAMP NOT NULL,
 status VARCHAR(30),
 FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items(
 order_item_id SERIAL PRIMARY KEY,
 order_id INT NOT NULL,
 product_id INT NOT NULL,
 quantity INT NOT NULL,
 unit_price DECIMAL(30) NOT NULL,
 FOREIGN KEY (order_id) REFERENCES  orders(order_id),
 FOREIGN KEY (product_id) REFERENCES products(product_id)

);

CREATE TABLE payments(
 payment_id SERIAL PRIMARY KEY,
 order_id INT NOT NULL,
 amount DECIMAL(10,2) NOT NULL,
 payment_status VARCHAR(30),
 payment_date TIMESTAMP,
 FOREIGN KEY (order_id) REFERENCES orders(order_id)

);
	
