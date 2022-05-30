# 데이터 베이스 설계

1. 데이터 베이스 설계
- TB_USER(회원 테이블)
    
    속성 분류 | 속성 | 설명 | 자료형, 특징
    --------|------|-----|----|
    PK 속성| # userID | 회원 아이디 | VARCHAR(20), unique
    일반 속성 | * userName | 회원 이름| VARCHAR(15)
    일반 속성 | * userPassword | 회원 비밀번호 | VARCHAR(20)
    일반 속성 | * userNickName | 회원 닉네임 | VARCHAR(15), unique
    일반 속성 | * userPhoneNo | 회원 전화번호 | CHAR(9), unique
    일반 속성 | * userSchool | 회원 학적정보 | VARCHAR(15)
    일반 속성 | * userDate | 가입날짜 | DATE
    일반 속성 |ㆍ userWrite | 작성글개수 | INT
    일반 속성 |ㆍuserAdopt | 채택글개수 | INT

    <br>

    - TB_MANAGER (관리자 테이블)

    속성 분류 | 속성 | 설명 | 자료형, 특징
    --------|------|-----|----|
    PK 속성 | # managerID | 관리자번호 | VARCHAR(11), unique
    일반 속성 | * managerName | 관리자 이름 | VARCHAR(15)
    일반 속성 | * managerRegistNo | 관리자 주민번호 | CHAR(13), unique
    일반 속성 | * managerPhoneNo | 관리자 전화번호 | CHAR(9), unique

    <br>

    - TB_POSTKIND (게시글종류 테이블)

    속성 분류 | 속성 | 설명 | 자료형, 특징
    --------|------|-----|----|
    PK 속성 | # postCode | 게시글 종류코드 | IDCHAR(2)
    일반 속성 | ㆍ postName | 게시글 종류이름 | VARCHAR(10)
    
    <br>

    - TB_POST (게시글 테이블)

    속성 분류 | 속성 | 설명 | 자료형, 특징
    --------|------|-----|----|
    PK 속성 | # postID | 게시글 고유번호 | VARCHAR(11),unique
    파생 속성(FK) | * categoryID | 카테고리 ID(FK_카테고리_카테고리ID) | CHAR(3)
    파생 속성(FK) | * postCode | 게시글 종류코드(FK_게시글종류_게시글종류ID) | CHAR(2)
    일반 속성 | * postNumber | 게시글 번호 | INT
    일반 속성 | * postTitle | 게시글 제목 | VARCHAR(20)
    파생 속성(FK) | * userID | 작성자 (FK_회원_회원아이디) | VARCHAR(20)
    일반 속성 | * writeDate | 날짜 | DATE
    일반 속성 |ㆍNumberView | 조회수 | INT 
    파생 속성 |ㆍmanagerID | (공지사항) 관리자번호 | VARCHAR(11)

    <br>

    - TB_CATEGORY (카테고리 테이블)

    속성 분류 | 속성 | 설명 | 자료형, 특징
    --------|------|-----|----|
    PK 속성 | # categoryID | 카테고리ID | CHAR(3)
    일반 속성 | ㆍcategoryName | 카테고리명 | VARCHAR(10)

    <br>

    - TB_COMMENT (댓글 테이블)

    속성 분류 | 속성 | 설명 | 자료형, 특징
    --------|------|-----|----|
    PK 속성 | # commentID | 댓글 고유 번호 | VARCHAR(11) 
    파생 속성(FK) | * postID | 게시글 고유 번호(FK_게시글_게시글 고유번호) | VARCHAR(11)
    파생 속성(FK) | * userID | 댓글 작성자 (FK_회원_회원아이디) | INT
    일반 속성 | * writeDate | 작성날짜 | DATE
    일반 속성 |ㆍgoodNo | 좋아요 개수 | INT
    파생 속성 |ㆍmanagerID | (공지사항) 관리자번호 | VARCHAR(11)

<BR>

2. 데이터베이스 E-R Diagram
 - 1차

    ![ERDIA_3](https://user-images.githubusercontent.com/81462623/168704228-81c8251c-adb4-4794-87fe-06a807dae188.png)
 - 2차
    - 사용자 ROLE 테이블을 삭제하고 가입한 사용자에게 직접 ROLE을 부여(default ‘user’)
    - 사용자 테이블의 전화번호(PhoneNo) 삭제
    - 사용자, 게시글, 댓글에 고유 코드를 INT로 부여
        - 가변형 값 varchar로 인한 공간 확보 문제를 해결하기 위해 PK는 주로 INT를 사용
    - 게시글의 종류 POSTKIND 테이블을 삭제하고 게시글에 직접 POSTKIND를 부여
    - 날짜형 변수 모두 DATETIME으로 변환

    ![ERDIA_4](https://user-images.githubusercontent.com/81462623/170963620-1e8beb1f-6b37-40da-9cbc-79b5f98878b8.png)
