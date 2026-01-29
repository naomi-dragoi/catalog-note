FROM gcc:latest
WORKDIR /app
COPY *.cpp *.h ./
RUN g++ -std=c++17 *.cpp -o catalog
CMD ["./catalog"]
