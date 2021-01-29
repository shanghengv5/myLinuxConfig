<!--
 * @Date: 2021-01-14 14:56:52
 * @LastEditors: LiShangHeng
 * @LastEditTime: 2021-01-29 14:05:00
 * @FilePath: /myLinux/README.md
-->

# 简介

因为有很多服务器要登录查看日志或者调试,所以需要有一个适合的自己的使用环境配置.
注意不要破坏原服务器的配置.

# myLinuxConfig安装

```bash
git clone https://github.com/shanghengv5/myLinuxConfig
bash myLinuxConfig/lsh_install.sh && . myLinuxConfig/scripts/lsh_env.sh
```

## 配置相关

Vim 配置文件分为系统配置文件和用户配置文件：
系统配置文件位于 Vim 的安装目录（默认路径为 /etc/.vimrc）；
用户配置文件位于主目录 ~/.vimrc，即通过执行 vim ~/.vimrc 命令即可对此配置文件进行合理修改。通常情况下，Vim 用户配置文件需要自己手动创建。
