# Bedfordshire

Raised plaits, elaborate patterns.

## What It Is

Bedfordshire lace is a **bobbin lace style** known for raised plaits (braids), elaborate floral trails, and a distinctive thick decorative edge. It developed in the English Midlands.

## Construction

- **Raised plaits**: Braided sections that stand proud of the mesh
- **Floral trails**: Continuous lines of flowers and leaves
- **Thick edge**: Heavy decorative border with tall picots
- **Ninepin edge**: Distinctive edge with loops and tall points

## Visual DNA

- **Braided relief**: Raised plaits creating dimensional texture
- **Trailing florals**: Continuous botanical lines across the lace
- **Bold edge**: Heavy, decorative border with tall picots
- **Complex ground**: Multiple mesh types in one piece
- **Common uses**: Wide collars, cuffs, ceremonial edgings, Victorian fashion

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `plait_height` | 0.0–0.1 | Raised braid relief |
| `trail_width` | 0.01–0.05 | Floral trail thickness |
| `edge_height` | 0.0–0.15 | Tall picot border |
| `ground_variety` | 0–3 | Number of mesh types |

## GLSL Snippet

```glsl
float bedfordshire(vec2 uv, float plait_h) {
    float mesh = mixed_mesh(uv, density);
    float plait = braid(uv, plait_path) * plait_h;
    float edge = tall_picot(uv.x, edge_freq) * 0.1;
    return mesh + plait + edge;
}
```

## Prompt Template

> "Bedfordshire bobbin lace collar in ecru linen, raised braided plaits with trailing floral motifs, heavy decorative ninepin edge with tall picots, Victorian Midlands lace"

## Anti-Drift

- **Not Bucks Point**: Bedfordshire has raised plaits; Bucks Point is flat
- **Raised plaits**: The dimensional braids are the signature
- **Heavy edge**: Much bolder border than other English laces

---

*Raised plaits, trailing flowers. The braid is the architecture.*
