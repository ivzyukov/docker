FROM ubuntu
MAINTAINER ivzyukov
RUN ls
RUN apt-get update
RUN apt-get install -y git automake  pkg-config build-essential libcurl4-openssl-dev
RUN git clone https://github.com/wolf9466/cpuminer-multi
RUN cd cpuminer-multi 
RUN ls
RUN cd cpuminer-multi && ./autogen.sh
RUN cd cpuminer-multi && CFLAGS="-march=native" ./configure
RUN cd cpuminer-multi && make

CMD /cpuminer-multi/minerd -a cryptonight --threads=4 -o stratum+tcp://europe.monero.miningpoolhub.com:20580 -u pool620.worker -p password
