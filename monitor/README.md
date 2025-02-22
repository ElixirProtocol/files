## quick start

prepare for grafana

```bash
cp grafana/.env.example grafana/.env
```

then, fill grafana/.env

prepare for elixir validator

```bash
# fetch validator.env
curl -s https://files.elixir.finance/validator.env -o elixir/.env
```

fill out it

see https://docs.elixir.xyz/running-an-elixir-validator#download-the-environment-template for detail

next, start docker compose

```base
docker compose up -d
```

if start is success, you can see dashboard in http://localhost:3000/
