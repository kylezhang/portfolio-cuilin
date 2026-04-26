#!/bin/bash
# sync.sh - 推送代码到 AtomGit 和 GitHub
# 用法: bash sync.sh [提交信息]

set -e

cd "$(dirname "$0")"

MSG="${1:-update: portfolio content update}"

echo "📝 暂存所有更改..."
git add -A

echo "💾 提交: $MSG"
git commit -m "$MSG" --allow-empty

echo "🚀 推送到 AtomGit (主仓库)..."
git push atomgit main 2>&1

if git remote get-url github &>/dev/null; then
    echo "🚀 推送到 GitHub (镜像)..."
    git push github main 2>&1
else
    echo "⚠️  未配置 GitHub 远程，跳过。"
    echo "   如需同步到 GitHub，请先创建 GitHub 仓库，然后运行:"
    echo "   git remote add github https://github.com/你的用户名/portfolio-cuilin.git"
    echo "   再运行一次此脚本即可同步。"
fi

echo "✅ 同步完成！"
echo ""
echo "📌 Vercel 会自动检测 GitHub/GitLab 推送并自动部署。"
echo "   访问: https://qlink.ai-trainer.fun"
