# Wave AI Homebrew tap

```sh
brew install --cask mohrer-associates/tap/wave-ai
```

Installs [Wave for Mac](https://wave.co/), the Wave AI note taker. Requires macOS 12 or later.
The app updates itself after install, so `brew upgrade` skips it by default.
To force a Homebrew upgrade, run `brew upgrade --cask --greedy wave-ai`.

The cask is bumped automatically every few hours by `.github/workflows/bump-wave-ai.yml`
once a release is published and its DMG is on the public download mirror.
