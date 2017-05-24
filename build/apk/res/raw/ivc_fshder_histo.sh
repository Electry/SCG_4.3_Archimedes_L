 #extension GL_OES_EGL_image_external : require
 precision mediump float;
 
 varying vec3 colorFactor;
 
 const float scalingFactor = 1.0 / 256.0;
 
 void main()
 {     
     //将YUV直方图分别统计到目标纹理的RGB通道中
	 gl_FragColor = vec4(colorFactor * scalingFactor , 1.0);
 }