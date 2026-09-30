FROM node:22 AS frontend-build

WORKDIR /app

COPY frontend/package*json ./

RUN npm install

COPY frontend ./

RUN npm frontend build



FROM node:22 AS backend-build

WORKDIR /app

COPY backend/package*json ./

RUN npm install --dev=omit

COPY backend ./


FROM alpine-22 AS frontend-build




