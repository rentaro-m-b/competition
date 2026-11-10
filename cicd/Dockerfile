FROM elixir:otp-29-alpine AS builder

WORKDIR /app

COPY . .

CMD MIX_ENV=prod mix release

FROM alpine:3.24.4 AS executor

WORKDIR /app

COPY --from=builder /app/_build/prod/rel /app


