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
brew info <pkg>
```

with `<pkg>` is one of the available modules:

- `jpseditor`: geometry editor
- `jpscore`: simulation
- `jpsreport`: analysis
- `jpsvis`: visualisation

## Install module

then install with

```shell
brew install --HEAD <pkg>
```

**Note**: In case you have brew permission problems, you may want to run the following:

```shell
sudo chown -R "$USER":admin /usr/local
```

Also you'll (most probably) have to do the same on /Library/Caches/Homebrew:
```shell
sudo chown -R "$USER":admin /Library/Caches/Homebrew
```

See also this [answer](https://stackoverflow.com/a/16450503/9601068) to this [issue](https://github.com/mxcl/homebrew/issues/19670).

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
