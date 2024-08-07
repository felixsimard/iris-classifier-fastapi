FROM python:3.12

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# EXPOSE 5000

# CMD ["uvicorn", "--host", "0.0.0.0", "--port", "5000", "iris.app:app"]

# if running behind a TLS load balancer, add --proxy-headers
CMD ["fastapi", "run", "iris/app.py", "--port", "5000"] 