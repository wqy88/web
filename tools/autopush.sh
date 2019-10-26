#可以双击直接运行以更新
nowtime=`date +%F_%H:%M`
git init
git add -A
git commit -m "这是${nowtime}的维护日志，由wqy88程序自动创建"
git remote rm myweb
git remote add myweb git@gitee.com:wqy88/web.git
#强制更新到远程 git push -f myweb master
git push myweb master
git remote rm web
git remote add web git@github.com:wqy88/web.git
git push web master 
#read -p "Press [Enter] key to continue."
