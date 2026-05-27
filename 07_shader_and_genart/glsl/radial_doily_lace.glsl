// radial_doily_lace.glsl
float radialDoily(vec2 uv, float segments, float threadWidth) {
    vec2 p = uv * 2.0 - 1.0;
    p = polarRepeat(p, segments);

    float r = length(p);
    float ring1 = stroke(abs(r - 0.22), threadWidth);
    float ring2 = stroke(abs(r - 0.45), threadWidth);
    float ring3 = stroke(abs(r - 0.72), threadWidth);

    float spoke = stroke(abs(p.x), threadWidth * 0.8) * smoothstep(0.1, 0.8, r);
    float petal = stroke(sdCircle(p - vec2(0.0, 0.48), 0.16), threadWidth);
    float picot = stroke(sdCircle(p - vec2(0.0, 0.86), 0.035), threadWidth * 0.7);

    return clamp(max(max(max(ring1, ring2), max(ring3, spoke)), max(petal, picot)), 0.0, 1.0);
}
