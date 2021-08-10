#!/bin/bash

redis-server&

mwoffliner \
    --adminEmail="danigm@endlessos.org" \
    --articleList /scripts/endless.tsv \
    --customZimDescription="EndlessOS selection for English encyclopedia app" \
    --customZimFavicon="https://avatars3.githubusercontent.com/u/1930958" \
    --customZimTitle="EndlessOS selection for English encyclopedia app" \
    --filenamePrefix="wikipedia_en_endless" \
    --format="novid:maxi" \
    --mwUrl="https://en.wikipedia.org/" \
    --osTmpDir="/dev/shm" \
    --outputDirectory="/output" \
    --webp --withoutZimFullTextIndex --zstd \
    --customMainPage="User:EndlessOS/ZimIndex"
