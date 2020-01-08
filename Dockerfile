FROM archlinux:latest
ADD https://blackarch.org/strap.sh tmp/strap.sh
RUN \
TERM=xterm \
&& export TERM \
&& chmod +x /tmp/strap.sh \
&& /tmp/strap.sh \
&& rm -f /tmp/strap.sh \
&& pacman --noconfirm -S archlinux-keyring \
&& pacman --noconfirm -S \
tmux \
vim \
