# NeovimLazy

neovim setup with lazy

All formatting linting and lsp services are downloaded via the Mason plugin

This setup is mainly used for python and can have trouble linting
and resulving imports. It uses pyright for resolving imports,
type hinting and displaying documetnation on hover. It uses pylint
for code analysis. They have some overlapping functionality mainly
resolving imports. To overcome this after installing pylint via Mason
in neovim I navigate to the folder containing the pylint executable:

```bash
cd ~/.local/share/nvim/mason/packages/pylint/venv/bin
```

and I execute the command:

```bash
./pylint --disable=import-error --generate-rcfile > ~/.pylintrc
```

There are many other optinos that can be found here: [pylint config](https://pylint.pycqa.org/en/stable/user_guide/configuration/all-options.html)
This disables import errors and creates a config file for the user.
pyright will be able to determine the correct virtual environment to
resolve imports depending on the activated python environment when
opeining a project in neovim.
