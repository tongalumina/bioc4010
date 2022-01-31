apt update && apt -y upgrade
apt -y install xfce4 binutils
apt -y install tree ncbi-blast+ emboss
apt -y install dssp clustalw clustalx clustalo
strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5
