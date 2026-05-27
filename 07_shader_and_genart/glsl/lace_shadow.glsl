// lace_shadow.glsl
vec3 applyLaceShadow(vec3 base, float laceAlpha, float shadowAlpha) {
    vec3 shadowColor = vec3(0.0);
    return mix(base, shadowColor, shadowAlpha * 0.25 * (1.0 - laceAlpha));
}
