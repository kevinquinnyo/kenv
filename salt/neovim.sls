include:
    - python
neovim:
  pkg:
    - installed
    - require:
        - sls: python
        - pkg: fonts-powerline

# python support for neovim
pynvim:
  pip.installed:
    - name: pynvim
    - require:
        - pkg: neovim

fonts-powerline:
  pkg:
    - installed

# install vim plugin manager vim-plug
"curl -fLo /home/kevin/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim":
  cmd.run:
    - creates: /home/kevin/.local/share/nvim/site/autoload/plug.vim
    - require:
      - neovim

exuberant-ctags:
  pkg:
    - installed

