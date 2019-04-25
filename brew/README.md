Base Brewfile
=================
I keep software installed with Brew here for all my computers.

The base `Brewfile` will automatically be installed as part of the install script.

See [personal](personal) and [local](local) brewfiles for environment-specific dependency installs.

## Installing a new Dependency
1. Add a `brew <dependency>` or `cask <dependency>` to the respective `Brewfile`.
2. Run this command (use `--file` if `Brewfile` not in cwd):
   ```
   brew bundle install --no-upgrade -v
   ```

