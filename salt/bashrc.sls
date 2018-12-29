include:
    - neovim

/home/kevin/.bashrc:
    file.append:
        - text:
            - 'alias vi=/usr/bin/nvim'
            - 'export EDITOR="/usr/bin/nvim"'
            - 'export VISUAL="/usr/bin/nvim"'
        - require:
            - sls: neovim
