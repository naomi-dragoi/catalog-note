FROM gcc:latest
WORKDIR /app

COPY src/ src/

RUN g++ -std=c++17 src/*.cpp -o catalog

CMD ["./catalog"]
