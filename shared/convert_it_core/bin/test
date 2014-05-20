#!/bin/bash

set -e

FILENAME="$1"
if [ ! $FILENAME == "" ]; then
  if [[ -d $FILENAME ]]; then
    TESTS=''
    for file in `find $FILENAME | grep _test.rb`; do
      TESTS="$TESTS require '`pwd`/$file';"
    done

    LIBDIR=${FILENAME/test*/lib}

    ruby -I$LIBDIR:$FILENAME -e "$TESTS"
  else
    if [[ ! $FILENAME == *_test.rb ]]; then
      FILENAME=${FILENAME/lib/test}
      FILENAME=${FILENAME/.rb/_test.rb}
    fi
    if [ -f $FILENAME ]; then
      ruby -Ilib:test $FILENAME
    else
      echo "File does not exist"
    fi
  fi
else
  TESTS=''
  for file in `find test | grep _test.rb`; do
    TESTS="$TESTS require '`pwd`/$file';"
  done

  ruby -Ilib:test -e "$TESTS"
fi
