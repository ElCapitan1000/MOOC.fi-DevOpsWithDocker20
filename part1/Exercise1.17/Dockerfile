FROM gcc:9.3.0
WORKDIR /myDir

# create a simple myApp.cpp file
RUN touch myApp.cpp
RUN echo "#include <iostream>" >> myApp.cpp
RUN echo "using namespace std;" >> myApp.cpp
RUN echo "int main() {" >> myApp.cpp
RUN echo 'cout << "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" << endl;' >> myApp.cpp
RUN echo 'cout << "This container is made to compile and run c++ programs"<< endl;' >> myApp.cpp
RUN echo 'cout << "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" << endl;' >> myApp.cpp
RUN echo "return 0;}" >> myApp.cpp
RUN chmod +x myApp.cpp

# compile and run myApp.cpp
RUN g++ -o myApp myApp.cpp
RUN ls -a
RUN ./myApp
