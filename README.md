# reaf-print-dom-server

酱印网后端渲染用服务器。

## Deploy

1. 所有计划在线上部署的版本必须打标签，标签格式为 `yy.MM.x`，`x` 从1开始计数，每个月初重置回1。例如，`17.01.1`，
版本号直接保存在 sbt 配置的版本号中，部署的时候由部署脚本自动添加 tag。

2. 不再采用手动上传 `zip` 的方式部署，所有的打过标签的 `zip` 包应当命名为 `reaf-print-dom-server-yy.MM.x.zip`，统一放置在 `/home/work/reaf-print-dom-server-dists/` 下。
以上两个步骤可以通过执行 `cd deploy && ./package.sh` 完成。

3. 部署时，执行 `cd deploy && ./update-and-restart.sh <TAG>`：

    该脚本将在 `/home/work/reaf-print-dom-server/` 目录下部署一个实例，占用 `9088` 端口
