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
