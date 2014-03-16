echo "borrando data"
rm -rf data/
echo "exportando nuevo data"
cp -rf ~/liferay/cardiodiagnosis/liferay-portal-6.2.0-ce-ga1/data data
echo "exportando dump de bd"
mysqldump -u lportal --password=lportal  cardiodiagnosis > cardiodiagnosis.dump
