# NeovimLazy

neovim setup with lazy

All formatting linting and lsp services are downloaded via the Mason plugin

This setup is mainly used for python and can have trouble linting
and resulving imports. It uses pyright for resolving imports,
type hinting and displaying documetnation on hover. It uses pylint
for code analysis. They have some overlapping functionality mainly
resolving imports. To overcome this after installing pylint via Mason
in neovim I navigate to the folder containing the pylint executable:
`~/.local/share/nvim/mason/packages/pylint/venv/bin`
and I execute the command:
`./pylint --disable=import-error --generate-rcfile > ~/.pylintrc`
This disables import errors and creates a config file for the user.
