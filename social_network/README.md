# Инструкция по использованию API проекта социальной сети

## 1 Установка и настройка проекта

В файле settings.py из папки social_network настройте блок кода:

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'diplom_khan_anna',
        'USER': 'postgres',
        'PASSWORD': 'postgres',
    }
}
```
* в строке 'NAME' укажите название базы данных Postgre SQL где предполагается размещать данные проекта.
* в строке 'USER' укажите пользователя базы данных Postgre SQL.
* в строке 'PASSWORD' укажите соответственно пароль пользователя базы данных Postgre SQL.

после чего выполните команды:
```python
$ python manage.py migrate # создает базу данных
$ python manage.py runserver # запускает проект
```
## 2 API запросы с примерами

### 2.1 Отправка и обновление поста
Для отправки требуется получить токен авторизации в панели администратора ресурса: <адрес сервера>/admin
Токен авторизации необходимо передавать в заголовке запроса в поле Authorization.
Запрос следует направлять на url:
#### http://< Ваш IP:Port или домен >/post_create/
Вот пример запроса curl со стороны клиента на добавление поста:
```php
curl --location --request PUT 'http://127.0.0.1:8000/post_create/' \
--header 'Authorization: Token 71257dfc2d9c2489033c5cc30b32e37446adbef5' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'image="/posts/media/1_1.jpg"' \
--data-urlencode 'text="пример текста"' \
--data-urlencode 'id=1' \
--data-urlencode 'author_id=1' \
--data-urlencode 'author=1'
```
нужно передавать поля:
* id - ИД поста тип Число
* text - Текст поста тип Строка
* author_id - ИД автора поста тип Число
* author - ИД автора поста тип Число
* image - Путь к картинке загруженной в проект тип Строка

Запрос на изменение поста нужно отправиль на url:
#### http://< Ваш IP:Port или домен >/post_update/< ИД поста в базе >/

Вот пример запроса со стороны клиента http.client на изменение поста:
```php
curl --location 'http://127.0.0.1:8000/post_update/1/' \
--header 'Authorization: Token 71257dfc2d9c2489033c5cc30b32e37446adbef5' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'id=1' \
--data-urlencode 'text="Changed text"' \
--data-urlencode 'image="/posts/media/test_image.jpg' \
--data-urlencode 'author=1'
```
Состав полей тот же

### 2.2 Отправка и обновление комментария
Комментарии отправляются по аналогии с постами. Токен авторизации также необходимо передавать в заголовке запроса в поле Authorization.

Запрос следует направлять на url:
#### http://< Ваш IP:Port или домен >/comment/
Пример запроса со стороны клиента на создание комментария в curl:
```php
curl --location --request PUT 'http://127.0.0.1:8000/comment/' \
--header 'Authorization: Token 71257dfc2d9c2489033c5cc30b32e37446adbef5' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'post=3' \
--data-urlencode 'text="my fitrst comment"' \
--data-urlencode 'author=1'
```
Как видно из примера в случае с комментарием нужно передавать поля:
* post - ИД поста тип Число
* text - Текст комментария тип Строка
* author - ИД автора комментария тип Число

Для обновления поста нужнот передать те же поля и дополнительно поле author_id тип Число.

Запрос следует направлять на url:
#### http://< Ваш IP:Port или домен >/comment/< ИД комментария в базе >/

Вот пример запроса в curl: 

```php
curl --location 'http://127.0.0.1:8000/comment_update/1/' \
--header 'Authorization: Token 71257dfc2d9c2489033c5cc30b32e37446adbef5' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'post=3' \
--data-urlencode 'text="my changed first comm"' \
--data-urlencode 'author=1' \
--data-urlencode 'author_id=1'
```
### 2.3 Отправка лайка

Для отправки лайка нужно передать запрос на адрес:
#### http://< Ваш IP:Port или домен >/like/
Токен авторизации необходимо передавать в заголовке запроса в поле Authorization.
Вот пример запроса в curl: 

```php
curl --location --request PUT 'http://127.0.0.1:8000/like/' \
--header 'Authorization: Token 71257dfc2d9c2489033c5cc30b32e37446adbef5' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'post=3' \
--data-urlencode 'author=1'
```
В запросе нужно передавать поля:
* post - ИД поста тип Число
* author - ИД автора комментария тип Число

### 2.4 Получение деталей по посту методом GET

Для получения детальной информации по нужному посту необходимо отправить запрос на адрес:
#### http://< Ваш IP:Port или домен >/post_info/< ИД поста в базе >/
Достаточно отправить только токен авторизации заголовке запроса в поле Authorization.

Пример запроса в curl:

```php
curl --location 'http://127.0.0.1:8000/post_info/3/' \
--header 'Authorization: Token 71257dfc2d9c2489033c5cc30b32e37446adbef5'
```

В ответ получаем json:

```json
{
    "id": 3,
    "text": "\"пример текста\"",
    "image": "\"/posts/media/1_1.jpg\"",
    "created_at": "2024-05-30",
    "comments": [
        {
            "author": 1,
            "text": "",
            "created_at": "2024-05-31T19:04:25.493903Z"
        },
        {
            "author": 1,
            "text": "\"my changed first comm\"",
            "created_at": "2024-05-31T18:58:13.689645Z"
        },
        {
            "author": 1,
            "text": "\"my fitrst comment\"",
            "created_at": "2024-05-31T18:39:44.396753Z"
        }
    ],
    "likes_count": 3
}
```


