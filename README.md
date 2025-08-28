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
  repos/brad-projects/projects/branches/main/protection \
  --input protection.json
```

## Add a new branch protection

Exactly — this error happens because you **just enabled branch protection requiring pull requests**. Once that rule is active, you **cannot push directly to `main`**; all changes must go through a pull request.

Here’s what to do next:

1. **Create a new branch** locally:

```bash
git checkout -b protection-policy
```

2. **Commit your changes to the new branch** (you already did, so just make sure the branch has the commit):

```bash
git log --oneline
```

You should see your `"Add protection policy"` commit on `protection-policy`.

3. **Push the branch to GitHub**:

```bash
git push -u origin protection-policy
```

4. **Create a pull request**:

You can do it via the CLI:

```bash
gh pr create --base main --head protection-policy --title "Add protection policy" --body "Add branch protection JSON file"
```

Or via the GitHub web interface.

5. **Merge the PR** once approved — this is now the **only way to update `main`** because of the branch protection rule.

---

If you want, I can show a **shortcut one-liner to push and immediately open a PR** using `gh` so you don’t need multiple commands. Do you want that?
