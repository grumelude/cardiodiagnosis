echo "borrando data temporal para subir"
rm -rf data/
echo "exportando nuevo data"
cp -rf ~/liferay/cardiodiagnosis/liferay-portal-6.2-ce-ga2/data data
echo "exportando dump de bd"
mysqldump -u lportal --password=lportal  cardiodiagnosis > cardiodiagnosis.dump
