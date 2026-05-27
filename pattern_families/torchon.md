# Torchon

Geometric bobbin lace. Straight edges, beginner-friendly.

## What It Is

Torchon is a traditional **bobbin lace style** characterized by geometric patterns, straight edges, and relatively simple construction. It's one of the oldest and most accessible forms of bobbin lace.

## Construction

- **Bobbin pairs**: Threads wound on bobbins, crossed and twisted
- **Geometric motifs**: Diamonds, triangles, rectangles
- **Straight edges**: No scallops; clean linear borders
- **Pin-based**: Pins hold the structure at intersections

## Visual DNA

- **Geometric grid**: Regular, angular patterns
- **Open mesh ground**: Hexagonal or square net between motifs
- **Straight border**: Clean, non-scalloped edge
- **Footside**: Decorative edge with picots or loops
- **Common uses**: Edgings, bookmarks, simple collars, beginner lace

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `mesh_type` | 0–1 | 0 = hex, 1 = square |
| `motif_scale` | 0.05–0.2 | Size of geometric units |
| `edge_type` | 0–2 | 0 = straight, 1 = picot, 2 = loop |

## GLSL Snippet

```glsl
float torchon(vec2 uv, float density) {
    float mesh = hex_grid(uv, density);
    float diamond = diamond_motif(uv, motif_scale);
    return max(mesh * 0.3, diamond);
}
```

## Prompt Template

> "Torchon bobbin lace edging in ecru linen thread, geometric diamond pattern on hexagonal mesh ground, straight footside with picots, traditional European lace"

## Anti-Drift

- **Not Bucks Point**: Bucks Point is finer and more floral; Torchon is geometric
- **Straight edges**: Torchon edges are linear, not scalloped
- **Beginner lace**: Often the first bobbin lace people learn

---

*Cross and twist. The diamond is the geometry.*
