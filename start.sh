if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/KingCobra91/Don-filter-bot- /vps
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO 
fi
cd
pip3 install -U -r requirements.txt
echo "Starting Bot url...."
python3 bot.py
