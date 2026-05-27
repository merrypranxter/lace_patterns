# Motif Connection Strategies

Motifs may connect with mesh, bars, brides, chains, or appliqued joins.

## Key idea

Lace should be analyzed as a dual system:

- **positive structure**: thread, bars, knots, stitches, cords
- **negative structure**: holes, mesh, open cells, transparent voids

The visual power comes from the relationship between them.

## Useful data representation

```json
{
  "nodes": ["anchor", "crossing", "picot", "motif_center"],
  "edges": ["thread_path", "bar", "chain", "outline"],
  "faces": ["hole", "mesh_cell", "motif_void"],
  "weights": ["thread_thickness", "tension", "opacity"]
}
```
