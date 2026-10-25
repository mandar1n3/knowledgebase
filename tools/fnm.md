# fnm (Fast Node Manager)

[_fnm_](https://github.com/Schniz/fnm) is a cross platform node version mananger, it works with both
`.node-version` and `.nvmrc`.

My current set up:
```bash
eval(fnm env --use-on-cd --version-file-strategy=recursive --shell bash)
```

`--use-on-cd` will switch to the node version specified in `.node-version` or
`.nvmrc` based on the current directory.

`--version-file-strategy=recursive` when using `fnm use` or `fnm install` it takes
into account the parent directory for a version file.
