echo "\033[0;34mCloning Sinatra-Heroku-Template...\033[0m"
/usr/bin/env git clone https://github.com/stevenklise/Sinatra-Heroku-Template.git .

echo "\033[0;34mRemoving Git Repo...\033[0m"
rm -r .git/
echo "\033[0;34mRemoving install.sh...\033[0m"
rm install.sh

echo "\033[0;34mCreating new git repository...\033[0m"
/usr/bin/env git init

echo "\033[0;34mMaking initial commit...\033[0m"
/usr/bin/env git add .
/usr/bin/env git commit -m "Initial Commit"