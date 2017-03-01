use semenaweb;

INSERT INTO USERS_GENDER(gender_id, name) VALUES (0, 'F');
INSERT INTO USERS_GENDER(gender_id, name) VALUES (1, 'M');

INSERT INTO USERS(user_id, sec_name, first_name, third_name, email, phones, discount, birthday, gender_id, country, region, area, city) VALUES 
(1, '���஢', '����', '���஢��', 'peter@bk.ru', '380502103706', '0', NULL, 1, '��ࠨ��', '����᪠�', '�஢��᪮�', '�஢���');
INSERT INTO USERS(user_id, sec_name, first_name, third_name, email, phones, discount, birthday, gender_id, country, region, area, city) VALUES 
(2, '����஢', '����', '���஢��', 'oleg@gmail.com', '3806741903706', '0', NULL, 1, '��㧨�', '', '', '������');

INSERT INTO USERS_AUTHORIZATION(user_id, login, passwd_hash) VALUES (1, 'Peter', 'asdf5gfG54fh');
INSERT INTO USERS_AUTHORIZATION(user_id, login, passwd_hash) VALUES (2, 'Oleg', 'g3456f6364fh');

INSERT INTO DELIVERY_SERVICES(delivery_id, name, collect_avail) VALUES (1, '����� ����', 1);
INSERT INTO DELIVERY_SERVICES(delivery_id, name, collect_avail) VALUES (2, '�������', 0);
INSERT INTO DELIVERY_SERVICES(delivery_id, name, collect_avail) VALUES (3, '��⠩�', 0);
INSERT INTO DELIVERY_SERVICES(delivery_id, name, collect_avail) VALUES (4, '��௮��', 0);

INSERT INTO DELIVERY_STATUSES(status_id, status) VALUES (1, '����');
INSERT INTO DELIVERY_STATUSES(status_id, status) VALUES (2, '���⢥ত��');
INSERT INTO DELIVERY_STATUSES(status_id, status) VALUES (3, '�⪫����');
INSERT INTO DELIVERY_STATUSES(status_id, status) VALUES (4, '��।�� ��ॢ��稪�');
INSERT INTO DELIVERY_STATUSES(status_id, status) VALUES (5, '����祭');
INSERT INTO DELIVERY_STATUSES(status_id, status) VALUES (6, '��ࠢ���');
INSERT INTO DELIVERY_STATUSES(status_id, status) VALUES (7, '�믮����');

INSERT INTO PRODUCT_LOCATIONS(location_id, name) VALUES (1, '���ॡ�⥫�');
INSERT INTO PRODUCT_LOCATIONS(location_id, name) VALUES (2, '�����');
INSERT INTO PRODUCT_LOCATIONS(location_id, name) VALUES (3, '������� 1');
INSERT INTO PRODUCT_LOCATIONS(location_id, name) VALUES (4, '������� 2');

INSERT INTO INVOICES(user_id, order_id, order_date, paid_date, sent_date, discount, pay, status_id, sec_name, first_name, third_name, phone, add_info_u, source_id, destination_id, delivery_id, delivery_office, prepayment) VALUES 
(2, 1, '98-12-31', '00-00-00', '00-00-00', 5.0, 125.65, 1, '����஢', '����', '���஢��', '3806741903706', '���⠢�� �� ����', 2, 1, 2, 12, 1);
INSERT INTO INVOICES(user_id, order_id, order_date, paid_date, sent_date, discount, pay, status_id, sec_name, first_name, third_name, phone, add_info_u, source_id, destination_id, delivery_id, delivery_office, prepayment) VALUES 
(1, 2, '85-11-14', '00-00-00', '00-00-00', 3.0, 220.50, 2, '���஢', '����', '���஢��', '380502103706', '���⠢�� �� ᪫���', 3, 1, 3, 8, 0);
INSERT INTO INVOICES(user_id, order_id, order_date, paid_date, sent_date, discount, pay, status_id, sec_name, first_name, third_name, phone, add_info_u, source_id, destination_id, delivery_id, delivery_office, prepayment) VALUES 
(1, 3, '98-10-20', '00-00-00', '00-00-00', 5.0, 135.80, 5, '����஢', '����', '���஢��', '3806741903706', '���⠢�� �� ����', 2, 1, 2, 12, 1);

