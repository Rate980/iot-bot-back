#!/bin/bash
docker compose exec gin_goth chmod +x /root/gin_goth/run.sh
screen -d -S gin_goth docker compose exec gin_goth /root/gin_goth/run.sh
docker compose exec app chmod +x /root/app/run.sh
screen -S app docker compose exec app /root/app/run.sh