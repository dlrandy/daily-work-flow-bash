# daily-work-flow-bash

```bash
ls -al
pwd 
cd 
cat -n
less shift+g g /
open
open 1.js -a TextEdit
touch filename
echo 'hi' > file.txt
echo 'hi' >> file.txt
echo 'hello' > notexistfilename
mkdir folder
mkdir -p a/b/c/d
rm file.txt
rm -r folder
rm -rf a
mkdir src
echo 'console.log("hi")' > index.js
mv index.js src
mv index.js src/test.js
mv test.js index.js
mv src/ lib
mv lib/* src 
cp README.md src
cp README.md src/dd.md

cp lib src/   
cp: lib is a directory (not copied).
cp -r lib src/

find查找文件和目录
不仅可以找文件还可以对找到的文件执行命令

find images -name '*.png'
find images -name '*.jpg'
find images -iname '*.jpg'

find . -depth 1  -type d
ls -g
ls -G
find . -type d -name 'images'
find . -type d -name images 

find dist -name '*.built.js' -delete

find images/ -name "*.png" -exec pngquant {} \;
grep -n --color 'find' README.md 

grep --color -n  --context 'find' README.md ;  

ps ax | grep  chrome -n --color | less


uglifyjs -c -m -- index.js | gzip -9 | wc -c

echo $?

chmod +x variables.sh 


 alias ll="ls -laG"
 type ll
source ~/.bash_profile

echo $PATH
which grep
