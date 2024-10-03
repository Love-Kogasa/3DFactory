#!/bin/env bash
echo -e "Video Path : \c"
read vp
echo -e "Output Path : \c"
read op
#将demo.mp4切去前面30毫秒, 输出到short.mp4 。短片抽30毫秒合适,3D效果强, 电视剧则适合20毫秒
ffmpeg -ss 00:00:00.030 -i $vp -vcodec copy -acodec copy short.mp4
#.\bin\ffmpeg.exe -ss 00:00:00.020 -i demo.mp4 -vcodec copy -acodec copy short.mp4

# 清理垃圾文件
rm out.mp4

#合并demo.mp4 short.mp4,一左一右生成3D视角
ffmpeg -i $vp -vf  "movie=short.mp4 [in1]; [in]pad=iw*2:ih:iw:0[in0]; [in0][in1] overlay=0:0 [out]" -vcodec libx264 -preset medium -b:v 1200k -r:v 25 -f mp4 $op

#清理垃圾文件
rm short.mp4

echo -e "[Please input <enter> to exit]\c"
read