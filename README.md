# Darwin1946 的个人博客

在线地址：https://darwin1946.github.io/

## 博客源工程

`blog/` 保存恢复的 Hexo + Butterfly 工程。使用 Node.js 24：

```sh
cd blog
npm ci
npm run server
npm run build
```

文章位于 `blog/source/_posts/`，图片位于 `blog/source/images/`。
站点配置为 `blog/_config.yml`，主题配置为 `blog/_config.butterfly.yml`。

推送源文件到 master 后，GitHub Actions 自动构建并发布 Pages。

## 迁移记录

从旧静态 HTML 恢复两篇文章，保留原文章 URL 与图片。文章正文以 HTML 嵌入 Markdown 保留。
根目录原有静态文件保留作历史参考，现发布来源为 blog/public 构建产物。
升级前完整版本保留于 backup/pre-upgrade-20261029 分支。

## 当前发布方式

GitHub Actions 因账号账单限制无法启动，因此当前 Pages 从 master 的 `/docs` 目录发布。
修改文章后运行根目录 `build.ps1`，将 `blog/` 和 `docs/` 一起提交推送。
自动部署工作流保留为手动触发；解决账号账单限制并将 Pages 切换至 GitHub Actions 后可恢复使用。
