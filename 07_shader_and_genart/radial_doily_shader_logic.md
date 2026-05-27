# Radial Doily Shader Logic

Create radial lace by polar repetition and ring-based motifs.

## Core shader idea

Lace can be built as a layered mask:

1. ground mesh
2. motif curves
3. bars / bridges
4. picots
5. raised cord outline
6. alpha voids
7. fake shadow
8. optional normal map

## Common parameters

- `thread_width`
- `hole_scale`
- `motif_repeat`
- `radial_segments`
- `mesh_density`
- `picot_density`
- `edge_scallop`
- `shadow_offset`
- `irregularity`
- `material_sheen`
