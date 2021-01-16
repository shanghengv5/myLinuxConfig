#/bin/bash
###
 # @Date: 2021-01-14 14:59:42
 # @LastEditors: LiShangHeng
 # @LastEditTime: 2021-01-14 15:00:18
 # @FilePath: /Study-Notes/Linux/myLinux/scripts/lsh_taillog.sh
### 
if [ -d $1 ];then
    # date函数获取当前日期
    date=`date +%Y-%m-%d`;
    # 获取第一个参数,替换api后面的内容为api/storage....
    logfile=${1/api/api/storage/logs/laravel-$date\.log};
    if [ -f $logfile ];then
        tail -f $logfile ;
    else
        echo '无法找到日志文件';
    fi
fi