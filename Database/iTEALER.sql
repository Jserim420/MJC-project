CREATE TABLE TB_USER
(
    userCode INT unique not null auto_increment,
	userID VARCHAR(20) unique not null,
    userName VARCHAR(15) not null,
    userPassword VARCHAR(20) not null,
    userNickName VARCHAR(15) unique not null,
    /* userPhoneNo CHAR(9) unique not null, */
    userSchool VARCHAR(15) unique not null,
    role VARCHAR(15) not null default "USER",
    userDate DateTime,
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

/*
CREATE TABLE TB_POSTKIND 
(
	postCode CHAR(2) unique not null,
    postName VARCHAR(10) unique,
    primary key(postCode)
);
drop table TB_POSTKIND
*/

CREATE TABLE TB_POST
(
	postID INT unique not null auto_increment, 
    categoryID CHAR(3) not null,
    postKind VARCHAR(20) not null,
    postNumber INT not null,
    postTitle VARCHAR(20) not null,
    userCode INT,
    writeDate DATETIME,
    NumberView INT,
    primary key(postID),
    foreign key(categoryID) references TB_CATEGORY(categoryID),
    foreign key(userCode) references TB_USER(userCode)
);


CREATE TABLE TB_CATEGORY 
(
	categoryID CHAR(3) unique not null,
    categoryName VARCHAR(10),
    primary key(categoryID)
);

CREATE TABLE TB_COMMNET
(
	commentID INT unique not null auto_increment,
    postID INT not null,
    userID INT not null,
    writeDate DATETIME,
    goodNo INT,
    primary key(commentID),
    foreign key(postID) references TB_POST(postID),
    foreign key(userCode) references TB_USER(userCode)
)

