echo "Cloning Repo..."
git clone https://github.com/aceknox/Url-Uploader-Bot-V4 
cd /Url-Uploader-Bot-V4 
pip3 install -U -r requirements.txt
echo "Starting Bot.."
python3 bot.py
