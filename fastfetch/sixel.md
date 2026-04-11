# Fastfetch SIXEL Creation Guide

This guide documents a reliable workflow for creating SIXEL images for Fastfetch.

## Requirements

- ImageMagick installed and available as the magick command in PowerShell.
- A terminal that supports SIXEL rendering.
- A decent-quality source image (higher contrast usually converts better).

## Quick Start

Use this command to convert an image to a 250px-wide SIXEL file:

```powershell
magick .\input.jpg -resize 250x sixel:output.sixel
```

250x means width 250 with automatic height.

## Recommended Workflow

1. Place your source image in this folder, or use an absolute path.
2. Optionally crop to square for better composition.
3. Resize and export to SIXEL.
4. Point your Fastfetch image config to the generated .sixel file.

Example with center crop and mild saturation boost:

```powershell
magick .\input.jpg `
  -gravity center -crop 1:1 +repage `
  -resize 250x `
  -modulate 100,110,100 `
  sixel:output.sixel
```

## Useful Variants

Simple conversion:

```powershell
magick .\input.jpg -resize 250x sixel:output.sixel
```

Transparent PNG input (flatten alpha to avoid odd terminal backgrounds):

```powershell
magick .\input.png -background black -alpha remove -alpha off -resize 250x sixel:output.sixel
```

Batch convert all PNG files in the current folder:

```powershell
Get-ChildItem .\*.png | ForEach-Object {
  magick $_.FullName -resize 250x "sixel:$($_.BaseName).sixel"
}
```

## Why 250x

The current Fastfetch padding in this setup is tuned for 250 width.

You can use other sizes (for example 220x or 280x), but you may need to adjust Fastfetch padding so alignment still looks correct.

## Troubleshooting

- Colors look banded: start with a higher-quality source image.
- Image appears too large or small: adjust width and retune Fastfetch padding.
- Output looks garbled: verify terminal SIXEL support and Fastfetch image mode settings.
