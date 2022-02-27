echo "Syncronizing frontend"
cd piattaforma-scuola-frontend
git fetch origin
git checkout master
git merge origin/master
cd ..
echo "Syncronizing backend"
cd piattaforma-scuola-backend
git fetch origin
git checkout master
git merge origin/master
echo "Syncronization completed"
