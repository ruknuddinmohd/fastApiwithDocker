FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir --upgrade -r requirement.txt
CMD [ "uvicorn","main:app","--host", "0.0.0.0", "--port", "8000" ]
