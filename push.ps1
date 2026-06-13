param(
    [string]$Message = "Update analytics engine"
)

git add .
git commit -m "$Message"
git push origin main
