#!/bin/bash
###
 # @Date: 2021-01-14 15:00:01
 # @LastEditors: LiShangHeng
 # @LastEditTime: 2021-01-16 10:06:43
 # @FilePath: /Study-Notes/Linux/myLinux/scripts/lsh_pull.sh
### 
username=lishangheng@han-zi.cn;
pass=******;

/usr/bin/expect <<-EOF
set timeout 10;
spawn git pull;
expect {
    "Username for *:" { send "$username\r" };
}
expect {
    "Password for *:" { send "$pass\r" };
}
expect eof;
EOF