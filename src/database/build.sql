BEGIN;

DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

INSERT INTO users(name) VALUES('marwa');

DROP TABLE IF EXISTS products CASCADE;
CREATE TABLE IF NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    image TEXT,
    size  TEXT[],
    price  INTEGER
);

INSERT INTO products(name,image,size,price) VALUES('sho1','image1',ARRAY['38','39','40'],50);
INSERT INTO products(name,image,size,price) VALUES('sho2','image2',ARRAY['38','39','40'],70);
INSERT INTO products(name,image,size,price) VALUES('sho3','image3',ARRAY['38','39','40'],30);
INSERT INTO products(name,image,size,price) VALUES('sho5','image5',ARRAY['38','39','40'],60);




CREATE TABLE IF NOT EXISTS cart(
  user_id integer REFERENCES users(id),
  product_id  integer REFERENCES products(id),
  PRIMARY KEY (user_id,product_id)
);



COMMIT;
