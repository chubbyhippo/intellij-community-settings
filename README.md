# intellij-community-settings

IntelliJ IDEA Community settings — code style, editor options, per-OS
keymaps, file templates — and a plugin install script. Modal editing comes
from [ideameow](https://github.com/chubbyhippo/ideameow), a native port of
Emacs [meow](https://github.com/meow-edit/meow) — its keymap ships inside
the plugin; override keys in `~/.ideameowrc` (`SPC c m` opens it, `SPC c M`
reloads it).

## Install settings + plugins

```sh
curl -s https://raw.githubusercontent.com/chubbyhippo/intellij-community-settings/refs/heads/main/setup.sh | /usr/bin/env sh
```

## Install ideameow

1. Disable or uninstall IdeaVim if installed (both plugins intercept
   typing).

2. Build and install into every detected 2026.1+ IDE (needs Java 21, or
   [mise](https://mise.jdx.dev); from WSL this also reaches the Windows
   IDEs):

   ```sh
   git clone --depth 1 https://github.com/chubbyhippo/ideameow.git && cd ideameow && ./setup.sh
   ```

3. Restart the IDE.

## Install plugins only

Needs the JetBrains `idea` launcher on PATH.

```sh
curl -s https://raw.githubusercontent.com/chubbyhippo/intellij-community-settings/refs/heads/main/install-plugins.sh | /usr/bin/env sh
```

## Save current IDE settings back into the repo

```sh
./save.sh
```
