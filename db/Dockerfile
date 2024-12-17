FROM gcc

WORKDIR /

COPY . .

RUN g++ -o main cpp_and_h/*.cpp classes/arr.cpp -I/json/single_include -std=c++23

EXPOSE 7433

ENTRYPOINT ["./main"]
