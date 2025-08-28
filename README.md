- [Introduction](#introduction)
- [Construct file](#construct-file)
- [Change main branch requiring pr](#change-main-branch-requiring-pr)

## Introduction

The main parent projects repo.

## Construct file

## Change main branch requiring pr

```bash
gh api -X PUT \
  -H "Accept: application/vnd.github+json" \
  repos/brad-luo/projects/branches/main/protection \
  --input protection.json
```