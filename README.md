# sparta_schedule


---

# API 명세서

|  기능 |Method   | URL  | request  | response|상태코드  |
|---|---|---|---|---|---|
| 일정 생성(등록)|POST| /api/schedules  |요청 body   | 등록정보  |200: 정상 등록 |
| 일정 목록 조회  | GET  |/api/schedules  | 요청 param  |  다건 응답 정보 |200: 정상 조회 |
|  선택 일정 조회 | GET  |/api/schedules/{scheduleId}   |  요청 param | 단건 응답 정보  | 200: 정상 조회|
| 선택 일정 수정  | PUT  | /api/schedules/{scheduleId}  | 요청 body  | 수정 정보  | 200: 정상 수정|
|  선택 일정 삭제 | DELETE  | /api/schedules/{scheduleId}  | 요청 param  | -  | 200: 정상 삭제|

---

## 일정 생성
일정을 생성합니다.

**Request Syntax**

```json
{
"scheduleId" : "1",
"password" : "비밀번호",
"username" : "작성자명",
"createAt": "2024-10-24T14:55:00Z",
"updateAt": "2024-10-25T09:30:00Z",
"title" : "제목",
"content" : "내용"
}
```
|메서드|요청 URL|
|---|---|
|POST|http://{SERVER_URL}/api/schedules|

**Request Elements**

|  파라미터 |타입   | 필수여부  | 설명  |
|---|---|---|---|
| scheduleId|Integer| 필수  | 일정 고유 번호  |
| password  | String  | 필수  | 일정 비밀 번호  | 
|  username | String  | 필수  |  일정 작성자 이름 |
|  createAt | String  | 필수  | 작성 날짜  |
| updateAt | String | 필수 | 수정 날짜 |
| title | String | 필수 | 일정 제목|
| content | String | 선택 | 일정 상세 내용|
