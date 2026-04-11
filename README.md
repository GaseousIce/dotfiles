# windows-dots

These are my dotfiles for Windows, focused on PowerShell and related tooling.

For Linux dots, see the Loonix branch in this repo: https://github.com/GaseousIce/dotfiles/tree/loonix

![Preview](screenshot.png)

## Configs in this repo

### PowerShell profile

- Repo file: `powershell/Microsoft.PowerShell_profile.ps1`
- Live location: `%USERPROFILE%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`

### Windows Terminal

- Repo file: `windows-terminal/settings.json`
- Live location: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`
- Windows Terminal Preview location: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json`

### Fastfetch

- Main config: `fastfetch/config.jsonc`
- ASCII fallback: `fastfetch/ascii.txt`
- SIXEL notes: `fastfetch/sixel.md`
- Example SIXEL files: `fastfetch/sixels/`

### FluentFlyout

- Repo file: `FluentFlyout/settings.xml`

### Winhance

- Repo file: `winhance/config.winhance`

### Wallpapers

- Folder: `wallpapers/`

## Symlink workflow (Link Shell Extension)

Use [Link Shell Extension](https://github.com/pacman2108/Link-Shell-Extension) to create symlinks from the live config locations to files in this repo.

1. Install Link Shell Extension.
2. In this repo, right-click the config file you want to link and choose **Pick Link Source**.
3. Go to the target config location in Explorer.
4. Right-click in the folder and choose **Drop As...** -> **Symbolic Link**.

Suggested links:

- `powershell/Microsoft.PowerShell_profile.ps1` -> `%USERPROFILE%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`
- `windows-terminal/settings.json` -> `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`

> [!NOTE]
> Symlinking configs to this repo makes it much easier to track every change in Git because your live config files and repo files are the same source.

## FluentFlyout settings import

To import the FluentFlyout configuration, open [FluentFlyout](https://github.com/unchihugo/fluentflyout/), go to the **System** tab, navigate to the **Backup and Restore** section, and click **Import Settings**. Then select the `FluentFlyout/settings.xml` file from this repo.

## Winhance config import

My Winhance config is in `winhance/config.winhance`.

To install my config, open [Winhance](https://github.com/memstechtips/Winhance), go to the **Settings** tab, then in the **Configuration** section click **Import** and select `winhance/config.winhance` from this repo.

> [!WARNING]
> This is my personal config. It may break on some systems, and a lot of it is preference-based, so you might not enjoy how it behaves.
> Use it at your own risk.

If you want to test it, back up your current config first so you can revert, or create a restore point before making changes.

## StartAllBack

I use [StartAllBack](https://www.startallback.com/) to reduce bright flashes in legacy apps and older pages.

It is mostly a preference thing. It is lightweight, and if you like legacy Windows UI elements, it can bring some of that look back.

I mainly use it for a more consistent dark-mode experience on Windows, but it is not flawless, and some legacy pages can still flash bright.

## Wallpapers

The wallpapers in the `wallpapers/` folder are sourced primarily from [Wallhaven](https://wallhaven.cc) and various other sources. I don't retain detailed attribution for all of them, so please don't sue me. If you see your work here and want attribution or removal, feel free to reach out.
