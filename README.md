# Usage
Use `stow` to create symlinks to the dotfiles in this repository. For example, to create symlinks for the `nvim` dotfiles, 
`cd` into the directory where this repository is cloned and run the following command:
```bash
stow nvim 
```
which creates symlinks for the `nvim` dotfiles in the home directory mimicking the structure found in the `nvim` folder.
To remove the symlinks, run the following command:
```bash
stow -D nvim
```
