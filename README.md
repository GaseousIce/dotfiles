# linux-dots
Personal dotfiles ("dots") for Linux work environments. These are intended to be flexible across distros and desktop environments.

## What is included
- Shell configuration (bash), aliases, and prompt setup
- General CLI defaults and quality-of-life tweaks

## Clone and set up
1. Clone the repo:
	```bash
	git clone https://github.com/GaseousIce/dotfiles.git
	```
2. Enter the directory:
	```bash
	cd dotfiles
	```
3. Link the dots you want to use into your home directory (example for bash):
	```bash
	ln -sf "$PWD/.bashrc" "$HOME/.bashrc"
	```

## Using in your own workflow
- Fork the repo and keep your own changes.
- Pick only the files you need and symlink them into place.
- Review each file before linking to avoid overwriting existing configs.

## Windows dots
The Windows version lives on the `binboes` branch. Browse it here: https://github.com/GaseousIce/dotfiles/tree/binboes
