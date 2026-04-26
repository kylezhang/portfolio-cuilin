# portfolio-cuilin

平面设计师崔琳的个人作品集网站

## 技术栈

- 纯 HTML / CSS / JS 单文件
- 部署平台: [Vercel](https://vercel.com)
- 在线地址: [https://qlink.ai-trainer.fun](https://qlink.ai-trainer.fun)

## 同步流程

```
本地推送 → AtomGit (私有) → 自动同步 → GitHub → 自动部署 → Vercel
```

## 更新作品

编辑 `index.html`，然后运行：

```bash
bash sync.sh "更新了某某作品"
```

## 本地预览

```bash
python3 -m http.server 8080
```

访问 `http://localhost:8080/portfolio.html`。
