# Kallgren's dotfiles

## Standard installation

Go to your home directory:
```bash
cd
```
Clone the repository:
```bash
git clone https://github.com/kallgren/dotfiles.git
```
Run the script:
```bash
dotfiles/makelinks
```
You're done! You will find eventual backups of old files in `~/dotfiles_backup`.


## Additional tips

* If you cloned the repo to some place other than your home directory, modify the variable `dir` in the script to suit your needs.

* If you want to add or remove files to be linked, modify [files](files).

* You can link individual files by providing their names as arguments to the script.

* Run ```bash source ~/dotfiles/makelinks-completion``` to get completions with the available files when running the script.

## Screenshot(s)

Coming soon...
