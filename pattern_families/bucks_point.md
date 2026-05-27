# Bucks Point

Fine floral bobbin lace.

## What It Is

Bucks Point is a **fine, delicate bobbin lace** from Buckinghamshire, England. It features small, detailed floral and leaf motifs on a fine mesh ground, often with a scalloped edge.

## Construction

- **Very fine thread**: Traditionally linen or silk
- **Floral motifs**: Small flowers, leaves, scrolls
- **Half-stitch ground**: Fine hexagonal mesh
- **Scalloped edge**: Decorative wavy border with picots

## Visual DNA

- **Delicate mesh**: Very fine hexagonal ground
- **Small florals**: Tiny detailed botanical motifs
- **Scalloped border**: Wavy edge with decorative points
- **Light and airy**: Extremely fine, almost weightless
- **Common uses**: Bridal veils, christening gowns, fine edgings, handkerchiefs

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `mesh_fineness` | 0.001–0.005 | Very fine thread |
| `floral_density` | 0.1–0.5 | Motifs per unit area |
| `scallop_freq` | 2–20 | Points per edge |
| `edge_picot` | 0–1 | Decorative tiny loops on edge |

## GLSL Snippet

```glsl
float bucks_point(vec2 uv, float fineness) {
    float mesh = hex_grid(uv, fineness);
    float floral = floral_motif(uv, scale);
    float scallop = sin(uv.x * freq) * edge_amp;
    return max(mesh * 0.2, floral) + scallop;
}
```

## Prompt Template

> "Bucks Point bobbin lace in white fine linen, delicate floral motifs on hexagonal mesh, scalloped edge with picots, English bridal lace tradition"

## Anti-Drift

- **Not Torchon**: Bucks Point is floral and fine; Torchon is geometric
- **Very fine**: Among the finest bobbin laces
- **Scalloped edge**: Distinctive wavy border

---

*Fine floral mesh. The delicacy is the art.*
