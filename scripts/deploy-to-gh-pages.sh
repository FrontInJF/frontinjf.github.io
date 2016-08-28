#!/bin/bash
rm -rf out || exit 0;
echo "Fazendo o build..."
( cd src/site
  git init
  git config --global user.email "lesley.andrez@gmail.com"
  git config --global user.name "lesleyandrez"
  git add .
  git commit -m "Deployed to Github Pages"
  echo " - - - "
  echo $GH_REF
  echo " - - - "
  echo $GH_TOKEN
  git push --force --quiet "https://MjJOvZl8/CygmeksiEj3JwY6D+IhpcZn1dVtS9WiWoZatWzsbNpoGvIftNi0FncRWXT6CAW921K9Sivbzcya4yYsTgbZZo8BNZtB2699JfRogJkeUKRvJMQdshmU4Pw+mW9HJax7TAEIPaEYaUlAymJCeLgsm8sT1aaehIzfkExiLEoTF4nGQg6CmuuiQIxbesZ0DcSIBBeUcXWTlc6Aa9bXOaAqri9jQ1/Jy75oUI7RFPF8ILZ8d6l/Pvo1Tneq53W4T2K5VuuzbUEoZKigYp1/Zi78DOIBDIOslPVNJ1u0S2Gxp9M4cVQQvGDJLxJjfaAK8puGwS32llrO+mcNo1by/6LyL/BkCJ8tdOeQDfXmr9g5v+AGSKknRgx+oCspDWK6Ixy4CikNX9pVSYuIJdp0BPTlUEZmQ7tgJ8cRWZ/++H7zjirn8++ImS9j8AWL/ddsgfIbL88QaLDbjG1Dh2VkKmhvWEAIDkdvTModRKwLJOo+3nF1UdtrGcVnnaaY/vKMKlvKF/uQKmq+QYBYRY5jm0JE3AJBcgVuGRdgw1KGIv3iKOp2mVfr8lRVXedXU6fViZDCaL5ZRhWfNk8zUplKlFj8a/HK/g7KtSDc9mBkr165A9zV491i8y1atFLFX+k0AdTcKkFSdbV2iIPVetFLL8rE5AcxrU73WSCkSTU=@${GH_REF}" master:gh-pages
)
