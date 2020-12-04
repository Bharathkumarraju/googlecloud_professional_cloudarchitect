add new additional disk 50GB

student-04-cd6766edf25d@mc-server:~$ sudo su
root@mc-server:/home/student-04-cd6766edf25d# lsblk -a
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
sda       8:0    0   10G  0 disk
├─sda1    8:1    0  9.9G  0 part /
├─sda14   8:14   0    3M  0 part
└─sda15   8:15   0  124M  0 part /boot/efi
sdb       8:16   0   50G  0 disk
root@mc-server:/home/student-04-cd6766edf25d#

root@mc-server:/dev/disk/by-id# pwd
/dev/disk/by-id
root@mc-server:/dev/disk/by-id# ls -rtlh
total 0
lrwxrwxrwx 1 root root  9 Dec  3 15:19 scsi-0Google_PersistentDisk_mc-server -> ../../sda
lrwxrwxrwx 1 root root  9 Dec  3 15:19 google-mc-server -> ../../sda
lrwxrwxrwx 1 root root  9 Dec  3 15:19 scsi-0Google_PersistentDisk_minecraft-disk -> ../../sdb
lrwxrwxrwx 1 root root  9 Dec  3 15:19 google-minecraft-disk -> ../../sdb
lrwxrwxrwx 1 root root 11 Dec  3 15:19 scsi-0Google_PersistentDisk_mc-server-part14 -> ../../sda14
lrwxrwxrwx 1 root root 11 Dec  3 15:19 google-mc-server-part14 -> ../../sda14
lrwxrwxrwx 1 root root 11 Dec  3 15:19 scsi-0Google_PersistentDisk_mc-server-part15 -> ../../sda15
lrwxrwxrwx 1 root root 11 Dec  3 15:19 google-mc-server-part15 -> ../../sda15
lrwxrwxrwx 1 root root 10 Dec  3 15:19 scsi-0Google_PersistentDisk_mc-server-part1 -> ../../sda1
lrwxrwxrwx 1 root root 10 Dec  3 15:19 google-mc-server-part1 -> ../../sda1
root@mc-server:/dev/disk/by-id# ls -rlth /dev/sdb
brw-rw---- 1 root disk 8, 16 Dec  3 15:19 /dev/sdb
root@mc-server:/dev/disk/by-id#


so /dev/sdb = /dev/disk/by-id/google-minecraft-disk

sudo mkdir -p /home/minecraft

sudo mkfs.ext4 -F -E lazy_itable_init=0,\
lazy_journal_init=0,discard \
/dev/disk/by-id/google-minecraft-disk

sudo mount -o discard,defaults /dev/disk/by-id/google-minecraft-disk /home/minecraft