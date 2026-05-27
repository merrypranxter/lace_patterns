# Tatting

Shuttle lace. Knot-based rings and chains.

## What It Is

Tatting is a **lace-making technique** using a shuttle to form knots and rings. It creates durable, non-stretchy lace with characteristic ring-and-chain patterns.

## Construction

- **Shuttle**: Small boat-shaped tool holding thread
- **Double stitch**: The basic knot (first half + second half)
- **Rings**: Closed circles of double stitches with picots
- **Chains**: Arcs of double stitches connecting rings

## Visual DNA

- **Ring and chain**: Circles connected by curved lines
- **Picots**: Small decorative loops on rings and chains
- **Non-stretchy**: Knots make it firm and stable
- **Fine thread**: Usually cotton or silk, very fine
- **Common uses**: Edgings, doilies, earrings, jewelry, collars

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `ring_size` | 0.02–0.1 | Diameter of rings |
| `chain_curvature` | 0.0–0.2 | Arc of chains |
| `picot_size` | 0.001–0.01 | Tiny loops |
| `thread_thickness` | 0.001–0.005 | Very fine |

## GLSL Snippet

```glsl
float tatting(vec2 uv, float ring_r) {
    float ring = smoothstep(ring_r, ring_r - 0.01, length(uv - center));
    float chain = bezier_curve(uv, start, control, end, thickness);
    float picot = dot_pattern(chain_path, picot_freq);
    return max(ring, chain + picot);
}
```

## Prompt Template

> "Tatting lace edging in white cotton thread, ring-and-chain pattern with picot decorations, shuttle-made knots creating firm non-stretchy lace, traditional handmade edging"

## Anti-Drift

- **Not crochet**: Tatting uses shuttle; crochet uses hook
- **Not needle lace**: Tatting knots; needle lace uses buttonhole stitches
- **Knot-based**: The double stitch knot is the foundation

---

*Ring and chain, knot by knot. The shuttle is the tool.*
