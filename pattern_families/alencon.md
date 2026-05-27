# Alençon

French needlepoint ground. Corded outlines.

## What It Is

Alençon lace is a **French needle lace** with a distinctive fine mesh ground and raised corded outlines around motifs. It's known as the "Queen of Lace" for its refinement.

## Construction

- **Needle lace technique**: Buttonhole stitches over cord foundation
- **Point de Bruxelles ground**: Fine hexagonal mesh
- **Raised cord**: Extra thread laid under outlines for relief
- **Dense filling**: Motif interiors filled with complex stitches

## Visual DNA

- **Fine hex mesh**: Delicate ground visible between motifs
- **Corded outlines**: Slightly raised edges around floral elements
- **Dense fillings**: Small complex stitches inside motifs
- **Scalloped edge**: Decorative wavy border
- **Common uses**: Royal bridal veils, luxury ceremonial, museum pieces

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `mesh_fineness` | 0.001–0.005 | Very fine |
| `cord_height` | 0.0–0.02 | Raised outline |
| `fill_density` | 0.5–1.0 | Motif interior coverage |
| `edge_scallop` | 0.0–0.05 | Wavy border |

## GLSL Snippet

```glsl
float alencon(vec2 uv, float fineness) {
    float mesh = hex_grid(uv, fineness) * 0.3;
    float motif = floral_with_cord(uv, scale, cord_h);
    float fill = dense_stitch_fill(uv, pattern);
    return max(mesh, motif + fill);
}
```

## Prompt Template

> "Alençon needle lace in white silk, fine hexagonal mesh ground with corded floral outlines and dense stitch fillings, scalloped edge, French royal lace tradition"

## Anti-Drift

- **Corded outlines**: The raised edge is the signature
- **French origin**: Specifically from Alençon, France
- **Needle lace**: Not bobbin; made with needle

---

*Corded outline, dense fill. The refinement is the royalty.*
