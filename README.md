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

**Request**

```json
{
"scheduleId" : "1",
"password" : "비밀번호",
"username" : "작성자 명",
"createAt": "2024-10-24T14:55:00Z",
"updateAt": "2024-10-25T09:30:00Z",
"title" : "제목",
"content" : "내용"
}
```
|메서드|요청 URL|
|---|---|
|POST|http://{SERVER_URL}/api/schedules|


|  파라미터 |타입   | 필수여부  | 설명  |
|---|---|---|---|
| scheduleId|Integer| 필수  | 일정 고유 번호  |
| password  | String  | 필수  | 일정 비밀 번호  | 
|  username | String  | 필수  |  일정 작성자 이름 |
|  createAt | DateTime  | 필수  | 작성 날짜  |
| updateAt | DateTime | 필수 | 수정 날짜 |
| title | String | 필수 | 일정 제목|
| content | String | 선택 | 일정 상세 내용|

**Request**
```json
{
"scheduleId" : "1"
}
```

|  파라미터 |타입   | 필수여부  | 설명  |
|---|---|---|---|
| scheduleId|Integer| 필수  | 일정 고유 번호  |


---

## 일정 목록 조회
일정 목록을 조회합니다.

**Request**
```json
{
"page" : "1",
"size" : "10",
"createAt" : "2024-10-24",
"username" : "작성자 명"
}
```

|메서드|요청 URL|
|---|---|
|GET|http://{SERVER_URL}/api/schedules|

|  파라미터 |타입   | 필수여부  | 설명  |
|---|---|---|---|
| page|Integer| 선택  | 페이지 번호  |
|size | Integer| 선택 | 한 페이지 당 표시되는 일정 개수|
| createAt | DateTime | 선택 | 수정 날짜 |
| username | String | 선택 | 일정 작성자 이름|

**Response**
```json
{
"page" : "1",
"size" : "10",
"totalPage" : "15",
"totalCount" : "150",
"data" : [
  {
  "scheduleId" : "1",
  "title" : "제목1",
  "content" : "내용1"
  },
{
  "schedulId" : "2",
  "title" : "제목2",
  "content" : "내용2"
  }
]
}
```
|  파라미터 |타입   | 필수여부  | 설명  |
|---|---|---|---|
| page|Integer| 필수  | 페이지 번호  |
| size  | Integer  | 필수  | 한 페이지 당 표시되는 일정 개수  | 
|  totalPage | Integer  | 필수  |  전체 페이지 수 |
|  totalCount | Integer  | 필수  | 전체 포스트 수  |
| data | Integer | 필수 | 일정 목록 |
| schedulId | Integer | 필수 | 일정 고유 번호|
| title | String | 필수 | 일정 제목|
|content| String | 필수 | 일정 상세 내용|

**Request**
```json
{
"scheduleId" : "1"
}
```

|  파라미터 |타입   | 필수여부  | 설명  |
|---|---|---|---|
| scheduleId|Integer| 필수  | 일정 고유 번호  |

---

## 선택 일정 조회
선택한 일정의 상세 내역을 조회합니다.

**Request**
```json
{
"scheduleId" : "1"
}
```

|메서드|요청 URL|
|---|---|
|GET|http://{SERVER_URL}/api/schedules/{scheduleId}|

|  파라미터 |타입   | 필수여부  | 설명  |
|---|---|---|---|
| scheduleId|Integer| 필수  | 일정 고유 번호  |

**Response**

```json
{
"scheduleId" : "1",
"username" : "작성자 명",
"createAt": "2024-10-24T14:55:00Z",
"updateAt": "2024-10-25T09:30:00Z",
"title" : "제목",
"content" : "내용"
}
```

|  파라미터 |타입   | 필수여부  | 설명  |
|---|---|---|---|
| scheduleId|Integer| 필수  | 일정 고유 번호  | 
|  username | String  | 필수  |  일정 작성자 이름 |
|  createAt | DateTime  | 필수  | 작성 날짜  |
| updateAt | DateTime | 필수 | 수정 날짜 |
| title | String | 필수 | 일정 제목|
| content | String | 선택 | 일정 상세 내용|

---

## 선택 일정 수정
선택한 일정을 수정합니다.

**Request**

```json
{
"scheduleId" : "1",
"password" : "비밀번호",
"username" : "작성자 명",
"updateAt": "2024-10-25T09:30:00Z",
"title" : "제목",
"content" : "내용"
}
```

|메서드|요청 URL|
|---|---|
|PUT|http://{SERVER_URL}/api/schedules/{scheduleId}|


|  파라미터 |타입   | 필수여부  | 설명  |
|---|---|---|---|
| scheduleId|Integer| 필수  | 일정 고유 번호  |
| password  | String  | 필수  | 일정 비밀 번호  | 
|  username | String  | 필수  |  일정 작성자 이름 |
| updateAt | DateTime | 필수 | 수정 날짜 |
| title | String | 필수 | 일정 제목|
| content | String | 선택 | 일정 상세 내용|

**Request**
```json
{
"scheduleId" : "1"
}
```

|  파라미터 |타입   | 필수여부  | 설명  |
|---|---|---|---|
| scheduleId|Integer| 필수  | 일정 고유 번호  |


---

## 선택 일정 삭제
선택한 일정을 삭제합니다.

**Request**

```json
{
"scheduleId" : "1",
"password" : "비밀번호"
}
```

|메서드|요청 URL|
|---|---|
|DELETE|http://{SERVER_URL}/api/schedules/{scheduleId}|


|  파라미터 |타입   | 필수여부  | 설명  |
|---|---|---|---|
| scheduleId|Integer| 필수  | 일정 고유 번호  |
| password  | String  | 필수  | 일정 비밀 번호  | 
