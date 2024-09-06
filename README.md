# log-spammer

A dumb docker image which continuously logs something to help develop PREvant

## Usage

```bash
docker run -e LOG_FREQUENCY=1 -e INITIAL_LOG_COUNT=1000 hendriksmtz/log-spammer
```

## Configuration

By default a message will be logged every second. The interval is configurable through the environment variable `LOG_FREQUENCY`.

Additionally by default 1000 messages will be initially logged. This is configurable through the `INITIAL_LOG_COUNT` variable.

## Development

You can build the docker image using

```bash
docker build -t hendriksmtz/log-spammer .
```

and push it by running

```bash
docker push hendriksmtz/log-spammer:<TAG>
```
