# intellij-community-settings

IntelliJ IDEA Community settings — code style, editor options, per-OS keymaps,
file templates — and a plugin install script.

| Item | Value |
|---|---|
| Modal editing | [ideameow](https://github.com/chubbyhippo/ideameow), a native port of Emacs [meow](https://github.com/meow-edit/meow) |
| Its keymap | ships inside the plugin |
| Override keys in | `~/.ideameowrc` — `SPC c m` opens it, `SPC c M` reloads it |

## Install settings + plugins

```sh
curl -s https://raw.githubusercontent.com/chubbyhippo/intellij-community-settings/refs/heads/main/setup.sh | /usr/bin/env sh
```

## Install ideameow

| Step | Do |
|---|---|
| 1 | Disable or uninstall IdeaVim — both plugins intercept typing |
| 2 | `git clone --depth 1 https://github.com/chubbyhippo/ideameow.git && cd ideameow && ./setup.sh` |
| 3 | Restart the IDE |

| Requirement | Value |
|---|---|
| Toolchain | Java 21, or [mise](https://mise.jdx.dev) |
| Targets | every detected 2026.1+ IDE; from WSL, the Windows IDEs too |

## Install plugins only

Needs the JetBrains `idea` launcher on PATH.

```sh
curl -s https://raw.githubusercontent.com/chubbyhippo/intellij-community-settings/refs/heads/main/install-plugins.sh | /usr/bin/env sh
```

## Save current IDE settings back into the repo

```sh
./save.sh
```
