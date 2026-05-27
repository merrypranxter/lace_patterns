# Filet Lace

Knotted net, not crochet.

## What It Is

Filet lace (true filet, not filet crochet) is made on a **knotted net ground** with embroidered patterns worked over the mesh. It's an ancient technique predating crochet by centuries.

## Construction

- **Knotted net ground**: Net made with square mesh knots
- **Darning stitch**: Pattern worked over the mesh in running stitch
- **Two steps**: Make net first, then embroider pattern
- **Scalloped edge**: Usually finished with decorative border

## Visual DNA

- **Square mesh base**: Regular knotted net underneath
- **Embroidered pattern**: Usually floral or scenic motifs
- **Monochrome**: Typically white or ecru on white
- **Net visible**: The ground mesh shows through the pattern
- **Common uses**: Curtains, table linens, religious vestments, decorative panels

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `mesh_size` | 0.005–0.02 | Net square size |
| `pattern_density` | 0.0–0.8 | How much mesh is covered |
| `darning_stitch` | 0.001–0.005 | Thread width over mesh |

## GLSL Snippet

```glsl
float filet_lace(vec2 uv, float mesh) {
    float net = square_grid(uv, mesh);
    float pattern = darning_stitch(uv, motif);
    return max(net * 0.5, pattern);
}
```

## Prompt Template

> "Filet lace panel in white cotton, knotted square net ground with darning-stitch floral pattern worked over mesh, traditional Mediterranean lace, delicate net visible through embroidery"

## Anti-Drift

- **Not filet crochet**: Filet lace is knotted net + darning; filet crochet is crochet mesh
- **Two-step process**: Net first, then embroidery
- **Ancient technique**: Much older than crochet

---

*Knotted net, darning stitch. The mesh is the canvas.*
