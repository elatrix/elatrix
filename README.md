# Elatrix

This is an expirement of creating [Matrix](https://matrix.org) server with [Elixir](https://elixir-lang.org).

It is in an early stage. If, for some reason, you are interested, please ping [@MKenin](https://github.com/MKenin) or [@kirill-kruchkov](https://github.com/kirill-kruchkov).

Note to ourselves: follow [contributing guidelines](./CONTRIBUTING.md).

## Prerequisites

You'll need Elixir 1.6-rc or higher.

## Development

### Install dependencies

```mix deps.get```

### Compile

```mix compile```

### Start `iex` session

```iex -S mix```

Server will be started at `http://localhost:4000`.

### Make requests

You can use any tool (like `curl` or Postman) to make requests, e.g.:

```curl http://localhost:4000```

