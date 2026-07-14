CONTAINER=$(ls ~/Library/Group\ Containers | grep com.1password)

echo "Host *\n\tIdentityAgent \"~/Library/Group Containers/$CONTAINER/t/agent.sock\"\n" > ~/.ssh/config

# Git signs commits via /opt/1Password/op-ssh-sign (the Linux install path,
# shared across machines in ~/.config/git/config). On macOS the binary lives
# inside the app bundle, so symlink it to the Linux path for parity.
sudo mkdir -p /opt/1Password
sudo ln -sf "/Applications/1Password.app/Contents/MacOS/op-ssh-sign" /opt/1Password/op-ssh-sign

# 1Password shell plugins store CLI credentials in 1Password and inject them at
# runtime. `op plugin init` generates ~/.config/op/plugins.sh, which the shell
# config sources. These prompts are interactive.
op plugin init gh
op plugin init aws
