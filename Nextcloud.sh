# Paul bouwkamp tit4v2a
I=0

while [ $I = 0 ]
do

echo "Welke webserver wilt u gebruiken Nginx of Apache2?"
echo "1= Apache2 2= Nginx"
read Keus

if [ $Keus = "1" ]
then
sudo zypper --non-interactive --no-gpg-checks --quiet install --auto-agree-with-licenses apache2

elif [ $Keus = "2" ]
then
sudo zypper --non-interactive --no-gpg-checks --quiet install --auto-agree-with-licenses nginx

fi

echo "Nextcloud word geïnstalleerd"
sudo zypper --non-interactive --no-gpg-checks --quiet install --auto-agree-with-licenses nextcloud

echo "fail2ban word geïnstalleerd"
sudo zypper --non-interactive --no-gpg-checks --quiet install --auto-agree-with-licenses fail2ban


    read -p "Wilt u het script herladen [Y/n]?" yn
    case $yn in
        [Yy]* ) I=0;;
        [Nn]* ) I=$(( I+1 ));;
        * ) echo "Kies aub een optie.";;
    esac
done