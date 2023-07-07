FROM python:3.10-bullseye AS build-stage

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY ./requirements.txt ./
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir  -r requirements.txt

FROM python:3.10-bullseye
WORKDIR /usr/app

COPY --from=build-stage /opt/venv /opt/venv

RUN apt-get update && apt-get install -y sudo && \
    apt-get clean;


ENV PATH="/opt/venv/bin:$PATH"

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--proxy-headers"]