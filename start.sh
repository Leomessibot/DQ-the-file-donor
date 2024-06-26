if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Leomessibot/leothebot.git /leothebot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /leothebot
fi
cd /leothebot
pip3 install -U -r requirements.txt
echo "Starting Leo-the-Bot...."
python3 bot.py
