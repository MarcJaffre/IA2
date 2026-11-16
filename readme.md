
```bash
clear;
cd $HOME
rm -r /tmp/IA2 2>/dev/null;
git clone --quiet https://github.com/MarcJaffre/IA2.git /tmp/IA2;
cd /tmp/IA2;
bash shell/deploy.sh;
```

