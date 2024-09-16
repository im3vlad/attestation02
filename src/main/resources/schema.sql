--создание таблицы покупателя --
create table if not exists "User"(
                                     id serial primary key ,
                                     firstName_lastName varchar
);
--создание таблицы товара --
create table if not exists Product(
                                      id serial primary key ,
                                      productName varchar[30] NOT NULL,
                                      price integer,
                                      count integer
);
--создание таьлицы заказа где ссылается на id покупателя и товара--
create table if not exists "Order"(
                                      id serial primary key default 1,
                                      productId integer references "User" (id),
                                    userId integer references Product(id),
                                      time varchar
);
--заполнение таблицы покупателей
insert into "User"(id, firstName_lastName) values (1,'{Самсонов Олег}'),
                                                  (2,'{Друлис Андрей}'),
                                                  (3,'{Рингов Стринг}'),
                                                  (4,'{Андроний Максим}'),
                                                  (5,'{Двухглавиус Антон}'),
                                                  (6,'{Смирнов Сергей}'),
                                                  (7,'{Серега Серега}'),
                                                  (8,'{Поваров Дмитрий}'),
                                                  (9,'{Мизинец Пенн}'),
                                                  (10,'{Таргариен Дейнерис}');
--заполнение таблицы товара
insert into Product(id, productName, price, count) values (1,'{SU7}',23 , 1),
                                                          (2,'{x23}', 100, 45),
                                                          (3,'{iphoneXPRo}', 12, 329),
                                                          (4,'{beluga}', 15, 23),
                                                          (5,'{door}', 5, 10),
                                                          (6,'{throne}', 25, 1);
--заполнение таблицы заказов
insert into "Order"(productId, userId, time) values
                                                 (2,2,CURRENT_TIME),
                                                 (3,2,CURRENT_TIME),
                                                 (10,6,current_time),
                                                 (8,3,current_time),
                                                 (9,4,current_time),
                                                 (5,5,current_time),
                                                 (7,4,current_time);
