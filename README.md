# setup-macos

Shell scripts that take a Mac from a clean install to a working development
machine: Homebrew and its packages, system defaults, the Dock layout, 1Password
for SSH and commit signing, dotfiles, and fish as the login shell.

## Usage

Grant the terminal Full Disk Access first — some `defaults` writes silently
fail without it.

```sh
git clone git@github.com:afrigon/setup-macos.git
cd setup-macos
bash init.sh
```

The run is interactive: it pauses to enable the 1Password CLI integration,
asks before downloading the latest Xcode release, and the 1Password shell
plugin setup prompts for credentials. It also clones the dotfiles repository
next to this one and runs its setup.

`init.sh` drives the individual scripts, which can also be run on their own:

- `brew.sh` — Homebrew, applications, and command line packages
- `defaults.sh` — system preferences
- `dock.sh` — Dock layout and pinned applications
- `xcode.sh` — latest Xcode release from Apple Developer
- `1password.sh` — SSH agent, commit signing, and shell plugins
- `dotfiles.sh` — clone and apply dotfiles
