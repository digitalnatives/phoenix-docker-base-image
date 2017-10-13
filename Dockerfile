FROM elixir:latest

WORKDIR /app

RUN curl -sL https://deb.nodesource.com/setup_7.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs postgresql-9.4 \
    && apt-get clean

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
RUN mix local.hex --force && mix local.rebar --force
