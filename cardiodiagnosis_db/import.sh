echo "haciendo backup de data a data_old"
rm -rf ~/liferay/cardiodiagnosis/liferay-portal-6.2.0-ce-ga1/data_old/
mv -f ~/liferay/cardiodiagnosis/liferay-portal-6.2.0-ce-ga1/data/ ~/liferay/cardiodiagnosis/liferay-portal-6.2.0-ce-ga1/data_old
echo "importando nuevo data"
cp -rf data ~/liferay/cardiodiagnosis/liferay-portal-6.2.0-ce-ga1/
echo "importando dump de bd"
mysql -u lportal --password=lportal  cardiodiagnosis < cardiodiagnosis.dump
