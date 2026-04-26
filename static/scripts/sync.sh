#!/bin/bash
# sync.sh - 推送代码到 AtomGit（自动同步到 GitHub → Vercel）
# 用法: bash sync.sh [提交信息]

set -e

cd "$(dirname "$0")/.."

MSG="${1:-update: portfolio content update}"

echo "暂存所有更改..."
git add -A

echo "提交: $MSG"
git commit -m "$MSG" --allow-empty

echo "推送到 AtomGit..."
git push atomgit main 2>&1

echo ""
echo "同步完成！"
echo "  AtomGit → GitHub → Vercel 会自动触发部署。"
echo "  访问: https://qlink.ai-trainer.fun"
