# README

## API Endpoints

`GET /courses/` displays data for all courses
#### Response
```
[
    {
        "id": 1,
        "name": "test1",
        "release_date": "2021-12-08",
        "created_at": "2021-12-08T04:20:26.946Z",
        "updated_at": "2021-12-08T04:20:26.946Z"
    },
    {
        "id": 2,
        "name": "test2",
        "release_date": "2021-12-10",
        "created_at": "2021-12-08T04:20:38.004Z",
        "updated_at": "2021-12-08T04:20:38.004Z"
    },
    {
        "id": 3,
        "name": "test3",
        "release_date": "2022-01-01",
        "created_at": "2021-12-08T04:20:55.541Z",
        "updated_at": "2021-12-08T04:20:55.541Z"
    }
]                                   
```

`GET /courses/:id` displays data for a specific course using an id
#### Response
```
{
    "id": 1,
    "name": "course1",
    "release_date": "2021-12-08",
    "created_at": "2021-12-08T16:27:04.480Z",
    "updated_at": "2021-12-08T16:27:04.480Z"
}                                     
```

`POST /courses/` creates a new course with a name and release date
#### Response
```
{
    "id": 4,
    "name": "new_course",
    "release_date": "2022-01-01",
    "created_at": "2021-12-08T16:34:24.496Z",
    "updated_at": "2021-12-08T16:34:24.496Z"
}                                      
```

`PUT /courses/:id` updates data for specific course using an id
#### Response
```
{
    "name": "updated_course",
    "release_date": "2021-12-31",
    "id": 4,
    "created_at": "2021-12-08T16:34:24.496Z",
    "updated_at": "2021-12-08T16:35:20.879Z"
}                                   
```

`DELETE /courses/:id` deletes specific course using an id
#### Response
                                 
```
{}
```