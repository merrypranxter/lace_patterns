# Knitted Lace

Yarn-overs creating holes.

## What It Is

Knitted lace is created by **systematic yarn-overs and decreases** in knitting, forming deliberate holes that create patterns. It's distinct from crochet lace in construction and appearance.

## Construction

- **Yarn-overs (YO)**: Create holes by adding extra yarn
- **Decreases**: K2tog, SSK compensate for added stitches
- **Charts**: Usually worked from lace charts
- **Blocking required**: Wet blocking opens up the pattern

## Visual DNA

- **V-shaped ground**: Knit stitches visible between holes
- **Systematic holes**: Holes form geometric or floral patterns
- **Stretchy**: Knit construction gives elasticity
- **Reversible options**: Some knitted lace is reversible
- **Common uses**: Shawls, scarves, edgings, delicate garments

## Shader Parameters

| Parameter | Range | Notes |
|-----------|-------|-------|
| `hole_pattern` | — | Lace chart determines holes |
| `yarn_over_size` | 0.005–0.02 | Size of each hole |
| `block_openness` | 0.0–1.0 | How much blocking reveals pattern |
| `stitch_scale` | 0.01–0.05 | Knit stitch size |

## GLSL Snippet

```glsl
float knitted_lace(vec2 uv, float scale, sampler2D chart) {
    vec2 grid = floor(uv / scale);
    float is_hole = texture(chart, grid / chart_res).r;
    float knit = is_hole < 0.5 ? knit_stitch(uv, scale) : hole(uv, scale);
    return knit;
}
```

## Prompt Template

> "Knitted lace shawl in [COLOR] mohair, systematic yarn-over holes forming [MOTIF] pattern, blocked and stretched to reveal design, delicate stretchy knitted lace"

## Anti-Drift

- **Not crochet lace**: Knitted lace uses needles and yarn-overs; crochet uses hook and chains
- **Blocking essential**: Looks messy before blocking, beautiful after
- **Charts standard**: Almost always worked from charts, not written instructions

---

*Yarn-over and decrease. The hole is the pattern.*
