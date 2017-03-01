use semenaweb;

/* info table of users genders */
DROP TABLE USERS_GENDER;

CREATE TABLE USERS_GENDER(
 gender_id  INT NOT NULL,
 name VARCHAR(1) NOT NULL,
 PRIMARY KEY (gender_id)
);

/* table of users */
DROP TABLE USERS;

CREATE TABLE USERS(
 user_id  INT NOT NULL,
 sec_name VARCHAR(30) NOT NULL,
 first_name VARCHAR(20) NOT NULL,
 third_name VARCHAR(20),
 email VARCHAR(30) NOT NULL,
 phones VARCHAR(40) NOT NULL,
 discount DECIMAL NOT NULL,
 birthday DATE,
 gender_id INT,
 country VARCHAR(20),
 region VARCHAR(30),
 area VARCHAR(30),
 city VARCHAR(30),
 PRIMARY KEY (user_id),
 FOREIGN KEY (gender_id) REFERENCES USERS_GENDER (gender_id)
);

/* table of users authorization */
DROP TABLE USERS_AUTHORIZATION;

CREATE TABLE USERS_AUTHORIZATION(
 user_id  INT NOT NULL,
 login VARCHAR(25) NOT NULL,
 passwd_hash VARCHAR(25) NOT NULL,
 PRIMARY KEY (user_id),
 FOREIGN KEY (user_id) REFERENCES USERS (user_id)
);



/* info table of delivery services */
DROP TABLE DELIVERY_SERVICES;

CREATE TABLE DELIVERY_SERVICES(
 delivery_id INT NOT NULL,
 name VARCHAR(30) NOT NULL,
 collect_avail INT NOT NULL,
 PRIMARY KEY (delivery_id)
);

/* info table of delivery statuses */
DROP TABLE DELIVERY_STATUSES;

CREATE TABLE DELIVERY_STATUSES(
 status_id INT NOT NULL,
 status VARCHAR(30) NOT NULL, 
 PRIMARY KEY (status_id)
);

/* info table of available product locations */
DROP TABLE PRODUCT_LOCATIONS;

CREATE TABLE PRODUCT_LOCATIONS(
 location_id INT NOT NULL,
 name VARCHAR(15) NOT NULL,
 PRIMARY KEY (location_id)
);

/* table of invoices */
DROP TABLE INVOICES;

CREATE TABLE INVOICES( 
 order_id INT NOT NULL,
 user_id  INT NOT NULL,  
 order_date DATE NOT NULL,
 paid_date DATE NOT NULL,
 sent_date DATE NOT NULL,
 discount DECIMAL(6,2),
 pay DECIMAL(6,2) NOT NULL,
 status_id INT NOT NULL,
 sec_name VARCHAR(30) NOT NULL,
 first_name VARCHAR(20) NOT NULL,
 third_name VARCHAR(20),
 phone VARCHAR(40) NOT NULL, 
 source_id INT NOT NULL,
 destination_id INT NOT NULL,
 current_loc_id INT,
 delivery_id INT NOT NULL,
 delivery_office INT NOT NULL,
 prepayment BOOLEAN,
 declaration VARCHAR(30),
 add_info_u TEXT,
 add_info_m TEXT,
 PRIMARY KEY (order_id),
 FOREIGN KEY (user_id) REFERENCES USERS (user_id),
 FOREIGN KEY (delivery_id) REFERENCES DELIVERY_SERVICES (delivery_id),
 FOREIGN KEY (status_id) REFERENCES DELIVERY_STATUSES (status_id),
 FOREIGN KEY (source_id) REFERENCES PRODUCT_LOCATIONS (location_id),
 FOREIGN KEY (destination_id) REFERENCES PRODUCT_LOCATIONS (location_id),
 FOREIGN KEY (current_loc_id) REFERENCES PRODUCT_LOCATIONS (location_id)
);

/* info table of manufactures */
DROP TABLE MANUFACTURES;

CREATE TABLE MANUFACTURES(
 manufact_id INT NOT NULL,
 name VARCHAR(50) NOT NULL,
 address VARCHAR(100) NOT NULL,
 PRIMARY KEY (manufact_id)
);

/* table describe one product */
DROP TABLE A_PRODUCT;

CREATE TABLE A_PRODUCT(
 product_id INT NOT NULL,
 parent_id INT,
 name VARCHAR(30) NOT NULL,
 PRIMARY KEY (product_id),
 FOREIGN KEY (parent_id) REFERENCES A_PRODUCT (product_id)
);

/* info table of packages */
DROP TABLE PACKAGES;

CREATE TABLE PACKAGES(
 package_id INT NOT NULL,
 name VARCHAR(20) NOT NULL,
 PRIMARY KEY (package_id)
);

/* info table of packing */
DROP TABLE PACKINGS;

CREATE TABLE PACKINGS(
 packing_id INT NOT NULL,
 weight DECIMAL(6,2),
 amount INT,
 package_id INT NOT NULL,
 PRIMARY KEY (packing_id),
 FOREIGN KEY (package_id) REFERENCES PACKAGES (package_id)
);

/* table of exist products */
DROP TABLE PRODUCTS;

CREATE TABLE PRODUCTS(
 barcode VARCHAR(15) NOT NULL,
 manufact_id INT NOT NULL,
 product_id INT NOT NULL,
 packing_id INT NOT NULL,
 price DECIMAL(6,2) NOT NULL,
 PRIMARY KEY (barcode),
 FOREIGN KEY (manufact_id) REFERENCES MANUFACTURES (manufact_id),
 FOREIGN KEY (product_id) REFERENCES A_PRODUCT (product_id),
 FOREIGN KEY (packing_id) REFERENCES PACKINGS (packing_id)
);

/* table of orders */
DROP TABLE AN_ORDER;

CREATE TABLE AN_ORDER(
 id INT NOT NULL,
 order_id INT NOT NULL,
 barcode VARCHAR(15) NOT NULL,
 price DECIMAL(6,2) NOT NULL,
 amount INT NOT NULL,
 PRIMARY KEY (id),
 FOREIGN KEY (barcode) REFERENCES PRODUCTS (barcode),
 FOREIGN KEY (order_id) REFERENCES INVOICES (order_id)
);

/* info table of providers */
DROP TABLE PROVIDERS;

CREATE TABLE PROVIDERS(
 provider_id INT NOT NULL,
 name VARCHAR(50) NOT NULL,
 address VARCHAR(100) NOT NULL,
 PRIMARY KEY (provider_id)
);

/* link table products-providers */
DROP TABLE PRODUCT_PROVIDER;

CREATE TABLE PRODUCT_PROVIDER(
 id INT NOT NULL,
 product_id INT NOT NULL,
 provider_id INT NOT NULL,
 PRIMARY KEY (id),
 FOREIGN KEY (product_id) REFERENCES A_PRODUCT (product_id),
 FOREIGN KEY (provider_id) REFERENCES PROVIDERS (provider_id)
);

/* info table of products availability on different locations */
DROP TABLE AVAILABILITY;

CREATE TABLE AVAILABILITY(
 id INT NOT NULL,
 location_id INT NOT NULL,
 barcode VARCHAR(15) NOT NULL,
 amount INT NOT NULL,
 PRIMARY KEY (id),
 FOREIGN KEY (location_id) REFERENCES PRODUCT_LOCATIONS (location_id),
 FOREIGN KEY (barcode) REFERENCES PRODUCTS (barcode)
);







