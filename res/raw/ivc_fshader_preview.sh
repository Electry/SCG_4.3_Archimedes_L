#extension GL_OES_EGL_image_external : require
precision mediump float;

uniform samplerExternalOES sampler2d;
//uniform sampler2D sampler2d;

varying vec2 vTexCoord;

void main() {

	gl_FragColor = texture2D(sampler2d, vTexCoord);

}