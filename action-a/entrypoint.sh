#!/bin/sh -l

sh -c "echo Hello world my name is $MY_NAME"

jobs:
  build:
    name: Hello world action
    runs-on: ubuntu-latest    
    steps:
    - uses: actions/checkout@master
    - uses: ./action-a
      env:
        MY_NAME: "Mona"
