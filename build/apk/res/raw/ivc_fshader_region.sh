#extension GL_OES_EGL_image_external : require
precision mediump float;

uniform samplerExternalOES sampler2d;
uniform sampler2D sampler2dSkymsk;
uniform sampler2D sampler2dVegmsk;

varying vec2 vTexCoord;

const float  OffsetY = 0.0;
const float  OffsetU = 0.5020;
const float  OffsetV = 0.5020;

void main() {
	const mat3 rgb2yuv = mat3(0.299, -0.169, 0.5, 0.587 , -0.331, -0.419, 0.114, 0.5, -0.081);	
	highp vec4 texel0, texel1, texel2, texel3; 
	
	texel0 = texture2D(sampler2d, vTexCoord) ;
	texel1 = texture2D(sampler2dSkymsk, vTexCoord) ;
	texel2 = texture2D(sampler2dVegmsk, vTexCoord) ;
	texel0.rgb = rgb2yuv * texel0.rgb;
	texel0 = vec4(texel0.r+OffsetY, texel0.g+OffsetU, texel0.b+OffsetV, 1.0);
/*  参数对比列表0.5294 --------- 135
		    0.5020 --------- 128
		    0.4902 --------- 125
		    0.5490 --------- 140
		    0.9608 --------- 245
		    0.4627 --------- 118
		    0.4902 --------- 125
		    0.4706 --------- 120
		    0.5098 --------- 130*/
	texel3.r = texel0.r;
	if((texel0.g > 0.5294) && (texel0.b < 0.4706)) 
	{
		texel3.g = 1.0;
		texel3.g = texel3.g * texel1.g;
	}else{
		texel3.g = 0.0;
	}
	if((texel0.g < 0.4902) && (texel0.b < 0.5098))
//	if((texel0.g < 0.4902) && (texel0.b < 0.5490) && ((texel0.g + texel0.b) < 0.9608))
	{
		texel3.b = 1.0;
		texel3.b = texel3.b * texel2.b;
	}else{
		texel3.b = 0.0;
	}
	gl_FragColor = texel3;
}