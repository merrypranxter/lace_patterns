# Brussels / Duchesse

Needle lace hybrid. Extremely fine.

## What It Is

Brussels lace (including Duchesse de Bruxelles) is a **hybrid lace combining bobbin and needle techniques**. It's among the finest laces ever made, with incredible detail and delicacy.

## Construction

- **Bobbin mesh ground**: Fine hexagonal net made with bobbins
- **Needle lace motifs**: Scalloped needle lace appliquéd on top
- **Extremely fine thread**: Often silk or finest linen
- **Scalloped edges**: Both ground and motifs have decorative edges

## Visual DNA

- **Two-layer effect**: Needle lace motifs on bobbin mesh
- **Extreme fineness**: Threads barely visible to naked eye
- **Elaborate florals**: Roses, scrolls, leaves in needle lace
- **Scalloped mesh**: The ground itself has wavy edges
- **Common uses**: Royal bridal veils, museum pieces, extreme luxury

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `thread_fineness` | 0.0005–0.003 | Among finest laces |
| `mesh_visibility` | 0.1–0.5 | Ground barely visible |
| `motif_layer` | 0.0–0.1 | Needle lace sits above mesh |
| `scallop_depth` | 0.0–0.05 | Wavy edges |

## GLSL Snippet

```glsl
float brussels(vec2 uv, float fineness) {
    float mesh = hex_grid(uv, fineness) * 0.3;
    float motif = needle_lace(uv, motif_scale);
    return max(mesh, motif);
}
```

## Prompt Template

> "Brussels Duchesse lace in finest white silk, needle lace floral motifs appliquéd on bobbin mesh ground, extreme fineness barely visible, scalloped edges, royal bridal veil quality"

## Anti-Drift

- **Not pure bobbin or needle**: Hybrid technique combining both
- **Extremely fine**: Among the most delicate laces in existence
- **Two-layer construction**: Motifs are added on top of mesh

---

*Bobbin ground, needle motifs. The fineness is the luxury.*
