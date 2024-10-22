# NeovimLazy

neovim setup with lazy

All formatting linting and lsp services are downloaded via the Mason plugin

This setup is mainly used for python and can have trouble resolving imports.
It uses pyright for resolving imports, type hinting and displaying documentation
on hover. Pyright will be able to determine the correct virtual environment to
resolve imports depending on the activated python environment when
opening a project in neovim.
