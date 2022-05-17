CREATE TABLE TB_USER
(
	userID VARCHAR(20) unique not null,
    userName VARCHAR(15) not null,
    userPassword VARCHAR(20) not null,
    userNickName VARCHAR(15) unique not null,
    userPhoneNo CHAR(9) unique not null,
    userSchool VARCHAR(15) unique not null,
    userDate Date,
    userWrite INT,
    userAdopt INT,
    primary key(userID)
); 

/*
CREATE TABLE TB_MANAGER 
(
	managerID VARCHAR(11) unique not null,
    managerName VARCHAR(15) not null,
    managerRegistNo CHAR(13) unique not null,
    managerPhoneNo CHAR(9) unique not null,
    primary key(managerID)
);

drop table TB_MANAGER;
*/

CREATE TABLE TB_POSTKIND 
(
	postCode CHAR(2) unique not null,
    postName VARCHAR(10) unique,
    primary key(postCode)
);

CREATE TABLE TB_POST
(
	postID VARCHAR(11) unique not null, 
    categoryID CHAR(3) not null,
    postCode CHAR(2) not null,
    postNumber INT not null,
    postTitle VARCHAR(20) not null,
    userID VARCHAR(20),
    writeDate DATE,
    NumberView INT,
    primary key(postID),
    foreign key(postCode) references TB_POSTKIND(postCode),
    foreign key(categoryID) references TB_CATEGORY(categoryID),
    foreign key(userID) references TB_USER(userID)
);


CREATE TABLE TB_CATEGORY 
(
	categoryID CHAR(3) unique not null,
    categoryName VARCHAR(10),
    primary key(categoryID)
);

CREATE TABLE TB_COMMNET
(
	commentID VARCHAR(11) unique not null,
    postID VARCHAR(11) not null,
    userID VARCHAR(11) not null,
    writeDate date,
    goodNo INT,
    primary key(commentID),
    foreign key(postID) references TB_POST(postID),
    foreign key(userID) references TB_USER(userID)
)

