# superceded

This repo has been superceded by my new [chezmoi](https://www.chezmoi.io/) powered [dotfiles repo](https://github.com/kitchen/chezmoi-dotfiles)

# old stuff
.
kitchen's dotfiles

I'm now using [`stow`](https://www.gnu.org/software/stow/) to manage my dotfiles. Or at least trying to. This is an experiment. So far I really only have 3 things I have my dotfiles on anymore and they all support `stow`, so that's good.

run `bash install.sh` and delete things as it whines about them. It's not a smooth transition process, but that's fine. I don't care enough to bother trying to fix it :)

# packages

in each package there's room for a `README` file and a `post-install-hook` file.

The README is obvious, but the `post-install-hook` is a bash script that runs after the stow has been installed. This is to install user level things like rust packages or whatnot. The scripts should try to only run if they need to (i.e. if they're installing a kubernetes plugin, see if that plugin is installed first before trying to install again), and if it's a suuuuuuuper long install process (e.g. helix-editor) perhaps either just tell the user what to do or prompt before doing it. Maybe with some sort of environment variable override to automatically just go ahead. I dunno. 
