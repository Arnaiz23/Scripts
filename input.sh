echo "Hello, what's your name?"

read name

echo $name

echo "-------------------------"

while true; do
	read -p "Do you wish to install this program? " yn
	case $yn in
		[Yy]* ) echo "Install"; break;;
		[Nn]* ) exit;;
		* ) echo "Please answer yes or no.";;
	esac
done

echo "-------------------------"

echo "Do you wish to install this program?"
select yn in "Yes" "No"; do
	case $yn in
		Yes ) make install; break;;
		No ) exit;;
	esac
done

echo "--------------------------"

while true; do
	read -p "Do you wish to install qtile? (y/n) " yn
	case $yn in
		[Yy]* ) sudo pacman -S -y qtile pacman-contrib; break;;
		[Nn]* ) break;;
		* ) echo "Please answer yes or no.";;
	esac
done
