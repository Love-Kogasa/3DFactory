# What's This 这是什么玩意儿
This project is the Linux version of `hailong29/3DFactory`.  
此项目是`hailong29/3DFactory`のLinux版本.  
I made some simple modifications to the original project.  
我对源项目做了一点点点点改动
* Custom Input Video Path
* 自定义输入视频文件 ~~比如Henxxi/xxx~~
* Custom Output Video Path
* 自定义输出文件
* A simple `start` file for startup 3DFactory
* 启动文件+1

# Install And Begin 安装，然后 !!!!!启动!!!!!
```sh
apt install ffmpeg -y
git clone https://github.com/Love-Kogasa/3DFactory
cd 3DFactory
chmod 777 start
./start
```

# Source repository's README 原README
```sh
本脚本为2D视频转伪3D视频脚本, 原理为抽帧30毫秒,让左右两边画面不同步，从而让眼睛可以看到更多的面，产生立体感。     

# 运行方法:  
1.将要转换的文件, 拖入文件夹里面,改名为demo.mp4  
2.点击start.cmd,开始运行脚本  

# 注意事项:  
1.mark.png为视频下方的写轮眼图标, 如果不需要, 可以换成空白透明png图片  
2.可以修改start.cmd里面的抽毫秒数,默认30,电视剧适合20  

# 如何观看3D视频:  
  佩戴VR眼镜, 或者在手机上使用平行眼观看。  
  平行眼:放松双眼,或者看向原处,用余光看手机,直到出现重影,红点(视频正下方的图片水印)出现四个,调整聚焦让中间两个红点重叠,变成3个红点3个画面,中间画面就是3D的,随后拉远距离,保证眼睛舒服即可。原理是左眼看左边画面，右眼看右眼画面，也可用手掌隔开左右眼做辅助。 
```