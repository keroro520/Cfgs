ibus-daemon -d -x &
nm-applet &

rmmod pcspkr        #移除蜂鸣，比如在浏览器地址栏空的时候再backspace会`滴滴`
xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
