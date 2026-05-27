// guipure_lace_mask.glsl
float leafMotif(vec2 p, float w) {
    p.x *= 1.7;
    float outer = stroke(sdCircle(p, 0.18), w);
    float vein = stroke(sdSegment(p, vec2(-0.10, 0.0), vec2(0.12, 0.0)), w * 0.7);
    return max(outer, vein);
}

float guipureLace(vec2 uv, float repeat, float threadWidth) {
    vec2 id = floor(uv * repeat);
    vec2 g = fract(uv * repeat) - 0.5;

    float a = hash21(id) * 6.28318;
    vec2 p = rot(a) * g;

    float motif = leafMotif(p, threadWidth);
    float bar1 = stroke(sdSegment(g, vec2(-0.5, 0.0), vec2(0.5, 0.0)), threadWidth * 0.55);
    float bar2 = stroke(sdSegment(g, vec2(0.0, -0.5), vec2(0.0, 0.5)), threadWidth * 0.55);

    return clamp(max(motif, max(bar1, bar2)), 0.0, 1.0);
}
