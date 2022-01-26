# Homebrew formulas for JuPedSim tools

## Adding our tap

This should be done once to add JuPedSim's tap to your hombrew

```shell
brew tap JuPedSim/jps
```

After tapping `JuPedSim/jps` you will have the following formulas available

- `jupedsim`: simulation & visualisation
- `jpseditor`: geometry editor
- `jpsreport`: analysis

## Install jupedsim

You can install jupedsim either the latest release with

```shell
brew install jupedsim
```

or alternatively you can install the latest build from master (not
recommended), with

```shell
brew install --HEAD jupedsim
```

## Installation of jpsreport / jpseditor

These modules only support installation from the latest changes on master,
hence you need to install with

```shell
brew install --HEAD <pkg>
```

## Note

- `jpseditor` and `jpsvis` are installed in `/tmp`
- `jpscore` and `jpsreport` in `/usr/local/bin`

If you run into any issues please rerun the installation with `-v -d` for more
verbose output and debug output and open an issue with this information.

