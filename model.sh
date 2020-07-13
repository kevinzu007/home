#!/bin/bash


# 指定用户下运行
if [ ${USER} != 'root' ]; then
    echo '请在root用户下运行！'
    exit 1
fi

# sh
SH_NAME=${0##*/}
SH_PATH=$( cd "$( dirname "$0" )" && pwd )
cd ${SH_PATH}

# 引入env
if [[ -f ~/deploy-bashrc.sh ]]; then
    . ~/deploy-bashrc.sh
fi
MAIL_BOX=${EMAIL:-"admin@gc-life.com"}

# godaddy信息
if [[ -f ~/.my_sec/godaddy.sec ]]; then
    . ~/.my_sec/godaddy.sec
elif [[ -f /etc/godaddy.sec ]]; then
    . /etc/godaddy.sec
else
    echo -e "\n峰哥说：没有找到sec文件\n"
    exit 1
fi

# 本地env
TIME=`date +%Y-%m-%dT%H:%M:%S`
TIME_START=${TIME}



# 用法：
F_HELP()
{
    echo "
    用途：用于
    注意：本脚本需要
    用法:
          sh $0 [-h|--help]
          sh $0 [-r|--resotore] [PATH_TO_FILENAME]  [数据库名]     #--- 恢复，文件须为gzip格式
    参数说明：
          -r|--resotore    还原
    示例：
          sh $0 [-r|--resotore] [PATH_TO_FILENAME]  [数据库名]     #--- 恢复
    "
}



# 时间差计算函数
F_TimeDiff ()
{
    # 时间格式：2019-01-08T19:41:59
    FV_StartTime=$1
    FV_EndTime=$2
    #
    FV_ST=$(date -d "${FV_StartTime}" +%s)
    FV_ET=$(date -d "${FV_EndTime}"   +%s)
    #
    FV_SecondsDiff=$((FV_ET - FV_ST))
    #
    if [ ${FV_SecondsDiff} -ge 0 ];then
        #
        FV_Days=$(( FV_SecondsDiff / 86400 ))
        FV_Hours=$((FV_SecondsDiff/3600%24))
        FV_Minutes=$((FV_SecondsDiff/60%60))
        FV_Seconds=$((FV_SecondsDiff%60))

        echo "耗时: ${FV_Days} Days ${FV_Hours} Hours ${FV_Minutes} Minutes ${FV_Seconds} Seconds"
        return 0
    else
        echo "Error, 请检查。 ---可能原因：1、时间格式不合格； 2、date2小于date1 ！"
        return 1
    fi
}



# 参数检查
TEMP=`getopt -o htr:s::  -l help,test,restore:,sort:: -- "$@"`
if [ $? != 0 ]; then
    echo "参数不合法，退出"
    F_HELP
    exit 1
fi


# start
eval set -- "${TEMP}"
#
# 获取次要命令参数
## 预处理，将脚本参数赋值给数组，类似s::空值时也可以正确处理
SH_ARGS_NUM=$#
# 脚本参数从1开始，数组是从0开始，所以处理下，避免计算转换
SH_ARGS[0]="占位"
for ((i=1;i<=SH_ARGS_NUM;i++)); do
    eval K=\${${i}}
    SH_ARGS[${i}]=${K}
    echo SH_ARGS数组${i}列的值是: ${SH_ARGS[${i}]}
done
#
SH_ARGS_ARR_NUM=${#SH_ARGS[@]}
for ((i=1;i<SH_ARGS_ARR_NUM;i++))
do
    case ${SH_ARGS[$i]} in
        -h|--help)
            F_HELP
            exit
            ;;
        -t|--test)
            # 不带附加参数
            CERTBOT_OPT="${CERTBOT_OPT}  --dry-run"
            ;;
        -s|--sort)
            # 带附加参数，比如：getopt参数s::或s: -s333或-s或-s 333，都可以正确处理
            j=$((i+1))
            J=${SH_ARGS[$j]}
            ;;
        --)
            break
            ;;
        *)
            # 跳过
            ;;
    esac
done


#
# 获取主要参数，运行
while true
do
    #echo 当前第一个参数是：$1
    case "$1" in
        -h|--help)
            F_HELP
            exit
            ;;
        -t|--test)
            # 前面已处理，跳过
            shift
            ;;
        -s|--sort)
            # 前面已处理，跳过
            shift 2
            ;;
        -r|--restore)
            BACKUP_FILE="$2"
            shift 2
            DB_NAME="$2"
            if [ -z ${DB_NAME} ]; then
                echo -e "\n峰哥说：参数错误，数据库名不能为空\n"
                exit 1
            fi
            #
            echo "${DB_NAME} :"
            bash ./pg_backup_or_restore_by_user_postgres.sh --restore ${BACKUP_FILE} ${DB_NAME}
            # send msg
            TIME_END=`date +%Y-%m-%dT%H:%M:%S`
            TIME_COST=`F_TimeDiff "${TIME_START}" "${TIME_END}"`
            /usr/local/bin/dingding_markdown.py  "【Info:pg还原:${RUN_ENV}】"  "pg还原成功！ ${TIME_COST}"
            exit
            ;;
        --)
            shift
            break
            ;;
        *)
            echo -e "\n峰哥说：内部参数错误\n"
            exit 1
            ;;
    esac
done



