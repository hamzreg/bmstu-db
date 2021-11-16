CREATE TABLE if not exists wines
(
    id         SERIAL       PRIMARY KEY,
    color      VARCHAR(5)   NOT NULL,
    sugar      VARCHAR(10)  NOT NULL,
    sort       VARCHAR(40)  NOT NULL,
    acidity    FLOAT        NOT NULL,
    aging      INTEGER      NOT NULL
);


CREATE TABLE if not exists customers
(
    id              SERIAL         PRIMARY KEY,
    first_name      VARCHAR(100)   NOT NULL,
    last_name       VARCHAR(100)   NOT NULL,
    age             INTEGER        NOT NULL,
    card            BOOLEAN        NOT NULL,
    bonuses         INTEGER        NOT NULL
);


CREATE TABLE if not exists manufactures
(
    id           SERIAL         PRIMARY KEY,
    name         VARCHAR(100)   NOT NULL,
    country      VARCHAR(40)    NOT NULL,
    experience   INTEGER        NOT NULL,
    price        INTEGER        NOT NULL,
    rating       INTEGER        NOT NULL
);


CREATE TABLE if not exists sales
(
    id              SERIAL              PRIMARY KEY,
    wine_id         SERIAL REFERENCES   wines(id),
    manufacture_id  SERIAL REFERENCES   manufactures(id),
    customer_id     SERIAL REFERENCES   customers(id),
    price           INTEGER             NOT NULL,
    profit          INTEGER             NOT NULL
);
