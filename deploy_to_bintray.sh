#/bin/sh
make package
cd work/pkg/
pkg repo .
>-
curl -s -XPOST -d '{"name":"alligator", "licenses": ["Apache-2.0"], "vcs_url": "https://github.com/alligatormon/alligator.git", "desc":"alligator is aggregator for system and software metrics"}' -u$BINTRAY_USER:$BINTRAY_KEY -H "Content-Type:application/json" -H "Accept:application/json" https://api.bintray.com/packages/alligatormon/$1/
>-
curl -sT alligator-${ALLIGATOR_TAG}.txz -u$BINTRAY_USER:$BINTRAY_KEY -H "X-Bintray-Package:alligator" -H "X-Bintray-Version:${ALLIGATOR_TAG}" https://api.bintray.com/content/alligatormon/$1/
>-
curl -s -XPOST -u$BINTRAY_USER:$BINTRAY_KEY -H "Content-Type:application/json" -H "Accept:application/json" https://api.bintray.com/content/alligatormon/$1/alligator/${ALLIGATOR_TAG}/publish
>-
curl -s -XPOST -d '{"name":"alligator", "licenses": ["Apache-2.0"], "vcs_url": "https://github.com/alligatormon/alligator.git", "desc":"alligator is aggregator for system and software metrics"}' -u$BINTRAY_USER:$BINTRAY_KEY -H "Content-Type:application/json" -H "Accept:application/json" https://api.bintray.com/packages/alligatormon/$1/
>-
curl -sT digests.txz -u$BINTRAY_USER:$BINTRAY_KEY -H "X-Bintray-Package:alligator" -H "X-Bintray-Version:${ALLIGATOR_TAG}" https://api.bintray.com/content/alligatormon/$1/
>-
curl -s -XPOST -u$BINTRAY_USER:$BINTRAY_KEY -H "Content-Type:application/json" -H "Accept:application/json" https://api.bintray.com/content/alligatormon/$1/alligator/${ALLIGATOR_TAG}/publish
>-
curl -s -XPOST -d '{"name":"alligator", "licenses": ["Apache-2.0"], "vcs_url": "https://github.com/alligatormon/alligator.git", "desc":"alligator is aggregator for system and software metrics"}' -u$BINTRAY_USER:$BINTRAY_KEY -H "Content-Type:application/json" -H "Accept:application/json" https://api.bintray.com/packages/alligatormon/$1/
>-
curl -sT meta.txz -u$BINTRAY_USER:$BINTRAY_KEY -H "X-Bintray-Package:alligator" -H "X-Bintray-Version:${ALLIGATOR_TAG}" https://api.bintray.com/content/alligatormon/$1/
>-
curl -s -XPOST -u$BINTRAY_USER:$BINTRAY_KEY -H "Content-Type:application/json" -H "Accept:application/json" https://api.bintray.com/content/alligatormon/$1/alligator/${ALLIGATOR_TAG}/publish
>-
curl -s -XPOST -d '{"name":"alligator", "licenses": ["Apache-2.0"], "vcs_url": "https://github.com/alligatormon/alligator.git", "desc":"alligator is aggregator for system and software metrics"}' -u$BINTRAY_USER:$BINTRAY_KEY -H "Content-Type:application/json" -H "Accept:application/json" https://api.bintray.com/packages/alligatormon/$1/
>-
curl -sT packagesite.txz -u$BINTRAY_USER:$BINTRAY_KEY -H "X-Bintray-Package:alligator" -H "X-Bintray-Version:${ALLIGATOR_TAG}" https://api.bintray.com/content/alligatormon/$1/
>-
curl -s -XPOST -u$BINTRAY_USER:$BINTRAY_KEY -H "Content-Type:application/json" -H "Accept:application/json" https://api.bintray.com/content/alligatormon/$1/alligator/${ALLIGATOR_TAG}/publish
