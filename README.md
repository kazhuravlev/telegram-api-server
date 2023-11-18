# Telegram local API server

This image is allow you to run [local telegram api server](https://github.com/tdlib/telegram-bot-api).

- Read [reference](https://core.telegram.org/api/obtaining_api_id)
- Obtain `api_id`, `api_hash` [here](https://my.telegram.org/)

```shell
docker run -d \
  --name tg-api \
  -p 127.0.0.1:8081:8081 \
  kazhuravlev/telegram-api-server \
    telegram-bot-api \
    --api-id 11111111 \
    --api-hash 00000000001111111111222222222233 \
    --local
```

After that you can connect to this server by changing the address of api servers in your telegram api client.
