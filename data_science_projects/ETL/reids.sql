DROP TABLE IF EXISTS charges;
CREATE TABLE charges (
    id INTEGER, -- implicit primary key
    date STRING,  -- implicit foreign key
    subtotal NUMERIC,
    taxes NUMERIC,
    total NUMERIC,
    payment_id INTEGER -- implicit foreign key
);

DROP TABLE IF EXISTS items;
CREATE TABLE items (
    id INTEGER, -- implicit primary key
    charge_id INTEGER,  -- implicit foreign key
    name STRING,
    price NUMERIC
);

DROP TABLE IF EXISTS payments;
CREATE TABLE payments (
    id INTEGER, -- implicit primary key
    method STRING,
    card_type STRING,
    cardholder STRING,
    last_4_card_number STRING,
    zip STRING
);

DROP TABLE IF EXISTS calendar;
CREATE TABLE calendar (
    date STRING, -- implicit primary key
    day_of_week STRING
);
