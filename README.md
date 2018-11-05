# homebrew-jps
homebrew formula for JuPedSim

## Add tap
```shell
brew tap JuPedSim/jps
```

## Install module

```shell
brew install --HEAD pkg
```

with `pkg` is one of the available modules:

- jpseditor
- jpscore
- jpsreport
- jpsvis

----

Note:

- HEAD only formula based on GitHub's master branch.
- `jpseditor` and `jpsvis` are installed in `/tmp`
- `jpscore` and `jpsreport` in `/usr/local/bin`
