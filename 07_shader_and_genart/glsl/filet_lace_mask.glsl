// filet_lace_mask.glsl
float filetCell(vec2 uv, float grid, float threadWidth) {
    vec2 g = fract(uv * grid);
    float lineX = stroke(abs(g.x - 0.5), threadWidth);
    float lineY = stroke(abs(g.y - 0.5), threadWidth);
    return max(lineX, lineY);
}

float filetFilledBlock(vec2 uv, float grid, float fillPattern) {
    vec2 id = floor(uv * grid);
    float checker = mod(id.x + id.y + fillPattern, 2.0);
    vec2 g = fract(uv * grid) - 0.5;
    float block = 1.0 - smoothstep(0.42, 0.46, max(abs(g.x), abs(g.y)));
    return block * step(0.5, checker);
}

float filetLace(vec2 uv, float grid, float threadWidth, float fillPattern) {
    float mesh = filetCell(uv, grid, threadWidth);
    float blocks = filetFilledBlock(uv, grid, fillPattern);
    return max(mesh, blocks);
}
