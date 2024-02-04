if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mahcopration/autofiling.git /autofiling
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /autofiling
fi
cd /autofilingsou
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
