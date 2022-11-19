#!/usr/bin/env bash

domain=shubhamtatvamasi.com
maxlength=253

for i in {1..80}
do
   subdomain="${subdomain}${i}."
done

fulldomain=${subdomain}${domain}

domainlength=$(echo $fulldomain | wc -c)

if [ "$domainlength" -le "$maxlength" ]; then
  echo "$fulldomain"
else
  echo "Your domain is too long. It can be max of $maxlength characters."
fi
