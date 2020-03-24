#!/bin/bash


# 指定用户下运行
if [ ${USER} != 'root' ]; then
    echo '请在root用户下运行！'
    exit 1
fi

# cd sh path
SH_PATH=$( cd "$( dirname "$0" )" && pwd )
cd ${SH_PATH}

# env
TIME=`date +%Y-%m-%dT%H:%M:%S`
TIME_START=${TIME}



# 用法：
F_HELP()
{
    echo "
    用途：用于
          -r|--resotore    还原
    注意：本脚本需要
    用法:
          ./$0 [-h|--help]
          ./$0 [-r|--resotore] [PATH_TO_FILENAME]  [数据库名]     #--- 恢复，文件须为gzip格式
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
TEMP=`getopt -o hr:  -l help,restore: -- "$@"`
if [ $? != 0 ]; then
    echo "参数不合法，退出"
    HELP
    exit 1
fi


# start
eval set -- "${TEMP}"
#
while true
do
    case "$1" in
        -h|--help)
            HELP
            exit
            ;;
        -r|--restore)
            BACKUP_FILE=$2
            shift 2
            DB_NAME=$1
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
            /usr/local/bin/dingding_markdown.py  "【Info:还原pg:${RUN_ENV}】"  "pg还原：成功！ ${TIME_COST}"
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

