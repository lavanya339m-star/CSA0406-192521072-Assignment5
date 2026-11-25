# B2 – Containerise the Portal

## Files
- `app.py` – minimal demonstration Flask application.
- `requirements.txt` – Python dependencies.
- `Dockerfile` – slim Python image, non-root user and port 8000.
- `docker-compose.yml` – portal plus database example and resource constraints.

## Build and run
```bash
docker build -t university-portal:local .
docker run --rm -p 8000:8000 university-portal:local
```
Open `http://localhost:8000/health` in a browser or run:
```bash
curl http://localhost:8000/health
```

## Compose
```bash
docker compose up --build -d
docker compose ps
docker stats
docker history university-portal:local
docker compose down
```

Check that the database volume is retained when containers are recreated. The Compose resource syntax can vary by Compose implementation; verify the limits actually applied on your installed version.
