FROM elixir:otp-29 AS build
WORKDIR /app
COPY . .
ENV MIX_ENV=prod
RUN mix deps.get --only $MIX_ENV 
RUN mix release

FROM debian:trixie-slim
WORKDIR /app
RUN chown nobody /app
ENV MIX_ENV=prod
COPY --chown=nobody:root --from=build /app/_build/prod/rel/competition ./
USER nobody
CMD ["bin/competition", "start"]
