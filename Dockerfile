FROM php:7.4.7-cli

RUN curl -sS https://platform.sh/cli/installer | php

CMD /root/.platformsh/bin/platform backup:create -p$PLATFORMSH_PROJECT_ID -e$PLATFORMSH_ENVIRONMENT --yes --no-wait
