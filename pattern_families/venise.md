# Venise / Venetian

Heavy geometric needle lace.

## What It Is

Venetian lace (also called Venise or point de Venise) is a **heavy, geometric needle lace** with bold, often symmetrical patterns. It features raised buttonholed outlines and intricate fillings.

## Construction

- **Needle lace**: Buttonhole stitches over cord foundation
- **Geometric motifs**: Bold symmetrical designs, often architectural
- **Raised work**: Corded outlines and padded elements
- **Intricate fillings**: Small geometric stitches inside motifs

## Visual DNA

- **Bold geometry**: Large, architectural motifs
- **Symmetrical**: Often mirror-image designs
- **Raised outlines**: Dimensional edges
- **Dense fillings**: Complex small patterns inside motifs
- **Common uses**: Collars, cuffs, ecclesiastical, ceremonial

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `motif_scale` | 0.05–0.2 | Large bold elements |
| `symmetry` | 0–1 | Mirror or rotational |
| `relief` | 0.0–0.1 | Raised outlines |
| `fill_complexity` | 0.3–1.0 | Interior stitch density |

## GLSL Snippet

```glsl
float venise(vec2 uv, float scale) {
    float motif = geometric_motif(uv, scale);
    float outline = corded_edge(uv, motif, relief);
    float fill = geometric_fill(uv, scale * 0.3);
    return max(motif + outline, fill);
}
```

## Prompt Template

> "Venetian needle lace collar in white linen, bold geometric architectural motifs with raised corded outlines and intricate fillings, heavy symmetrical design, Italian Renaissance lace"

## Anti-Drift

- **Geometric not floral**: Venise is bold and angular, not botanical
- **Heavy not delicate**: Substantial and bold
- **Italian origin**: From Venice, Italy

---

*Bold geometry, raised outlines. The architecture is the statement.*
