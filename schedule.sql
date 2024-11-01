CREATE TABLE User(
    userId integer not null primary key,
    username varchar(50) not null,
    usermail varchar(50)
);

CREATE TABLE Schedule(
    scheduleId integer not null primary key,
    userId integer not null foreign key,
    schedulePassword varchar(50) not null,
    createAt datetime not null,
    updateAt datetime not null,
    title varchar(100) not null,
    content varchar(500)
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

UPDATE Schedule SET title = '수정 제목' WHERE scheduleId = 1;

DELETE FROM Schedule WHERE scheduleId = 1;

