FROM elixir:1.3

ADD . /app
WORKDIR /app

RUN apt-get update && apt-get install -qy nodejs postgresql-client

ENV MIX_ENV prod
ENV PORT 4000

RUN mix local.hex --force
RUN mix deps.get --only-prod
RUN mix compile

EXPOSE 4000
CMD ["mix", "phoenix.server"]
