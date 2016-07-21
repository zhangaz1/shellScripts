d:
cd "d:/Code/Ng"
set now="%date:~0,10% %time%"
git add .
git commit -m %now%
git push
c: