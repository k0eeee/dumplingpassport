shader_type spatial;
render_mode diffuse_toon, specular_toon;

uniform vec3 raw_color : source_color = vec3(0.984, 0.890, 0.706);    // #FBE3B4 pierogi dough
uniform vec3 cooked_color : source_color = vec3(0.898, 0.737, 0.455); // #E5BC74 golden crimp
uniform vec3 burnt_color : source_color = vec3(0.478, 0.290, 0.180);  // #7A4A2E burnt
uniform float cook_amount : hint_range(0.0, 2.0) = 0.0; // 0 raw, 1 cooked, 2 burnt

void fragment() {
    vec3 c = cook_amount < 1.0
        ? mix(raw_color, cooked_color, cook_amount)
        : mix(cooked_color, burnt_color, cook_amount - 1.0);
    ALBEDO = c;
    ROUGHNESS = 0.8;
}