INSERT INTO MANUFACTURES(manufact_id, name, address) VALUES (1, '�ਬ㫠', '��୨���, ��.������, 50');
INSERT INTO MANUFACTURES(manufact_id, name, address) VALUES (2, '������ ��ࠨ��', '����, �஢��᪮� ��ᯥ��, 35');

INSERT INTO A_PRODUCT(product_id, parent_id, name) VALUES (1, NULL, '����');
INSERT INTO A_PRODUCT(product_id, parent_id, name) VALUES (2, 1, '�����');
INSERT INTO A_PRODUCT(product_id, parent_id, name) VALUES (3, 2, '�����');
INSERT INTO A_PRODUCT(product_id, parent_id, name) VALUES (4, 1, '�������');
INSERT INTO A_PRODUCT(product_id, parent_id, name) VALUES (5, 4, '᫨���');

INSERT INTO PACKAGES(package_id, name) VALUES (1, '�����쪠�');
INSERT INTO PACKAGES(package_id, name) VALUES (2, '�।���');
INSERT INTO PACKAGES(package_id, name) VALUES (3, '������');

INSERT INTO PACKINGS(packing_id, weight, amount, package_id) VALUES (1, 100, NULL, 1);
INSERT INTO PACKINGS(packing_id, weight, amount, package_id) VALUES (2, 200, NULL, 2);
INSERT INTO PACKINGS(packing_id, weight, amount, package_id) VALUES (3, 500, NULL, 3);
INSERT INTO PACKINGS(packing_id, weight, amount, package_id) VALUES (4, NULL, 50, 1);

INSERT INTO PRODUCTS(barcode, manufact_id, product_id, packing_id, price) VALUES (0000000000001, 1, 3, 1, 2.50);
INSERT INTO PRODUCTS(barcode, manufact_id, product_id, packing_id, price) VALUES (0000000000002, 1, 3, 2, 5.00);
INSERT INTO PRODUCTS(barcode, manufact_id, product_id, packing_id, price) VALUES (0000000000003, 1, 3, 3, 6.80);
INSERT INTO PRODUCTS(barcode, manufact_id, product_id, packing_id, price) VALUES (0000000000004, 2, 5, 4, 4.55);

INSERT INTO AN_ORDER(id, order_id, barcode, price, amount) VALUES (1, 1, 0000000000001, 2.25, 5);
INSERT INTO AN_ORDER(id, order_id, barcode, price, amount) VALUES (2, 1, 0000000000002, 4.75, 8);
INSERT INTO AN_ORDER(id, order_id, barcode, price, amount) VALUES (3, 1, 0000000000003, 6.50, 4);
INSERT INTO AN_ORDER(id, order_id, barcode, price, amount) VALUES (4, 2, 0000000000002, 2.25, 3);

INSERT INTO PROVIDERS(provider_id, name, address) VALUES (1, '�����', '��୨���, ��.������, 50');
INSERT INTO PROVIDERS(provider_id, name, address) VALUES (2, '����ᥬ����', '����, ��.���, 25');
INSERT INTO PROVIDERS(provider_id, name, address) VALUES (3, '���⭠ᨭ��', '�����, �.��ਡ�ᮢ᪠�, 10');

INSERT INTO PRODUCT_PROVIDER(id, product_id, provider_id) VALUES (1, 3, 1);
INSERT INTO PRODUCT_PROVIDER(id, product_id, provider_id) VALUES (2, 3, 2);
INSERT INTO PRODUCT_PROVIDER(id, product_id, provider_id) VALUES (3, 3, 3);
INSERT INTO PRODUCT_PROVIDER(id, product_id, provider_id) VALUES (4, 5, 1);

INSERT INTO AVAILABILITY(id, location_id, barcode, amount) VALUES (1, 2, 0000000000001, 500);
INSERT INTO AVAILABILITY(id, location_id, barcode, amount) VALUES (2, 3, 0000000000001, 50);
INSERT INTO AVAILABILITY(id, location_id, barcode, amount) VALUES (3, 4, 0000000000001, 37);
INSERT INTO AVAILABILITY(id, location_id, barcode, amount) VALUES (4, 2, 0000000000002, 450);
INSERT INTO AVAILABILITY(id, location_id, barcode, amount) VALUES (5, 3, 0000000000002, 75);
INSERT INTO AVAILABILITY(id, location_id, barcode, amount) VALUES (6, 4, 0000000000002, 28);



