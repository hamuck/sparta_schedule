CREATE TABLE Schedule(
    scheduleId integer not null primary key,
    userId integer not null foreign key,
    schedulePassword varchar not null,
    createAt datetime not null,
    updateAt datetime not null,
    title varchar not null,
    content varchar(500)
);

CREATE TABLE User(
    userId integer not null primary key,
    username varchar not null,
    usermail varchar
);

INSERT INTO Schedule(
    values (1, 1, "비밀번호", "2024-10-24T14:55:00Z", "2024-10-24T14:55:00Z", "제목", "내용")
);

INSERT INTO User(
    values(1, "사용자명", "usermail@usermail.com")
);

SELECT * FROM Schedule;

SELECT * FROM Schedule WHERE DATE(updateAt) = "2024-10-24";
SELECT * FROM Schedule WHERE username "사용자명";

UPDATE Schedule SET title = '수정 제목' WHERE username = "사용자명";

DELETE FROM Schedule WHERE username = "사용자명";

