# Mesh Ground Logic

Mesh grounds support motifs and define the base rhythm of lace.

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
