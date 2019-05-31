# chocolatey-packages

## Test locally

```bash
choco pack
choco install -y sonarqube-scanner-jar --force -dv -s .
sonarqube-scanner --version
choco uninstall -y sonarqube-scanner-jar
```

## Push to chocolatey.org

Find API key at https://chocolatey.org/account  
Then push:

```bash
choco apikey --key <api-key> --source https://push.chocolatey.org/
choco push --source https://push.chocolatey.org/
```
