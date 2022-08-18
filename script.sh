rem Optional
curl -X GET https://d3.7-zip.org/a/7z2201-x64.msi  -OutFile 7z.zip
Expand-Archive 7z.zip -DestinationPath 7z
move 7z\7z.exe .
del -r 7z
rem Get xorriso
curl https://www.gnu.org/software/xorriso/xorriso-1.5.4.pl02.tar.gz > xorriso-1.5.4.pl02.tar.gz
curl https://www.gnu.org/software/xorriso/xorriso-1.5.4.pl02.tar.gz.sig > xorriso-1.5.4.pl02.tar.gz.sig
curl https://ftp.gnu.org/gnu/gnu-keyring.gpg > gnu-keyring.gpg
gpg --with-fingerprint --keyring ./gnu-keyring.gpg --verify xorriso-1.5.4.pl02.tar.gz.sig


