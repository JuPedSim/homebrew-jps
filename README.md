# homebrew-jps
homebrew formula for JuPedSim

## Add tap
```shell
brew tap JuPedSim/jps
```

## Install modules

First check the dependencies of the packages you want to install

```shell
brew info pkg
```

with `pkg` is one of the available modules:

- jpseditor
- jpscore
- jpsreport
- jpsvis


then install with

```shell
brew install --HEAD pkg
```

To update the installed packages use

```shell
brew reinstall pkg
```

----

Note:

- HEAD only formula based on GitHub's master branch.
- `jpseditor` and `jpsvis` are installed in `/tmp`
- `jpscore` and `jpsreport` in `/usr/local/bin`
