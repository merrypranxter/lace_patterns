# Reticella

Geometric needle lace. Cutwork origin.

## What It Is

Reticella is an **Italian needle lace** that evolved from cutwork — fabric threads were withdrawn to create a grid, then the remaining threads were embroidered into patterns. Eventually it became pure needle lace without fabric base.

## Construction

- **Grid foundation**: Started as withdrawn-thread grid
- **Needle lace filling**: Buttonhole and overcast stitches fill the grid
- **Geometric patterns**: Diamonds, squares, stars, crosses
- **Pure needlework**: No fabric base in advanced forms

## Visual DNA

- **Geometric precision**: Sharp angles, mathematical patterns
- **Grid-based**: Everything follows an underlying square grid
- **Dense filling**: Small areas filled with complex stitchwork
- **Monochrome tradition**: Usually white or ecru
- **Common uses**: Church linens, collars, cuffs, table edges, ceremonial

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `grid_density` | 0.01–0.05 | Size of base grid |
| `pattern_type` | 0–5 | Diamond, square, star, cross, etc. |
| `filling_complexity` | 0.0–1.0 | How dense the stitchwork |

## GLSL Snippet

```glsl
float reticella(vec2 uv, float grid) {
    vec2 snapped = floor(uv / grid) * grid;
    float pattern = geometric_fill(snapped, pattern_id);
    return pattern;
}
```

## Prompt Template

> "Reticella needle lace in white linen, geometric diamond and star patterns on square grid foundation, dense buttonhole filling, Italian Renaissance lace tradition"

## Anti-Drift

- **From cutwork**: Evolved from withdrawn-thread embroidery
- **Geometric not floral**: Unlike many needle laces, Reticella is angular
- **Italian origin**: Specifically Venetian/Italian tradition

---

*Grid and fill. The geometry is the discipline.*
