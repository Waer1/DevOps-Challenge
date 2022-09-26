FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN apk --update add redis && pip install -r requirements.txt
ENV ENVIRONMENT=DEV
ENV HOST=localhost
ENV PORT=8000
ENV REDIS_HOST=localhost
ENV REDIS_PORT=6379
ENV REDIS_DB=0
EXPOSE 8000
CMD ["./run.sh"]