# Fastfetch Image Notes

## Sixel Images

To create sixels, use ImageMagick and render them at 250px wide with automatic height:

```powershell
magick .\input.jpg -resize 250x sixel:output.sixel
```

`250x` means 250 width with automatic height.

### Why `250x`?

The current Fastfetch padding is tuned for that size. You can use any resolution you want, but you will need to adjust the padding yourself.

A square input image is recommended for better aesthetics.

## ASCII Alternative

If you want ASCII art instead, try:

https://emojicombos.com/cat

Why cat? Cuz I like it. You can change it to whatever you want, or use the one given in `ascii.txt`.
