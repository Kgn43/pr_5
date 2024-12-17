FROM gcc
WORKDIR /
COPY . .
RUN g++ -o main cpp_and_h_files/*.cpp classes/arr.cpp
ENTRYPOINT ["./main"]
