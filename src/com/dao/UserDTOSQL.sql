����Ŭ DB���۽� User Form ��� (�̰� ����ؼ� �����غ� ��)

CREATE TABLE userDTO(
no number CONSTRAINT mem_no_pk primary key,
email varchar2(30) CONSTRAINT mem_email_nn Not Null,
nickname varchar2(20) CONSTRAINT mem_nickname_nn Not Null,
pwd varchar2(30) CONSTRAINT mem_pwd_nn Not Null,
joindate DATE DEFAULT SYSDATE,
karma number DEFAULT 1
);

CREATE SEQUENCE seq_no
start with 1
increment by 1
;
