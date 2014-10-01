FROM damsl/k3-vanilla

WORKDIR /root
RUN echo -e "set show-all-if-ambiguous on\nset completion-ignore-case on\nset completion-map-case on\nset bell-style none\nset editing-mode vi\nset show-mode-in-prompt\n\$if mode=vi\n  set keymap vi-command\n  \"gg\": beginning-of-history\n  \"G\": end-of-history\n  set keymap vi-insert\n  \"jk\": vi-movement-mode\n  \"\\C-p\": history-search-backward\n  \"\\C-l\": clear-screen\n  \"\\C-a\": beginning-of-line\n  \"\\C-e\": end-of-file" > .inputrc
