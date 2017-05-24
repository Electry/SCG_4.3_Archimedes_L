#extension GL_OES_EGL_image_external : require
precision mediump float;

uniform samplerExternalOES sampler2d;
//uniform sampler2D sampler2d;

varying vec2 vTexCoord;

const float  OffsetY = 0.0;
const float  OffsetU = 0.5020;
const float  OffsetV = 0.5020;

void main() {	
	const mat3 rgb2yuv = mat3(0.299, -0.169, 0.5, 0.587 , -0.331, -0.419, 0.114, 0.5, -0.081);
	vec4 texel0; 
	
	texel0 = texture2D(sampler2d, vTexCoord) ;
	texel0.rgb = rgb2yuv * texel0.rgb;
	texel0 = vec4(texel0.r+OffsetY, texel0.g+OffsetU, texel0.b+OffsetV, 1.0);	
	gl_FragColor = texel0;
}