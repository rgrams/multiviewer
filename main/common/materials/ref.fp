varying mediump vec2 var_texcoord0;

uniform lowp sampler2D DIFFUSE_TEXTURE;
uniform lowp vec4 tint;

void main()
{
	lowp vec4 color = texture2D(DIFFUSE_TEXTURE, var_texcoord0.xy);
	color.xyz *= color.w;
	lowp vec3 highlight = vec3(tint.x, tint.x, tint.x);
	color.xyz += highlight;
    gl_FragColor = color;
}
