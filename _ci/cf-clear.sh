#!/bin/bash
/usr/bin/curl -X POST "https://api.cloudflare.com/client/v4/zones/$CLOUDFLARE_ZONE/purge_cache" -H "Authorization: Bearer $CLOUDFLARE_APIKEY" -H "Content-Type:application/json" --data '{"purge_everything":true}'
