// lace_common.glsl
#ifndef PI
#define PI 3.14159265359
#endif

float sdCircle(vec2 p, float r) {
    return length(p) - r;
}

float sdSegment(vec2 p, vec2 a, vec2 b) {
    vec2 pa = p - a;
    vec2 ba = b - a;
    float h = clamp(dot(pa, ba) / dot(ba, ba), 0.0, 1.0);
    return length(pa - ba * h);
}

float stroke(float d, float w) {
    return 1.0 - smoothstep(w, w + 0.002, d);
}

mat2 rot(float a) {
    float s = sin(a);
    float c = cos(a);
    return mat2(c, -s, s, c);
}

vec2 polarRepeat(vec2 p, float n) {
    float a = atan(p.y, p.x);
    float r = length(p);
    float sector = 2.0 * PI / n;
    a = mod(a + sector * 0.5, sector) - sector * 0.5;
    return vec2(cos(a), sin(a)) * r;
}

float hash21(vec2 p) {
    p = fract(p * vec2(123.34, 456.21));
    p += dot(p, p + 45.32);
    return fract(p.x * p.y);
}
