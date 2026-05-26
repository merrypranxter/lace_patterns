# Guipure

Heavy, no ground mesh.

## What It Is

Guipure lace is a **heavy needle or bobbin lace** with dense floral motifs connected by thick bars (brides). It has no mesh ground — the motifs are linked directly by bars.

## Construction

- **No mesh ground**: Unlike most laces, guipure has no net base
- **Bars connect motifs**: Thick threads link dense elements
- **Heavy hand**: Substantial, not delicate
- **Often embroidered**: Additional stitchwork on motifs

## Visual DNA

- **Dense motifs**: Heavy floral or geometric elements
- **Thick bars**: Visible connecting threads between motifs
- **No transparency in motifs**: Solid, filled areas
- **Bold ornamental**: Statement lace, not delicate
- **Common uses**: Bridal, curtains, upholstery, ceremonial garments

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `motif_density` | 0.5–0.9 | Very solid elements |
| `bar_thickness` | 0.002–0.01 | Thick connectors |
| `ground_absence` | 1.0 | No mesh visible |
| `heavy_edge` | 0.0–0.1 | Bold border |

## GLSL Snippet

```glsl
float guipure(vec2 uv) {
    float motif = dense_floral(uv, scale);
    float bars = thick_lines_between(uv, thickness);
    return max(motif, bars);
}
```

## Prompt Template

> "Heavy white guipure lace with dense floral motifs connected by thick bars, no mesh ground, bold ornamental statement lace, bridal or ceremonial textile"

## Anti-Drift

- **No mesh**: If it has mesh, it's not guipure
- **Heavy not delicate**: Guipure is bold and substantial
- **Bars are structural**: The connectors are visible and thick

---

*Dense motifs, thick bars. The absence of mesh is the definition.*
