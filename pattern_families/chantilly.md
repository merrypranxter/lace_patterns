# Chantilly

Fine, floral, often black.

## What It Is

Chantilly lace is a **fine bobbin lace** characterized by delicate floral motifs on a hexagonal mesh ground. It's traditionally made in black silk, though white exists.

## Construction

- **Bobbin technique**: Multiple bobbins for complex patterns
- **Hexagonal mesh**: Fine six-sided net ground
- **Floral motifs**: Roses, scrolls, leaves outlined in thread
- **Silk tradition**: Traditionally black silk thread

## Visual DNA

- **Black silk**: Classic Chantilly is black; white is less common
- **Delicate florals**: Fine outlined flowers and leaves
- **Hex mesh ground**: Fine net visible between motifs
- **Scalloped edge**: Usually wavy border
- **Common uses**: Evening wear, bridal (white), veils, shawls, mourning

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `color` | black/white | Classic = black |
| `mesh_fineness` | 0.001–0.005 | Very fine hex net |
| `floral_outline` | 0.001–0.005 | Thread width |
| `edge_scallop` | 0.0–0.1 | Wavy border |

## GLSL Snippet

```glsl
float chantilly(vec2 uv, float fineness) {
    float mesh = hex_grid(uv, fineness);
    float floral = floral_outline(uv, scale);
    return max(mesh * 0.4, floral);
}
```

## Prompt Template

> "Black Chantilly bobbin lace in fine silk, delicate floral motifs outlined on hexagonal mesh ground, scalloped edge, French lace tradition, evening wear textile"

## Anti-Drift

- **Usually black**: White Chantilly exists but is less traditional
- **Not machine lace**: True Chantilly is hand-bobbin made
- **French origin**: From Chantilly, France

---

*Black silk, hex mesh, florals. The darkness is the tradition.*
