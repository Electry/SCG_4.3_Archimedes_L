 #extension GL_OES_EGL_image_external : require
 precision mediump float;
 
 varying vec3 colorFactor;
 
 const float scalingFactor = 1.0 / 256.0;
 
 void main()
 {     
     //��YUVֱ��ͼ�ֱ�ͳ�Ƶ�Ŀ�������RGBͨ����
	 gl_FragColor = vec4(colorFactor * scalingFactor , 1.0);
 }