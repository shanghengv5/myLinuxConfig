#!/bin/bash
###
 # @Date: 2021-01-14 15:18:16
 # @LastEditors: LiShangHeng
 # @LastEditTime: 2021-01-29 14:05:27
 # @FilePath: /myLinux/lsh_install.sh
### 
# 环境变量在脚本运行完后,去/etc/profile.d手动开启
curDir=$(cd $(dirname $0); pwd);
cpPrefix="/disk2/lsh";
scriptSuffix="/scripts";
myvimrc="$curDir/myvimrc";
# 安装地址
cpScripts="$cpPrefix$scriptSuffix"
# 用户的vim配置
vimPath="/root/.vimrc";
# 环境变量地址
envPath="/etc/profile.d";
if [ "`id -u`" -eq 0 ];then
    # 脚本目录是否存在
    if [ -d $cpScripts ];then
        rm -rf $cpScripts;
        # 重新生成
        mkdir -p $cpScripts;
    fi
    # 把脚本导入脚本目录
    for sh in `ls $curDir$scriptSuffix`
    do
        if [  "`basename $curDir$scriptSuffix/$sh | grep -c env`"  -gt 0 ];then 
            if [ -d $envPath ];then
                cp $curDir$scriptSuffix/$sh $envPath;
            fi
        fi
        cp $curDir$scriptSuffix'/'$sh $cpScripts;
    done
    chmod 777 -R $cpScripts;

    # 修改vim配置
    if [ -f $vimPath ];then
        # 如果已经上传了,那么不重复再传
        if [ "`grep -c lsh $vimPath`" -eq 0 ];then
            cat $myvimrc >>$vimPath;
        fi
    else 
        cp  $myvimrc $vimPath;
    fi
else
    echo '现在只支持root用户';
fi



