FROM ubuntu:20.04

RUN apt-get update && apt-get install -y bash curl

COPY aidag.sh /usr/local/bin/aidag.sh
COPY presale.html /var/www/html/presale.html
COPY witness.json /usr/local/bin/witness.json
COPY supply.json /usr/local/bin/supply.json

RUN chmod +x /usr/local/bin/aidag.sh

CMD ["/usr/local/bin/aidag.sh"]

