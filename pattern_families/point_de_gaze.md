# Point de Gaze

Brussels style, no ground mesh.

## What It Is

Point de Gaze is a **needle lace from Brussels** that has no mesh ground. The motifs are connected by bars (brides) or buttonholed edges, creating an extremely open, delicate fabric.

## Construction

- **No ground mesh**: Motifs float freely, connected by bars
- **Buttonholed edges**: Each motif edge is worked with buttonhole stitches
- **Brides with picots**: Connecting bars decorated with tiny loops
- **Extremely fine**: Among the most delicate needle laces

## Visual DNA

- **Open floating motifs**: Floral elements connected by thin threads
- **No visible ground**: Pure motif-to-motif connection
- **Buttonholed outlines**: Each element has a raised edge
- **Scattered, airy**: Large areas of open space
- **Common uses**: Extreme luxury, bridal, museum pieces

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `motif_size` | 0.02–0.1 | Size of floral elements |
| `bar_thickness` | 0.001–0.005 | Connecting thread width |
| `picot_density` | 0–20 | Tiny loops on bars |
| `openness` | 0.5–0.95 | Mostly open space |

## GLSL Snippet

```glsl
float point_de_gaze(vec2 uv) {
    float motif = floral_cluster(uv, scale);
    float bars = line_network(uv, thickness);
    float picots = dot_pattern(bars, density);
    return max(motif, bars + picots);
}
```

## Prompt Template

> "Point de Gaze needle lace in white silk, floating floral motifs connected by delicate bars with picots, no mesh ground, extreme openness, Brussels luxury lace"

## Anti-Drift

- **No ground mesh**: Unlike other Brussels laces, Point de Gaze has no net
- **Not bobbin lace**: Purely needle-made
- **Brides connect motifs**: The bars are structural, not decorative mesh

---

*Floating motifs, bar connections. The absence of ground is the feature.*
