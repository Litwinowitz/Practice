CREATE TABLE user
(

    name VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    id INTEGER PRIMARY KEY

);
CREATE TABLE post
(
    id INTEGER PRIMARY KEY,
    creator_id INT NOT NULL,
    FOREIGN KEY (creator_id) REFERENCES user (id),
    title VARCHAR(30) NOT NULL ,
    text VARCHAR(2000) NOT NULL,
    photo_url VARCHAR(200),
    likes INT NOT NULL default 0,
    created_at DATE NOT NULL ,
    modified_at DATE NOT NULL,

);
CREATE TABLE log
(
    id INTEGER PRIMARY KEY,
    error_message VARCHAR(50) NOT NULL default '',
    date_at date NOT NULL,
    error_code int NOT NULL
);
INSERT INTO user VALUES ('Lain','PresentTimesPresentDays', '101010');
INSERT INTO post VALUES ('8462','101010','Kioto','Magnificent view!','IMG869.jpg','823','2019-03-06','2019-03-06');
INSERT INTO log VALUES ('1','e1','2021-1-1','1');