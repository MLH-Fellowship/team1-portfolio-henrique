#!/bin/bash

# 1. cd into your project folder
cd ~/team1-portfolio-henrique || exit

# 2. Grab the latest changes from GitHub and force reset
git fetch && git reset origin/main --hard

# 3. Tear down the old containers
docker compose -f docker-compose.prod.yml down

# 4. Rebuild and start fresh containers in the background
docker compose -f docker-compose.prod.yml up -d --build