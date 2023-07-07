# Running with Docker 🐳

Run docker compose

```sh
docker-compose up
```

To stop docker, just run:

```sh
docker-compose down
```


# Running without Docker 🦄

Install dependencies
```sh
pip install -r requirements.txt
```

Run the server
```sh
uvicorn main:app --reload
```