 uniform mat4 matrix;
 
 precision mediump float;
 
 attribute vec4 position;
 attribute vec2 inputTextureCoordinate;
 attribute float blockWidth;
 attribute float blockHeight; 
 
 uniform sampler2D samplerHistogram;
 
 varying vec3 colorFactor;
 
 //RGB转YUV的系数 
 const vec3  Wy = vec3(0.299, 0.587, 0.114);
 const vec3  Wu = vec3(-0.169, -0.331, 0.5);
 const vec3  Wv = vec3(0.5, -0.419, -0.081);
 const float  OffsetY = 0.0;
 const float  OffsetU = 0.5020;
 const float  OffsetV = 0.5020;
   
 /**
  * pos的X、Y分量转换为顶点坐标(YUV数据转换成顶点坐标  )
  */
 vec4 getCoordinate(in float posX, in float posY)
 {     
     vec4 pos1;
     if(posX < 0.5)
     {
     	pos1 = vec4(-1.0 + (posX * 2.0) + 0.00390625, posY, 0.0, 1.0);
     }
     else
     {
     	pos1 = vec4(-1.0 + (posX * 2.0), posY, 0.0, 1.0);
     }
     
     return(pos1);
  }
  /**
  * 判断YUV的纹理坐标属于哪个分块，并将相应分块的直方图输出到相应的posY位置
  */
  vec4 getFinalPosition(in float channel)
  {
  	vec4 pos;
  	float x, y, blockX_start, blockX_end, blockY_start, blockY_end;
  	
  	for(int i = 0; i < int(blockWidth*blockHeight); i++)
    {
    	x = mod( float(i), blockWidth ); y = floor( float(i) / blockWidth );
     	blockX_start = x * (1.0/blockWidth); blockX_end = (x+1.0) * (1.0/blockWidth); 
     	blockY_start = y * (1.0/blockHeight); blockY_end = (y+1.0) * (1.0/blockHeight); 
     	if ((inputTextureCoordinate[0] >= blockX_start) && (inputTextureCoordinate[0] <= blockX_end) && (inputTextureCoordinate[1] >= blockY_start) && (inputTextureCoordinate[1] <= blockY_end))
     	{
			pos = getCoordinate(channel, -1.0 + (float(i)+1.0)*(2.0/(blockWidth*blockHeight)));
			break;
    	}
    }
    return(pos);
  }
  
  void main()
  {
     vec4 pos0;
 	 colorFactor = vec3(0.0, 1.0, 0.0);
	 //顶点shader纹理采样（VTF）
 	 pos0 = texture2D(samplerHistogram, inputTextureCoordinate);
 	 float u = dot(pos0.xyz, Wu)+OffsetU;  //RGB转U
  	 gl_Position = getFinalPosition(u);
     gl_PointSize = 1.0;
  }
 