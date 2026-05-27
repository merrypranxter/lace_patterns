# Armenian Needle Lace

Looped thread, no fabric base.

## What It Is

Armenian needle lace (also known as bebilla, nazette, or knotted lace) is created by **looping and knotting thread** with a needle, building up patterns without any fabric base, mesh ground, or previous row support.

## Construction

- **Needle only**: Single thread, single needle
- **Loop and knot**: New loops anchored to previous loop edges
- **No ground**: Each row supports the next directly
- **Hairpin variant**: Sometimes worked on a small fork or hairpin

## Visual DNA

- **Looped architecture**: Visible loops and knots forming the structure
- **Often floral**: Traditional motifs include flowers and leaves
- **Freeform edges**: Organic, flowing borders
- **White or ecru tradition**: Natural fiber colors
- **Common uses**: Edgings, doilies, decorative pieces, regional traditional items

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `loop_size` | 0.01–0.05 | Size of basic loop unit |
| `knot_visibility` | 0.0–0.1 | How visible knots are |
| `edge_organic` | 0.0–0.2 | Freeform wavy border |
| `motif_type` | 0–3 | Floral, geometric, freeform |

## GLSL Snippet

```glsl
float armenian_lace(vec2 uv, float loop) {
    float row = floor(uv.y / loop);
    float loop_phase = fract(uv.x / loop + row * 0.5);
    float knot = smoothstep(0.0, 0.1, loop_phase) * smoothstep(1.0, 0.9, loop_phase);
    return knot;
}
```

## Prompt Template

> "Armenian needle lace edging in white cotton, looped and knotted thread construction with floral motifs, no fabric base, organic freeform edge, traditional regional lace"

## Anti-Drift

- **No ground mesh**: Unlike most laces, there's no net base
- **Not tatting**: Tatting uses a shuttle; Armenian uses needle and thread
- **Regional tradition**: Specific to Armenian cultural heritage

---

*Loop and knot, no ground. The thread is the structure.*
