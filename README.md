### daka.sh
这个脚本是用来给zju-health打卡的，原理很简单，就是利用cookie。需要先在网页端完成一次手动的打卡，拿到cookie即可，
利用这个cookie就可以免密完成登录打卡了。理论上来说把cookie放到仓库是很危险的行为，但是这只是个用来打卡的cookie，
所以大家就算拿到了也只是帮我打卡了。同时使用crontab来设置定时执行脚本即可。
```
crontab -u [user_name]
crontab -e                          #进入vim界面
00 11 * * * ~/shell-script/daka.sh  #每天11点执行~/shell-script/daka.sh
crontab -l                          #看看定时打卡是不是在列表里
```

### find.sh
这个脚本用来给brew deps --installed --tree获得的树形依赖进行处理，使用时可以执行以下命令
```
brew deps --installed --tree > file #将输出重定向到file文件
./find.sh file                      #找到不依赖任何软件的软件，会生成一个file_copy文件，用vim查看即可
```
这个脚本本来可以把上面的话都合并掉，并且直接把内容输出到屏幕，有需要可以自己改改，然后文件检测的语句都没有加，执行脚本的时候保证工作目录干净，防止覆盖或者脚本误删。

### WeChat_SqlKey.sh
这是无聊时干微信反向调试时的一个脚本，用来把内存里的数值变成RawKey。一般没什么用。

### 后续
有机会继续补充
