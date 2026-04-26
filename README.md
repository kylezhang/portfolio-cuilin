# portfolio-cuilin

平面设计师崔琳的个人作品集网站

## 技术栈

- 纯 HTML / CSS / JS 单文件
- 部署平台: [Vercel](https://vercel.com)
- 在线地址: [https://qlink.ai-trainer.fun](https://qlink.ai-trainer.fun)

## 仓库同步策略

```
AtomGit (私有, 主仓库)  →  GitHub (公开, 镜像)  →  Vercel (自动部署)
```

## 更新作品流程

### 方式一：修改 `portfolio.html`

1. 编辑 `portfolio.html` 中对应的作品网格区域
2. 提交并推送:
   ```bash
   bash sync.sh
   ```
   该脚本会自动推送到 AtomGit，如已配置 GitHub 远程也会同步推送。

### 方式二：通过 Vercel 直接编辑

Vercel 提供在线编辑器，可在 `vercel.com` 项目中直接修改文件并部署。

## 本地开发

直接双击 `portfolio.html` 在浏览器中预览，或启动本地服务：

```bash
python3 -m http.server 8080
```

然后访问 `http://localhost:8080/portfolio.html`。
