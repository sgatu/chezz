#!/bin/bash
if [ ! -d ./back/code ]; then
   mkdir ./back/code
fi
rm -f ./back/code/.env.dev
if [ ! -d ./back/code/.git ]; then
  git clone https://github.com/sgatu/chezz-back ./back/code
fi
git -C ./back/code pull origin main
cat ./.env.back > ./back/code/.env.dev

if [ ! -d ./front/code ]; then
   mkdir ./front/code
fi
rm -f ./front/code/.env.local
if [ ! -d ./front/code/.git ]; then
  git clone https://github.com/sgatu/chezz-front ./front/code
fi
git -C ./front/code pull origin main
cat ./.env.front > ./front/code/.env.local
docker-compose up --build --force-recreate -d
