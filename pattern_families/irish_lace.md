# Irish Lace

Sculptural floral appliqué on mesh.

## What It Is

Irish lace (needle lace variant) features **three-dimensional floral motifs** worked in needle lace techniques, often assembled on a mesh ground or connected by bars. It became a major industry in 19th century Ireland.

## Construction

- **Motif-based**: Individual flowers, leaves worked separately
- **Needle lace technique**: Buttonhole stitch over padded forms
- **Assembly**: Motifs joined on mesh or with brides
- **Crochet cousin**: Irish crochet lace is related but different technique

## Visual DNA

- **3D florals**: Raised, sculptural roses, shamrocks, leaves
- **Mesh or bar joining**: Motifs connected on net or by threads
- **Dense arrangement**: Motifs often cover most of the surface
- **Fine thread**: Usually white or cream cotton or linen
- **Common uses**: Bridal, christening, collars, cuffs, ceremonial

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `motif_height` | 0.0–0.15 | Dimensional relief |
| `floral_type` | 0–3 | Rose, shamrock, leaf, mixed |
| `joining_type` | 0–1 | 0 = mesh, 1 = brides |
| `density` | 0.3–0.9 | Motif coverage |

## GLSL Snippet

```glsl
float irish_lace(vec2 uv, float motif_h) {
    float floral = floral_motif_3d(uv, scale);
    float ground = mesh_or_brides(uv, join_type);
    return max(floral * motif_h, ground * 0.3);
}
```

## Prompt Template

> "Irish needle lace in white linen, sculptural floral motifs with dimensional roses and leaves, joined on delicate mesh ground, 19th-century Irish lace tradition"

## Anti-Drift

- **Not Irish crochet**: Irish needle lace uses needle; Irish crochet uses hook
- **Motif-based**: Individual elements assembled
- **Sculptural**: The 3D quality distinguishes it from flat laces

---

*Needle-made florals. The dimension is the craft.*
