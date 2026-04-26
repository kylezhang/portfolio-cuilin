# portfolio-cuilin

平面设计师崔琳的个人作品集网站

## 技术方案对比

| 特性 | 纯静态 (当前方案) | Hugo 等静态生成器 |
|------|------------------|------------------|
| 学习成本 | ✅ 无需学习，懂点 JSON 即可 | ❌ 需要学习模板语法和配置 |
| 编辑体验 | ✅ 直接编辑 data.json | ❌ 需要命令行 + 模板 |
| 加载速度 | ✅ 极快 | ✅ 快 |
| 部署复杂度 | ✅ 极简 | ⚠️ 需要构建步骤 |
| 动态功能 | ⚠️ 有限 | ✅ 更强大 |
| **推荐场景** | **个人作品集** | **博客/多页面内容站** |

## 当前方案优势

**对设计师更友好：**
- 不需要学习新工具
- JSON 配置像表格一样直观
- 图片直接丢进 `images/` 文件夹即可
- 没有构建过程，直接部署

## 使用流程

```
本地编辑 data.json → bash scripts/sync.sh → 自动部署到 Vercel
```

## 文件结构

```
├── index.html            # 网站页面
├── README.md             # 项目说明
├── data/
│   └── data.json         # 作品数据（编辑这个来更新作品）
├── images/               # 作品图片 + 个人头像
│   ├── avatar/           # 个人头像照片
│   ├── green/
│   ├── edu/
│   └── ...
├── public/
│   └── icons/            # favicon、apple-touch-icon、webmanifest
├── scripts/
│   └── sync.sh           # 一键发布脚本
└── docs/
    └── 更新指南.md        # 详细操作指南
```

## 在线地址

[https://qlink.ai-trainer.fun](https://qlink.ai-trainer.fun)

## 本地测试

```bash
python3 -m http.server 8080
```
