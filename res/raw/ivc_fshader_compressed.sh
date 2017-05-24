precision mediump float;
varying vec2 vTexCoord;
uniform sampler2D sampler2d;
uniform float width;
uniform float height;

void main() {
	highp vec4 texel0, texel1, sum;  	
	
	vec4 cTemp0,cTemp1,cTemp2,cTemp3;	
	
	vec2 offset0 = vec2(-2.0, 0.0); vec2 offset1 = vec2(-1.0, 0.0);vec2 offset2 = vec2(0.0, 0.0); vec2 offset3 = vec2(1.0, 0.0);
	
	cTemp0 = texture2D(sampler2d, vec2(vTexCoord.s + offset0.s/width,vTexCoord.t + offset0.t/height));
	cTemp1 = texture2D(sampler2d, vec2(vTexCoord.s + offset1.s/width,vTexCoord.t + offset1.t/height));
	cTemp2 = texture2D(sampler2d, vec2(vTexCoord.s + offset2.s/width,vTexCoord.t + offset2.t/height));
	cTemp3 = texture2D(sampler2d, vec2(vTexCoord.s + offset3.s/width,vTexCoord.t + offset3.t/height));
	
	texel0.r = cTemp0.r;
	texel0.g = cTemp1.r;
	texel0.b = cTemp2.r;
	texel0.a = cTemp3.r;
	
	gl_FragColor = texel0;
}