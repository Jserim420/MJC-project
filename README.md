# SERIM
- 백엔드 (Springboot Framework)
    - 게시글목록, 게시글작성, 메인
    
    <br>
    
- 데이터베이스 설계 (MySQL)
    - 회원 테이블 : 회원 정보를 저장하고 관리
        - PK : 아이디
        - 이름, 비밀번호, 닉네임, 전화번호, 학적정보, 가입날짜, 작성글 개수, 채택글개수

    - 관리자 테이블 : 페이지 관리자 정보를 저장하고 관리
        - PK : 관리자번호
        - 이름, 주민번호, 전화번호

    - 게시글종류 테이블 : 게시글 종류 정보를 저장하고 관리
        - PK : 게시글 종류 코드
        - 게시글 종류 이름

    - 게시글 테이블 : 게시글 정보를 저장하고 관리
        - PK : 게시글 고유번호
        - FK : 카테고리ID, 게시글 종류드, 작성자
        - 번호, 제목, 날짜 조회수

    - 카테고리 테이블 : 게시글 카테고리 정보를 저장하고 관리
        - PK : 카테고리ID
        - 카테고리명

    - 댓글 테이블 : 댓글 정보를 저장하고 관리
        - PK : 댓글 고유 번호
        - FK : 게시글 고유 번호, 작성자
        - 작성 날짜, 좋아요 개수
