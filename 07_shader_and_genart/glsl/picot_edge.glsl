// picot_edge.glsl
float picotEdge(vec2 uv, float count, float y, float radius, float threadWidth) {
    vec2 p = uv;
    float x = fract(p.x * count) - 0.5;
    float loop = stroke(sdCircle(vec2(x, p.y - y), radius), threadWidth);
    float baseline = stroke(abs(p.y - y), threadWidth * 0.65);
    return max(loop, baseline);
}
