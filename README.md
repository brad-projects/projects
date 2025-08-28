## Construct file

## Change main branch requiring pr

```bash
gh api -X PUT \
  -H "Accept: application/vnd.github+json" \
  repos/brad-luo/projects/branches/main/protection \
  --input protection.json
```