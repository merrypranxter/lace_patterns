# Lace Patterns

Negative space becomes the pattern, bitch.

This repository documents lace as **network topology** — systems where holes matter more than threads, and the visual design emerges from the density variation of a filigree network.

## The Core Principle

Lace is defined by its **ground** (the mesh that holds everything together) and its **motifs** (the dense floral/scroll/geometric elements that sit on top of the ground). The pattern is the relationship between solid and void.

- **Ground / Mesh**: The regular network of threads creating open space
- **Motif / Pattern**: The denser decorative elements
- **Bridge / Bar**: Threads connecting motifs to ground or to each other
- **Edge / Scallop**: The ornamental border, often with loops or points

## The Lace Families

### Bobbin Lace
- [Torchon](pattern_families/torchon.md) — geometric, beginner-friendly, straight edges
- [Bucks Point](pattern_families/bucks_point.md) — fine mesh, delicate floral
- [Bedfordshire](pattern_families/bedfordshire.md) — raised plaits, elaborate
- [Brussels / Duchesse](pattern_families/brussels.md) — needle lace hybrid, extremely fine

### Needle Lace
- [Point de Gaze](pattern_families/point_de_gaze.md) — Brussels style, no ground mesh
- [Reticella](pattern_families/reticella.md) — geometric, cutwork origin
- [Armenian needle lace](pattern_families/armenian.md) — looped thread, no fabric base

### Crochet / Knitted Lace
- [Filet crochet lace](pattern_families/filet_lace.md) — square mesh with filled motifs
- [Irish crochet lace](pattern_families/irish_lace.md) — sculptural floral appliqué on mesh
- [Knitted lace](pattern_families/knitted_lace.md) — yarn-overs creating holes

### Tatting
- [Ring and chain](pattern_families/tatting.md) — shuttle lace, knot-based

### Machine / Mixed
- [Chantilly lace](pattern_families/chantilly.md) — fine, floral, often black
- [Guipure](pattern_families/guipure.md) — heavy, no ground mesh, bars connect motifs
- [Alençon](pattern_families/alencon.md) — French, needlepoint ground, corded outlines
- [Venise / Venetian](pattern_families/venise.md) — heavy, geometric, needle lace

## Visual DNA of Lace

- **Transparency**: The ground is more hole than thread
- **Density contrast**: Motifs are dense, ground is sparse
- **Scalloped edge**: Ornamental border with points or loops
- **Radial / bilateral symmetry**: Doilies and edgings have strong symmetry
- **Thread fineness**: The thinner the thread, the more delicate the lace

## Shader Translation: Lace-Specific Parameters

| Parameter | What It Controls | Range | Notes |
|-----------|---------------|-------|-------|
| `ground_density` | Mesh hole size | 0.0–1.0 | 0 = solid, 1 = all holes |
| `motif_density` | How dense motifs are | 0.0–1.0 | Higher = more thread in motif |
| `thread_thickness` | Lace thread diameter | 0.001–0.05 | Very fine for delicate lace |
| `edge_scallop_freq` | Points per edge length | 2–20 | More = finer scallops |
| `alpha_threshold` | Where thread becomes visible | 0.0–1.0 | For transparency masks |
| `ground_type` | Mesh topology | 0–5 | 0=hex, 1=square, 2=tri, 3=freeform |

## Lace-to-Shader Logic

### Ground Mesh
```glsl
float lace_ground(vec2 uv, float density, int type) {
    if (type == 0) return hex_grid(uv, density); // Honeycomb
    if (type == 1) return square_grid(uv, density); // Filet
    if (type == 2) return tri_grid(uv, density); // Torchon
    return fbm(uv * density); // Freeform
}
```

### Motif Alpha Mask
```glsl
float lace_motif(vec2 uv, float motif_mask) {
    float thread = smoothstep(0.0, thread_thickness, motif_mask);
    return thread; // 1.0 = solid thread, 0.0 = open hole
}
```

## Prompt Templates

### Chantilly
> "Black Chantilly lace on lightbox, revealing delicate floral motifs connected by barely-visible mesh bridges, scalloped edge with eyelash fringe, fine silk thread, high contrast silhouette"

### Bobbin Lace
> "Traditional Torchon bobbin lace edging in ecru linen thread, geometric diamond pattern with straight pins still visible at corners, handmade texture, natural fiber"

### Guipure
> "Heavy white guipure lace with dense floral motifs connected by thick bars rather than mesh ground, no transparency in motifs, bold ornamental border, bridal textile"

## Anti-Drift: Lace-Specific

- **Lace is not just "holes"**: The ground mesh type defines the lace family
- **Bobbin vs needle lace**: Bobbin has woven ground; needle builds motifs directly
- **Chantilly is usually black**: White Chantilly exists but is less common
- **Guipure has no ground mesh**: Motifs connected by bars; if it has mesh, it's not guipure
- **Filet crochet is not filet lace**: Filet crochet is square mesh; filet lace is knotted net

---

*This repo treats lace as a network where edge length and hole topology define the pattern. The thread is just the wireframe.*
