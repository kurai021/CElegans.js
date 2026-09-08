cmake_minimum_required(VERSION 3.16)
project(CElegansPet LANGUAGES CXX)

# Activar AUTOMOC de manera global
set(CMAKE_AUTOMOC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_add_executable(CElegansPet
  main.cpp
)

qt_add_qml_module(CElegansPet
  URI PetModule
  VERSION 1.0
  QML_FILES
    qml/Main.qml
    qml/Pet.qml
    qml/PetVisual.qml
    qml/BrainConnector.qml
  RESOURCES
    js/celegans.js
)

target_link_libraries(CElegansPet PRIVATE Qt6::Quick)
