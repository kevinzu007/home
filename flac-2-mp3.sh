#!/bin/bash

echo .
echo "说明部分参考：http://blog.sina.com.cn/s/blog_6039d7a30100dfrx.html"
echo "转换部分参考：https://wiki.archlinux.org/index.php/Convert_FLAC_to_MP3#With_FFmpeg"
echo "其他转换：https://blog.csdn.net/jiaobei2354717/article/details/80619381"

echo "mac工具在这里：
# https://unix.stackexchange.com/questions/165485/why-can-i-not-split-a-ape-file
sudo add-apt-repository -y ppa:flacon
sudo apt-get update
sudo apt-get install -y flacon
shntool split -f *.cue -o flac -t '%n - %p - %t' *.ape    #分割
shnconv -i ape -o flac *.ape    #ape to flac"

echo "ID3歌曲源信息解读：https://en.wikipedia.org/wiki/ID3"
echo .



echo .
echo "转换flac为mp3"
echo "跳过已存在的mp3文件"
echo .
echo "立体声编码模式：简单地说，立体声就是保留原文件左右两声道的信息不变，直接转换下来；联合立体声是将左右两声道的部分音频左右联合编码，尤其是低频，以省出一部分BIT编码更好的音质。
      由于我们使用的是CBR 320比特率，音质足够好了，不在乎那点比特率了，而且使用联合立体声会出现人耳可容易分辨出的差距，主要是在音乐深度、立体感上的。所以强力推荐使用普通立体声。
      在参数中加入 -m s"
echo "-m s             :使用立体声模式stereo，默认是联合立体声模式j-stereo，其他模式参考man lame"

echo "--cbr            :cbr编码方式。默认cbr。编码方式分为CBR(常数比特率)、ABR(平均比特率)、VBR(变长比特率)"
echo "-V 0             :使用vbr方式，并且设置为0级音频质量，0-9，越小质量越好。还是别使用这种方式吧，保持简单---"

echo "-q参数，简单地说是削波和算法，主要是决定高频段的音质。人耳能分辨的最高音频是20kHz，超过的部分听不到，但绝对不是感觉不到！
      注意这句话的理解，所以20kHz以上的超声波，还有20Hz以下的那部分次声波也能影响到人的听觉感受。
      设置成0或1的话有些音乐会出现像是上课铃的声音，2的话出现的概率非常小，为了排除微小声音的可能，我们将其设置为3"
echo "-q 3             :即qval 3，0-9，越小质量越好"
echo "-h               :效果等同-q 2"

echo "-b 320           :cbr方式参数，意思是码率320kbps"
echo "--preset insane  :针对cbr编码方式，LAME提供了"--preset insane"这个参数，其说明翻译过来就是完美音质的预设。预设：联合立体声模式j-stereo；cbr 320kbps；-q 3"
echo .
echo .




for a in ./*.flac; do
    # give output correct extension
    OUTF="${a[@]/%flac/mp3}"

    # 是否存在
    if [ -e "${OUTF}" ]; then
        echo "${OUTF} 文件已存在，跳过！"
        continue
    fi

    # get the tags
    ARTIST=$(metaflac "$a" --show-tag=ARTIST | sed s/.*=//g)
    TITLE=$(metaflac "$a" --show-tag=TITLE | sed s/.*=//g)
    ALBUM=$(metaflac "$a" --show-tag=ALBUM | sed s/.*=//g)
    GENRE=$(metaflac "$a" --show-tag=GENRE | sed s/.*=//g)
    TRACKNUMBER=$(metaflac "$a" --show-tag=TRACKNUMBER | sed s/.*=//g)
    DATE=$(metaflac "$a" --show-tag=DATE | sed s/.*=//g)

    # stream flac into the lame encoder
    #flac -c -d "$a" | lame -b 320 -V0 --add-id3v2 --pad-id3v2 --ignore-tag-errors \
    #flac -c -d "$a" | lame --preset insane --add-id3v2 --pad-id3v2 --ignore-tag-errors \
    flac -c -d "$a" | lame -b 320 -m s -q 3 --add-id3v2 --pad-id3v2 --ignore-tag-errors \
      --ta "$ARTIST" --tt "$TITLE" --tl "$ALBUM"  --tg "${GENRE:-12}" \
      --tn "${TRACKNUMBER:-0}" --ty "$DATE" - "$OUTF"
done




## ------------------------------------------------
## 其他方式
## 方法一
#echo  "mp3的歌曲信息比flac更多，为什么？"
#[[ $# == 0 ]] && set -- *.flac
#for f; do
#    # -y覆盖 -n不覆盖
#    #avconv -y -i "$f" -qscale:a 0  "${f[@]/%flac/mp3}"
#    avconv -y -i "$f" -c:a libmp3lame -b:a 320k  "${f[@]/%flac/mp3}"
#done
#
## 方法二
##parallel ffmpeg   -i {} -b:a 320k -qscale:a 0 {.}.mp3 ::: ./*.flac



