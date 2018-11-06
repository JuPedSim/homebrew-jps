# homebrew-jps
homebrew formula for JuPedSim

## Add tap

This should be done once to add JuPedSim's tap to your hombrew

```shell
brew tap JuPedSim/jps
```

## (optional) Check dependensies

First check the dependencies of the packages you want to install

```shell
brew info pkg
```

with `pkg` is one of the available modules:

- `jpseditor`: geometry editor
- `jpscore`: simulation
- `jpsreport`: analysis
- `jpsvis`: visualisation

## Install module

then install with

```shell
brew install --HEAD <pkg>
```

## (optional) Test module

```shell
brew test  <pkg>
```

## Update module

To update the installed packages use

```shell
brew upgrade <pkg>
```

or reinstall it with

```shell
brew reinstall <pkg>
```

----

Note:

- HEAD only formula based on GitHub's master branch.
- `jpseditor` and `jpsvis` are installed in `/tmp`
- `jpscore` and `jpsreport` in `/usr/local/bin`
