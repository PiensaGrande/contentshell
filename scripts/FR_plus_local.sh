sudo rm -r /media/RACHEL/rachel/modules/en-TED/TEDx*
sudo rm -r /media/RACHEL/rachel/modules/en-TED/TED@*
sudo rm -r /media/RACHEL/rachel/modules/en-TED/TEDSalo*
sudo rm -r /media/RACHEL/rachel/modules/en-TED/TEDIndi*

sudo rsync -Pavz rsync://192.168.1.74/rachelmods/modules/fr-ebooksgratuits /media/RACHEL/rachel/modules/.
sudo rsync -Pavz rsync://192.168.1.74/rachelmods/modules/fr-haitifutur /media/RACHEL/rachel/modules/.
sudo rsync -Pavz rsync://192.168.1.74/rachelmods/modules/fr-phet-haiti /media/RACHEL/rachel/modules/.
sudo rsync -Pavz rsync://192.168.1.74/rachelmods/modules/fr-wikipedia /media/RACHEL/rachel/modules/.
sudo rsync -Pavz rsync://192.168.1.74/rachelmods/modules/fr-wikibooks /media/RACHEL/rachel/modules/.
sudo rsync -Pavz rsync://192.168.1.74/rachelmods/modules/fr-wikipedia /media/RACHEL/rachel/modules/.
sudo rsync -Pavz rsync://192.168.1.74/rachelmods/modules/fr-wikisource /media/RACHEL/rachel/modules/.
sudo rsync -Pavz rsync://192.168.1.74/rachelmods/modules/fr-wikiversity /media/RACHEL/rachel/modules/.
sudo rsync -Pavz rsync://192.168.1.74/rachelmods/modules/fr-wikivoyage /media/RACHEL/rachel/modules/.
sudo rsync -Pavz rsync://192.168.1.74/rachelmods/modules/fr-wiktionary /media/RACHEL/rachel/modules/.
sudo mkdir /media/RACHEL/kacontent
sudo rsync -Pavz rsync://192.168.1.74/rachelmods/modules/fr-kalite/content/* /media/RACHEL/kacontent/.
rsync -avy rsync://192.168.1.74/rachelmods/modules/fr-kalite/content_khan_fr.sqlite /root/.kalite/database/.
sudo rsync -Pavz --exclude content* rsync://192.168.1.74/rachelmods/modules/fr-kalite /media/RACHEL/rachel/modules/.

rsync -avy rsync://192.168.1.74/rachelmods/admin.* /media/RACHEL/rachel/.
sudo cp /media/RACHEL/rachel/admin.frcap.sqlite /media/RACHEL/rachel/admin.sqlite

sudo kalite manage retrievecontentpack download fr

#don't forget to download language pack for kalite fr
