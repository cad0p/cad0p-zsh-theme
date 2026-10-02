# Preview recording

`preview.gif` is generated with [vhs](https://github.com/charmbracelet/vhs) from `demo.tape`:

```sh
brew install vhs
vhs demo/demo.tape   # run from the repo root; writes preview.gif
```

`setup.zsh` loads oh-my-zsh from `$HOME/.oh-my-zsh` with this repo's theme, swaps in a neutral `cad0p@cad0p-mbp` identity, and builds a throwaway demo repo under `$TMPDIR` so recordings never show real machine details.
