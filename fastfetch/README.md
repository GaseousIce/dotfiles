# Fastfetch Image Notes

## Config files in this folder

- Main fastfetch config: `config.jsonc`
- ASCII art source: `ascii.txt`
- SIXEL files: `sixels/`
- SIXEL creation guide: [sixel.md](sixel.md)

## Sixel Images

Detailed SIXEL creation steps are in [sixel.md](sixel.md).

Quick command:

```powershell
magick .\input.jpg -resize 250x sixel:output.sixel
```

The width `250x` matches the current Fastfetch padding in this setup.

## ASCII Alternative

If you want ASCII art instead, try:

https://emojicombos.com/cat

Why cat? Cuz I like it. You can change it to whatever you want, or use the one given in `ascii.txt`.
