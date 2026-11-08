shader_type spatial;
render_mode diffuse_toon, specular_toon;

uniform vec3 raw_color : source_color = vec3(0.96, 0.92, 0.82);
uniform vec3 cooked_color : source_color = vec3(0.88, 0.70, 0.40);
uniform vec3 burnt_color : source_color = vec3(0.30, 0.20, 0.12);
uniform float cook_amount : hint_range(0.0, 2.0) = 0.0; // 0 raw, 1 cooked, 2 burnt

void fragment() {
    vec3 c = cook_amount < 1.0
        ? mix(raw_color, cooked_color, cook_amount)
        : mix(cooked_color, burnt_color, cook_amount - 1.0);
    ALBEDO = c;
    ROUGHNESS = 0.8;
}