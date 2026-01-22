# Task 03 — API testing (Postman) — ReqRes

## Цель
Протестировать REST API в Postman: позитивные и негативные сценарии, проверки HTTP-статусов, базовые проверки структуры ответа и простые автотесты.

## Инструменты
- Postman

## API
- ReqRes: https://reqres.in
- Base URL: `https://reqres.in/api`
- Авторизация: Header `x-api-key`

## Что протестировано
- **Users**: получение списка пользователей, получение пользователя по id, обработка not found  
- **CRUD**: создание, обновление, удаление  
- **Auth**: login/register в текущей версии API с `x-api-key`

> Примечание: в текущем стенде ReqRes с `x-api-key` ответы `/login` и `/register` могут отличаться от классических примеров (например, возвращать `201 Created`). Ожидаемые статусы зафиксированы в `test-cases.md` и соответствуют фактическому поведению.

## Артефакты
- Test cases: `test-cases.md`
- Postman collection: `postman/collection.json`
- Postman environment (example): `postman/environment.json`
- Evidence (screenshots): `evidence/` 

## Структура проекта
```text
task-03-api-postman/
  README.md
  test-cases.md
  postman/
    collection.json
    environment.json
  evidence/
    (screenshots)
```


## Как запустить (Postman)
1. Импортировать коллекцию: **Import > postman/collection.json**
2. Импортировать окружение: **Import > postman/environment.json**
3. Выбрать environment (правый верхний угол Postman).
4. Заполнить переменные окружения:
   - `base_URL = https://reqres.in/api`
   - `apiKey = <your_api_key>`
5. Убедиться, что во всех запросах отправляется заголовок:
   - `x-api-key: {{apiKey}}`
6. Запуск:
   - вручную по запросам (**Send**) или
   - через **Collection Runner** (запуск всей коллекции)

## Что проверяется в Tests
- корректность HTTP статус-кода (200/201/204/404/403)
- наличие ключевых полей в JSON-ответе (например `data`, `id`, `createdAt`, `updatedAt`)
- базовые проверки типа/непустых значений (где применимо)

## Важно (публичный репозиторий)
- Реальный `apiKey` **не хранится в репозитории**
- В `postman/environment.json` ключ должен быть пустым / примером
- Доказательства выполнения — **скриншоты** в `evidence/`
