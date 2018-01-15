#!/bin/bash

rm -rf tags
rm -rf cscope.*
rm -rf GPATH GRTAGS GTAGS


ctags -R

rm -rf ./cscope.files ./cscope.out
find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files
cscope -b -i cscope.files

#ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=./fp_10016 .
#rm -rf ./cscope.files ./cscope.out
#find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -not -path      './fp_10016/*'  -print > cscope.files
#cscope -b -i cscope.files

#gtags
