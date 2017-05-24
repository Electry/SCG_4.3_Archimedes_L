.class public Lcom/lenovo/scg/common/le3d/Le3dContext;
.super Ljava/lang/Object;
.source "Le3dContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/le3d/Le3dContext$1;,
        Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;
    }
.end annotation


# static fields
.field private static final ANGLE_PERSPECTIVE:F = 40.0f

.field private static final OPAQUE_ALPHA:F = 0.95f

.field public static final SAVE_FLAG_ALL:I = -0x1

.field public static final SAVE_FLAG_ALPHA:I = 0x1

.field public static final SAVE_FLAG_MATRIX:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final GLSL_FragmentShaderTexYUV420sp:Ljava/lang/String;

.field private final GLSL_VertexShaderTexYUV420sp:Ljava/lang/String;

.field private final mComm_FragmentShader:Ljava/lang/String;

.field private final mComm_VertexShader:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentProgram:I

.field private mDstFactor:I

.field private final mFragmentShader:Ljava/lang/String;

.field private final mFragmentShader_NOIF:Ljava/lang/String;

.field private mGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHeight:I

.field private final mLine_FragmentShader:Ljava/lang/String;

.field private final mLine_VertexShader:Ljava/lang/String;

.field private mLookZ:F

.field private mMMatrix:[F

.field private mMVPMatrix:[F

.field private mProgram:I

.field private mProgramComm:I

.field private mProgramLine:I

.field private mProgramTexYUV420sp:I

.field private mProjMatrix:[F

.field private mProject:[F

.field private mRecycledRestoreAction:Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

.field private final mRestoreStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveDstFactor:I

.field private mSaveProgram:I

.field private mSaveSrcFactor:I

.field private mSrcFactor:I

.field private final mTempMatrix:[F

.field private mTexEnvMode:I

.field private mTextureID:I

.field private mVMatrix:[F

.field private final mVertexShader:Ljava/lang/String;

.field private final mVertexShader_NOIF:Ljava/lang/String;

.field private mViewPort:[I

.field private mWidth:I

.field private maAlphaBlendMode:I

.field private maBackgroundColor:I

.field private maPositionHandle:I

.field private maPositionHandleComm:I

.field private maPositionHandleLine:I

.field private maPositionHandleTexYUV420sp:I

.field private maPositionHandleTexYUV420spddd:I

.field private maTexCoordHandleComm:I

.field private maTextureHandle:I

.field private maYUV420spTexCoordUV:I

.field private maYUV420spTexCoordY:I

.field private msClipFlagHandle:I

.field private msClipRectLeftTopHandle:I

.field private msClipRectRightBottomHandle:I

.field private muColorHandle:I

.field private muMVPMatrixHandle:I

.field private muMVPMatrixHandleComm:I

.field private muMVPMatrixHandleLine:I

.field private muMVPMatrixHandleTexYUV420sp:I

.field private muTexSamplerComm:I

.field private muYUV420spEffectNum:I

.field private muYUV420spTexSamplerUV:I

.field private muYUV420spTexSamplerY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "g3d"

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x10

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mViewPort:[I

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProject:[F

    .line 43
    const/16 v0, 0x1e01

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mTexEnvMode:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    .line 228
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nattribute vec4 aBackgroundColor;\nvarying vec4 vBackgroundColor;\nattribute float aAlphaBlendMode;\nvarying float vAlphaBlendMode;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = aTextureCoord;\n  vBackgroundColor = aBackgroundColor;\n  vAlphaBlendMode = aAlphaBlendMode;\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVertexShader:Ljava/lang/String;

    .line 234
    const-string/jumbo v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvarying vec4 vBackgroundColor;\nvarying float vAlphaBlendMode;\nvoid main() {\n\tif(vAlphaBlendMode > 0.0 && vAlphaBlendMode < 1.0)\n\t{\n\t\tgl_FragColor = texture2D(sTexture, vTextureCoord);\n\t\t//gl_FragColor = vBackgroundColor*vBackgroundColor.a + gl_FragColor*vBackgroundColor.a;\n\t\t//gl_FragColor = gl_FragColor*vBackgroundColor.a;\n\t\tgl_FragColor.r = gl_FragColor.r*vBackgroundColor.r;\n\t\tgl_FragColor.g = gl_FragColor.g*vBackgroundColor.g;\n\t\tgl_FragColor.b = gl_FragColor.b*vBackgroundColor.b;\n\t\tgl_FragColor.a = gl_FragColor.a*vBackgroundColor.a;\n\t}\n\telse\n\t{\n\t\tgl_FragColor = texture2D(sTexture, vTextureCoord);\n\t}\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mFragmentShader:Ljava/lang/String;

    .line 250
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nattribute vec4 aBackgroundColor;\nvarying vec4 vBackgroundColor;\nattribute float aAlphaBlendMode;\nvarying float vAlphaBlendMode;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = aTextureCoord;\n\tif(!(aAlphaBlendMode > 0.0 && aAlphaBlendMode < 1.0))\n\t{\n\t\tvBackgroundColor.r = 1.0;\n\t\tvBackgroundColor.g = 1.0;\n\t\tvBackgroundColor.b = 1.0;\n\t\tvBackgroundColor.a = 1.0;\n\t}\n\telse \n\t{\n\t\tvBackgroundColor = aBackgroundColor;\n\t}\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVertexShader_NOIF:Ljava/lang/String;

    .line 264
    const-string/jumbo v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvarying vec4 vBackgroundColor;\nvarying float vAlphaBlendMode;\nuniform vec2 sClipRectLeftTop;\nuniform vec2 sClipRectRightBottom;\nuniform float sClipFlag;\nvoid main() {\n if(sClipFlag > 0.0){\n  if( ((sClipRectLeftTop.x >= 0.0 && sClipRectRightBottom.x >= 0.0) &&   (sClipRectLeftTop.x - gl_FragCoord.x)*(gl_FragCoord.x - sClipRectRightBottom.x)>0.0) ||   ((sClipRectLeftTop.y >= 0.0 && sClipRectRightBottom.y >= 0.0 ) &&  (sClipRectLeftTop.y - gl_FragCoord.y)*(gl_FragCoord.y - sClipRectRightBottom.y)>0.0)){\n     gl_FragColor = texture2D(sTexture, vTextureCoord);\n     gl_FragColor = gl_FragColor * vBackgroundColor;\n     if(sClipRectLeftTop.y - gl_FragCoord.y <= 35.0 || gl_FragCoord.y - sClipRectRightBottom.y <= 35.0 || gl_FragCoord.x - sClipRectLeftTop.x <= 35.0 || sClipRectRightBottom.x - gl_FragCoord.x <= 35.0){\n       vec4 dstColor = gl_FragColor;\n       float srcAlpha = 1.0;\n       if(sClipRectLeftTop.y >= 0.0 && sClipRectLeftTop.y - gl_FragCoord.y <= 35.0){\n           srcAlpha = (sClipRectLeftTop.y - gl_FragCoord.y)/35.0-0.1;\n       }else if(sClipRectRightBottom.y >= 0.0 && gl_FragCoord.y - sClipRectRightBottom.y <= 35.0){\n           srcAlpha = (gl_FragCoord.y - sClipRectRightBottom.y)/35.0-0.1;\n       }else if(sClipRectLeftTop.x >= 0.0 && gl_FragCoord.x - sClipRectLeftTop.x <= 35.0){\n           srcAlpha = (gl_FragCoord.x - sClipRectLeftTop.x)/35.0-0.1;\n       }else if(sClipRectRightBottom.x >= 0.0 && sClipRectRightBottom.x - gl_FragCoord.x <= 35.0){\n           srcAlpha = (sClipRectRightBottom.x - gl_FragCoord.x)/35.0-0.1;\n       }\n       gl_FragColor.a = srcAlpha * gl_FragColor.a;\n     }\n   }else{\n     discard;\n   }\n  }else{\n     gl_FragColor = texture2D(sTexture, vTextureCoord);\n      gl_FragColor = gl_FragColor * vBackgroundColor;\n  }\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mFragmentShader_NOIF:Ljava/lang/String;

    .line 307
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    .line 310
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProjMatrix:[F

    .line 313
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    .line 316
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVMatrix:[F

    .line 319
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mTempMatrix:[F

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mRestoreStack:Ljava/util/ArrayList;

    .line 645
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoordY;\nattribute vec2 aTextureCoordUV;\nvarying vec2 vTextureCoordY;\nvarying vec2 vTextureCoordUV;\nvoid main() \n{\n\tgl_Position = uMVPMatrix * aPosition;\n\tvTextureCoordY = aTextureCoordY;\n\tvTextureCoordUV = aTextureCoordUV;\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->GLSL_VertexShaderTexYUV420sp:Ljava/lang/String;

    .line 649
    const-string/jumbo v0, "precision mediump float;\nvarying vec2 vTextureCoordY;\nvarying vec2 vTextureCoordUV;\nuniform sampler2D sTextureY;\nuniform sampler2D sTextureUV;\nuniform float uEffectNum;\nvoid main() \n{\n\tconst mat3 yuv2rgb = mat3(1,1,1,0,-0.34414,1.772,1.402,-0.71414,0);\n\tvec4 texel0, texel1;\n\ttexel0 = texture2D(sTextureY, vTextureCoordY)\n;\ttexel1 = texture2D(sTextureUV, vTextureCoordUV)\n;\ttexel0.g = texel1.a - 0.5;\n\ttexel0.b = texel1.r - 0.5;\n\ttexel0.rgb = yuv2rgb * texel0.rgb;\n if(uEffectNum < 0.0)    {    gl_FragColor = texel0;\n    }\nelse{\tgl_FragColor = vec4(texel0.r,texel0.r,texel0.r,1.0);\n   }\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->GLSL_FragmentShaderTexYUV420sp:Ljava/lang/String;

    .line 657
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = aTextureCoord;\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mComm_VertexShader:Ljava/lang/String;

    .line 667
    const-string/jumbo v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mComm_FragmentShader:Ljava/lang/String;

    .line 941
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mLine_VertexShader:Ljava/lang/String;

    .line 948
    const-string/jumbo v0, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mLine_FragmentShader:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->init()V

    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->initGLState()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    const/16 v1, 0x10

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mViewPort:[I

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProject:[F

    .line 43
    const/16 v0, 0x1e01

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mTexEnvMode:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    .line 228
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nattribute vec4 aBackgroundColor;\nvarying vec4 vBackgroundColor;\nattribute float aAlphaBlendMode;\nvarying float vAlphaBlendMode;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = aTextureCoord;\n  vBackgroundColor = aBackgroundColor;\n  vAlphaBlendMode = aAlphaBlendMode;\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVertexShader:Ljava/lang/String;

    .line 234
    const-string/jumbo v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvarying vec4 vBackgroundColor;\nvarying float vAlphaBlendMode;\nvoid main() {\n\tif(vAlphaBlendMode > 0.0 && vAlphaBlendMode < 1.0)\n\t{\n\t\tgl_FragColor = texture2D(sTexture, vTextureCoord);\n\t\t//gl_FragColor = vBackgroundColor*vBackgroundColor.a + gl_FragColor*vBackgroundColor.a;\n\t\t//gl_FragColor = gl_FragColor*vBackgroundColor.a;\n\t\tgl_FragColor.r = gl_FragColor.r*vBackgroundColor.r;\n\t\tgl_FragColor.g = gl_FragColor.g*vBackgroundColor.g;\n\t\tgl_FragColor.b = gl_FragColor.b*vBackgroundColor.b;\n\t\tgl_FragColor.a = gl_FragColor.a*vBackgroundColor.a;\n\t}\n\telse\n\t{\n\t\tgl_FragColor = texture2D(sTexture, vTextureCoord);\n\t}\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mFragmentShader:Ljava/lang/String;

    .line 250
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nattribute vec4 aBackgroundColor;\nvarying vec4 vBackgroundColor;\nattribute float aAlphaBlendMode;\nvarying float vAlphaBlendMode;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = aTextureCoord;\n\tif(!(aAlphaBlendMode > 0.0 && aAlphaBlendMode < 1.0))\n\t{\n\t\tvBackgroundColor.r = 1.0;\n\t\tvBackgroundColor.g = 1.0;\n\t\tvBackgroundColor.b = 1.0;\n\t\tvBackgroundColor.a = 1.0;\n\t}\n\telse \n\t{\n\t\tvBackgroundColor = aBackgroundColor;\n\t}\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVertexShader_NOIF:Ljava/lang/String;

    .line 264
    const-string/jumbo v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvarying vec4 vBackgroundColor;\nvarying float vAlphaBlendMode;\nuniform vec2 sClipRectLeftTop;\nuniform vec2 sClipRectRightBottom;\nuniform float sClipFlag;\nvoid main() {\n if(sClipFlag > 0.0){\n  if( ((sClipRectLeftTop.x >= 0.0 && sClipRectRightBottom.x >= 0.0) &&   (sClipRectLeftTop.x - gl_FragCoord.x)*(gl_FragCoord.x - sClipRectRightBottom.x)>0.0) ||   ((sClipRectLeftTop.y >= 0.0 && sClipRectRightBottom.y >= 0.0 ) &&  (sClipRectLeftTop.y - gl_FragCoord.y)*(gl_FragCoord.y - sClipRectRightBottom.y)>0.0)){\n     gl_FragColor = texture2D(sTexture, vTextureCoord);\n     gl_FragColor = gl_FragColor * vBackgroundColor;\n     if(sClipRectLeftTop.y - gl_FragCoord.y <= 35.0 || gl_FragCoord.y - sClipRectRightBottom.y <= 35.0 || gl_FragCoord.x - sClipRectLeftTop.x <= 35.0 || sClipRectRightBottom.x - gl_FragCoord.x <= 35.0){\n       vec4 dstColor = gl_FragColor;\n       float srcAlpha = 1.0;\n       if(sClipRectLeftTop.y >= 0.0 && sClipRectLeftTop.y - gl_FragCoord.y <= 35.0){\n           srcAlpha = (sClipRectLeftTop.y - gl_FragCoord.y)/35.0-0.1;\n       }else if(sClipRectRightBottom.y >= 0.0 && gl_FragCoord.y - sClipRectRightBottom.y <= 35.0){\n           srcAlpha = (gl_FragCoord.y - sClipRectRightBottom.y)/35.0-0.1;\n       }else if(sClipRectLeftTop.x >= 0.0 && gl_FragCoord.x - sClipRectLeftTop.x <= 35.0){\n           srcAlpha = (gl_FragCoord.x - sClipRectLeftTop.x)/35.0-0.1;\n       }else if(sClipRectRightBottom.x >= 0.0 && sClipRectRightBottom.x - gl_FragCoord.x <= 35.0){\n           srcAlpha = (sClipRectRightBottom.x - gl_FragCoord.x)/35.0-0.1;\n       }\n       gl_FragColor.a = srcAlpha * gl_FragColor.a;\n     }\n   }else{\n     discard;\n   }\n  }else{\n     gl_FragColor = texture2D(sTexture, vTextureCoord);\n      gl_FragColor = gl_FragColor * vBackgroundColor;\n  }\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mFragmentShader_NOIF:Ljava/lang/String;

    .line 307
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    .line 310
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProjMatrix:[F

    .line 313
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    .line 316
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVMatrix:[F

    .line 319
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mTempMatrix:[F

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mRestoreStack:Ljava/util/ArrayList;

    .line 645
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoordY;\nattribute vec2 aTextureCoordUV;\nvarying vec2 vTextureCoordY;\nvarying vec2 vTextureCoordUV;\nvoid main() \n{\n\tgl_Position = uMVPMatrix * aPosition;\n\tvTextureCoordY = aTextureCoordY;\n\tvTextureCoordUV = aTextureCoordUV;\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->GLSL_VertexShaderTexYUV420sp:Ljava/lang/String;

    .line 649
    const-string/jumbo v0, "precision mediump float;\nvarying vec2 vTextureCoordY;\nvarying vec2 vTextureCoordUV;\nuniform sampler2D sTextureY;\nuniform sampler2D sTextureUV;\nuniform float uEffectNum;\nvoid main() \n{\n\tconst mat3 yuv2rgb = mat3(1,1,1,0,-0.34414,1.772,1.402,-0.71414,0);\n\tvec4 texel0, texel1;\n\ttexel0 = texture2D(sTextureY, vTextureCoordY)\n;\ttexel1 = texture2D(sTextureUV, vTextureCoordUV)\n;\ttexel0.g = texel1.a - 0.5;\n\ttexel0.b = texel1.r - 0.5;\n\ttexel0.rgb = yuv2rgb * texel0.rgb;\n if(uEffectNum < 0.0)    {    gl_FragColor = texel0;\n    }\nelse{\tgl_FragColor = vec4(texel0.r,texel0.r,texel0.r,1.0);\n   }\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->GLSL_FragmentShaderTexYUV420sp:Ljava/lang/String;

    .line 657
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = aTextureCoord;\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mComm_VertexShader:Ljava/lang/String;

    .line 667
    const-string/jumbo v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mComm_FragmentShader:Ljava/lang/String;

    .line 941
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n}\n"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mLine_VertexShader:Ljava/lang/String;

    .line 948
    const-string/jumbo v0, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mLine_FragmentShader:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->init()V

    .line 67
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->initYuv()V

    .line 68
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->initCommGL()V

    .line 69
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->initLineGL()V

    .line 70
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->initGLState()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/le3d/Le3dContext;)[F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    return-object v0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 370
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 371
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 397
    :cond_0
    :goto_0
    return v2

    .line 375
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 376
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 377
    goto :goto_0

    .line 380
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 381
    .local v2, "program":I
    if-eqz v2, :cond_0

    .line 382
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 383
    const-string v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 384
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 385
    const-string v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 386
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 387
    new-array v0, v6, [I

    .line 388
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 389
    aget v4, v0, v4

    if-eq v4, v6, :cond_3

    .line 390
    sget-object v4, Lcom/lenovo/scg/common/le3d/Le3dContext;->TAG:Ljava/lang/String;

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object v4, Lcom/lenovo/scg/common/le3d/Le3dContext;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 393
    const/4 v2, 0x0

    .line 395
    :cond_3
    const-string v4, "glLinkProgram"

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private freeRestoreConfig(Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;)V
    .locals 1
    .param p1, "action"    # Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mRecycledRestoreAction:Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

    iput-object v0, p1, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;->mNextFree:Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

    .line 553
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mRecycledRestoreAction:Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

    .line 554
    return-void
.end method

.method private initGLState()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    invoke-static {v1}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 95
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 97
    const/16 v0, 0x203

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 105
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 115
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 120
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 122
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->updateBlendFunc(II)V

    .line 125
    const/16 v0, 0xcf5

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 134
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 353
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 354
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 355
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 356
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 357
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 358
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 359
    sget-object v2, Lcom/lenovo/scg/common/le3d/Le3dContext;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v2, Lcom/lenovo/scg/common/le3d/Le3dContext;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 362
    const/4 v1, 0x0

    .line 365
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method

.method private obtainRestoreConfig()Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;
    .locals 2

    .prologue
    .line 557
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mRecycledRestoreAction:Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

    if-eqz v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mRecycledRestoreAction:Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

    .line 559
    .local v0, "result":Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;
    iget-object v1, v0, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;->mNextFree:Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mRecycledRestoreAction:Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

    .line 562
    .end local v0    # "result":Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext$1;)V

    goto :goto_0
.end method

.method private setTextureAlphaBlendBackgroundColor(FFFF)V
    .locals 3
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/4 v2, 0x0

    .line 625
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 626
    .local v0, "clr":[F
    aput p1, v0, v2

    .line 627
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 628
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 629
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 630
    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maBackgroundColor:I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glVertexAttrib4fv(I[FI)V

    .line 631
    const-string v1, "glVertexAttrib4fv"

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 632
    return-void
.end method


# virtual methods
.method public DisablePointerComm()V
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maTexCoordHandleComm:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 764
    const-string v0, "glDisableVertexAttribArray"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 766
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleComm:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 767
    const-string v0, "glDisableVertexAttribArray maPositionHandleComm"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public DisablePointerYuv()V
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maYUV420spTexCoordY:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 873
    const-string v0, "glDisableVertexAttribArray"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 875
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maYUV420spTexCoordUV:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 876
    const-string v0, "glDisableVertexAttribArray"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 878
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 879
    const-string v0, "glDisableVertexAttribArray maPositionHandleTexYUV420sp"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 404
    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dContext;->TAG:Ljava/lang/String;

    const-string v2, "GL_INVALID_ENUM = 1280"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dContext;->TAG:Ljava/lang/String;

    const-string v2, "GL_INVALID_VALUE = 1281"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dContext;->TAG:Ljava/lang/String;

    const-string v2, "GL_INVALID_OPERATION = 1282"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dContext;->TAG:Ljava/lang/String;

    const-string v2, "GL_INVALID_FRAMEBUFFER_OPERATION = 1286"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dContext;->TAG:Ljava/lang/String;

    const-string v2, "GL_OUT_OF_MEMORY = 1285"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_0
    return-void
.end method

.method public disableVertexPointer()V
    .locals 1

    .prologue
    .line 999
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleLine:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1000
    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGLSurfaceView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mHeight:I

    return v0
.end method

.method public getModelView([F)V
    .locals 6
    .param p1, "modelview"    # [F

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    move-object v0, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 225
    return-void
.end method

.method public getProject()[F
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProject:[F

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getViewPort()[I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mViewPort:[I

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mWidth:I

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 416
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nattribute vec4 aBackgroundColor;\nvarying vec4 vBackgroundColor;\nattribute float aAlphaBlendMode;\nvarying float vAlphaBlendMode;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = aTextureCoord;\n\tif(!(aAlphaBlendMode > 0.0 && aAlphaBlendMode < 1.0))\n\t{\n\t\tvBackgroundColor.r = 1.0;\n\t\tvBackgroundColor.g = 1.0;\n\t\tvBackgroundColor.b = 1.0;\n\t\tvBackgroundColor.a = 1.0;\n\t}\n\telse \n\t{\n\t\tvBackgroundColor = aBackgroundColor;\n\t}\n}\n"

    const-string/jumbo v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvarying vec4 vBackgroundColor;\nvarying float vAlphaBlendMode;\nuniform vec2 sClipRectLeftTop;\nuniform vec2 sClipRectRightBottom;\nuniform float sClipFlag;\nvoid main() {\n if(sClipFlag > 0.0){\n  if( ((sClipRectLeftTop.x >= 0.0 && sClipRectRightBottom.x >= 0.0) &&   (sClipRectLeftTop.x - gl_FragCoord.x)*(gl_FragCoord.x - sClipRectRightBottom.x)>0.0) ||   ((sClipRectLeftTop.y >= 0.0 && sClipRectRightBottom.y >= 0.0 ) &&  (sClipRectLeftTop.y - gl_FragCoord.y)*(gl_FragCoord.y - sClipRectRightBottom.y)>0.0)){\n     gl_FragColor = texture2D(sTexture, vTextureCoord);\n     gl_FragColor = gl_FragColor * vBackgroundColor;\n     if(sClipRectLeftTop.y - gl_FragCoord.y <= 35.0 || gl_FragCoord.y - sClipRectRightBottom.y <= 35.0 || gl_FragCoord.x - sClipRectLeftTop.x <= 35.0 || sClipRectRightBottom.x - gl_FragCoord.x <= 35.0){\n       vec4 dstColor = gl_FragColor;\n       float srcAlpha = 1.0;\n       if(sClipRectLeftTop.y >= 0.0 && sClipRectLeftTop.y - gl_FragCoord.y <= 35.0){\n           srcAlpha = (sClipRectLeftTop.y - gl_FragCoord.y)/35.0-0.1;\n       }else if(sClipRectRightBottom.y >= 0.0 && gl_FragCoord.y - sClipRectRightBottom.y <= 35.0){\n           srcAlpha = (gl_FragCoord.y - sClipRectRightBottom.y)/35.0-0.1;\n       }else if(sClipRectLeftTop.x >= 0.0 && gl_FragCoord.x - sClipRectLeftTop.x <= 35.0){\n           srcAlpha = (gl_FragCoord.x - sClipRectLeftTop.x)/35.0-0.1;\n       }else if(sClipRectRightBottom.x >= 0.0 && sClipRectRightBottom.x - gl_FragCoord.x <= 35.0){\n           srcAlpha = (sClipRectRightBottom.x - gl_FragCoord.x)/35.0-0.1;\n       }\n       gl_FragColor.a = srcAlpha * gl_FragColor.a;\n     }\n   }else{\n     discard;\n   }\n  }else{\n     gl_FragColor = texture2D(sTexture, vTextureCoord);\n      gl_FragColor = gl_FragColor * vBackgroundColor;\n  }\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    .line 417
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    if-nez v0, :cond_1

    .line 469
    :cond_0
    return-void

    .line 421
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandle:I

    .line 422
    const-string v0, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 423
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandle:I

    if-ne v0, v2, :cond_2

    .line 424
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maTextureHandle:I

    .line 428
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 429
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maTextureHandle:I

    if-ne v0, v2, :cond_3

    .line 430
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandle:I

    .line 434
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 435
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandle:I

    if-ne v0, v2, :cond_4

    .line 436
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    const-string v1, "aBackgroundColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maBackgroundColor:I

    .line 440
    const-string v0, "glGetAttribLocation aBackgroundColor"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 441
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maBackgroundColor:I

    if-ne v0, v2, :cond_5

    .line 442
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aBackgroundColor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    const-string v1, "aAlphaBlendMode"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maAlphaBlendMode:I

    .line 446
    const-string v0, "glGetAttribLocation aAlphaBlendMode"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 447
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maAlphaBlendMode:I

    if-ne v0, v2, :cond_6

    .line 448
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aAlphaBlendMode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    const-string/jumbo v1, "sClipRectLeftTop"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->msClipRectLeftTopHandle:I

    .line 452
    const-string v0, "glGetUniformLocation msClipRectLeftTopHandle"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 453
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->msClipRectLeftTopHandle:I

    if-ne v0, v2, :cond_7

    .line 454
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for msClipRectLeftTopHandle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_7
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    const-string/jumbo v1, "sClipRectRightBottom"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->msClipRectRightBottomHandle:I

    .line 458
    const-string v0, "glGetUniformLocation msClipRectRightBottomHandle"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 459
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->msClipRectRightBottomHandle:I

    if-ne v0, v2, :cond_8

    .line 460
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for msClipRectRightBottomHandle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_8
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    const-string/jumbo v1, "sClipFlag"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->msClipFlagHandle:I

    .line 464
    const-string v0, "glGetUniformLocation msClipFlagHandle"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 465
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->msClipFlagHandle:I

    if-ne v0, v2, :cond_0

    .line 466
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for msClipFlagHandle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initCommGL()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 706
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = aTextureCoord;\n}\n"

    const-string/jumbo v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramComm:I

    .line 708
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCommGL mProgramComm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramComm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramComm:I

    if-nez v0, :cond_1

    .line 740
    :cond_0
    return-void

    .line 713
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramComm:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleComm:I

    .line 714
    const-string v0, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 715
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleComm:I

    if-ne v0, v3, :cond_2

    .line 716
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramComm:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleComm:I

    .line 721
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 722
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleComm:I

    if-ne v0, v3, :cond_3

    .line 723
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_3
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCommGL muMVPMatrixHandleComm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleComm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramComm:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maTexCoordHandleComm:I

    .line 728
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 729
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maTexCoordHandleComm:I

    if-ne v0, v3, :cond_4

    .line 730
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramComm:I

    const-string/jumbo v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muTexSamplerComm:I

    .line 734
    const-string v0, "glGetUniformLocation sTexture"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 735
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muTexSamplerComm:I

    if-ne v0, v3, :cond_0

    .line 736
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for sTexture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initLineGL()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 964
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n}\n"

    const-string/jumbo v1, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramLine:I

    .line 966
    const-string v0, "jiaxw2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLineGL mProgramLine = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramLine:I

    if-nez v0, :cond_1

    .line 989
    :cond_0
    return-void

    .line 971
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramLine:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleLine:I

    .line 972
    const-string v0, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 973
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleLine:I

    if-ne v0, v3, :cond_2

    .line 974
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramLine:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleLine:I

    .line 978
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 979
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleLine:I

    if-ne v0, v3, :cond_3

    .line 980
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for muMVPMatrixHandleLine"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_3
    const-string v0, "jiaxw2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCommGL muMVPMatrixHandleLine = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramLine:I

    const-string/jumbo v1, "vColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muColorHandle:I

    .line 985
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 986
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muColorHandle:I

    if-ne v0, v3, :cond_0

    .line 987
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for muColorHandle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initYuv()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 792
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoordY;\nattribute vec2 aTextureCoordUV;\nvarying vec2 vTextureCoordY;\nvarying vec2 vTextureCoordUV;\nvoid main() \n{\n\tgl_Position = uMVPMatrix * aPosition;\n\tvTextureCoordY = aTextureCoordY;\n\tvTextureCoordUV = aTextureCoordUV;\n}\n"

    const-string/jumbo v1, "precision mediump float;\nvarying vec2 vTextureCoordY;\nvarying vec2 vTextureCoordUV;\nuniform sampler2D sTextureY;\nuniform sampler2D sTextureUV;\nuniform float uEffectNum;\nvoid main() \n{\n\tconst mat3 yuv2rgb = mat3(1,1,1,0,-0.34414,1.772,1.402,-0.71414,0);\n\tvec4 texel0, texel1;\n\ttexel0 = texture2D(sTextureY, vTextureCoordY)\n;\ttexel1 = texture2D(sTextureUV, vTextureCoordUV)\n;\ttexel0.g = texel1.a - 0.5;\n\ttexel0.b = texel1.r - 0.5;\n\ttexel0.rgb = yuv2rgb * texel0.rgb;\n if(uEffectNum < 0.0)    {    gl_FragColor = texel0;\n    }\nelse{\tgl_FragColor = vec4(texel0.r,texel0.r,texel0.r,1.0);\n   }\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    .line 793
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    if-nez v0, :cond_1

    .line 841
    :cond_0
    return-void

    .line 797
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleTexYUV420sp:I

    .line 798
    const-string v0, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 799
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleTexYUV420sp:I

    if-ne v0, v2, :cond_2

    .line 800
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleTexYUV420sp:I

    .line 805
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 806
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleTexYUV420sp:I

    if-ne v0, v2, :cond_3

    .line 807
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    const-string v1, "aTextureCoordY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maYUV420spTexCoordY:I

    .line 812
    const-string v0, "glGetAttribLocation aTextureCoordY"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 813
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maYUV420spTexCoordY:I

    if-ne v0, v2, :cond_4

    .line 814
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoordY"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    const-string v1, "aTextureCoordUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maYUV420spTexCoordUV:I

    .line 818
    const-string v0, "glGetAttribLocation aTextureCoordUV"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 819
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maYUV420spTexCoordUV:I

    if-ne v0, v2, :cond_5

    .line 820
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoordUV"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    const-string/jumbo v1, "sTextureY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muYUV420spTexSamplerY:I

    .line 824
    const-string v0, "glGetUniformLocation sTextureY"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 825
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muYUV420spTexSamplerY:I

    if-ne v0, v2, :cond_6

    .line 826
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for sTextureY"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    const-string/jumbo v1, "sTextureUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muYUV420spTexSamplerUV:I

    .line 830
    const-string v0, "glGetUniformLocation sTextureUV"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 831
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muYUV420spTexSamplerUV:I

    if-ne v0, v2, :cond_7

    .line 832
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for sTextureUV"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_7
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    const-string/jumbo v1, "uEffectNum"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muYUV420spEffectNum:I

    .line 837
    const-string v0, "glGetUniformLocation muEffectNum"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 838
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muYUV420spEffectNum:I

    if-ne v0, v2, :cond_0

    .line 839
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for muEffectNum"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multMatrixf([FI)V
    .locals 6
    .param p1, "matrix"    # [F
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 486
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mTempMatrix:[F

    .line 487
    .local v0, "temp":[F
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 488
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    return-void
.end method

.method public prepareDraw()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 174
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 179
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setIdentity()V

    .line 181
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 182
    const-string v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVMatrix:[F

    const/4 v1, 0x0

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mLookZ:F

    const/high16 v9, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 186
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 187
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 639
    :cond_0
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 545
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mRestoreStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

    .line 547
    .local v0, "config":Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;
    invoke-virtual {v0, p0}, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;->restore(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 548
    invoke-direct {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->freeRestoreConfig(Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;)V

    .line 549
    return-void
.end method

.method public restoreBlendFunc()V
    .locals 2

    .prologue
    .line 1020
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mSaveSrcFactor:I

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mSaveDstFactor:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->updateBlendFunc(II)V

    .line 1021
    return-void
.end method

.method public restoreProgram()V
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mSaveProgram:I

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    .line 913
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 914
    return-void
.end method

.method public save()V
    .locals 1

    .prologue
    .line 523
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->save(I)V

    .line 524
    return-void
.end method

.method public save(I)V
    .locals 5
    .param p1, "saveFlags"    # I

    .prologue
    const/4 v4, 0x0

    .line 527
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->obtainRestoreConfig()Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;

    move-result-object v0

    .line 535
    .local v0, "config":Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    iget-object v2, v0, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    return-void

    .line 538
    :cond_0
    iget-object v1, v0, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;->mMatrix:[F

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, v1, v4

    goto :goto_0
.end method

.method public saveBlendFunc()V
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mSrcFactor:I

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mSaveSrcFactor:I

    .line 1010
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mDstFactor:I

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mSaveDstFactor:I

    .line 1011
    return-void
.end method

.method public saveProgram()V
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mSaveProgram:I

    .line 885
    return-void
.end method

.method public setClipRect(FFFF)V
    .locals 9
    .param p1, "clipLeft"    # F
    .param p2, "clipTop"    # F
    .param p3, "clipRight"    # F
    .param p4, "clipBottom"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 919
    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 920
    cmpg-float v4, p1, v5

    if-gez v4, :cond_0

    cmpg-float v4, p2, v5

    if-gez v4, :cond_0

    cmpg-float v4, p3, v5

    if-gez v4, :cond_0

    cmpg-float v4, p4, v5

    if-gez v4, :cond_0

    .line 921
    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->msClipFlagHandle:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 922
    const-string v4, "glUniform2fv msClipFlagHandle"

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 937
    :goto_0
    return-void

    .line 925
    :cond_0
    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->msClipFlagHandle:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 926
    const-string v4, "glUniform2fv msClipFlagHandle"

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 928
    new-array v0, v8, [F

    aput p1, v0, v7

    aput p2, v0, v6

    .line 929
    .local v0, "leftTop":[F
    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 930
    .local v1, "leftTopBuffer":Ljava/nio/FloatBuffer;
    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->msClipRectLeftTopHandle:I

    invoke-static {v4, v6, v1}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    .line 931
    const-string v4, "glUniform2fv msClipRectLeftTopHandle"

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 933
    new-array v2, v8, [F

    aput p3, v2, v7

    aput p4, v2, v6

    .line 934
    .local v2, "rightBottom":[F
    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 935
    .local v3, "rightBottomBuffer":Ljava/nio/FloatBuffer;
    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->msClipRectRightBottomHandle:I

    invoke-static {v4, v6, v3}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    .line 936
    const-string v4, "glUniform2fv msClipRectRightBottomHandle"

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0
    .param p1, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 77
    return-void
.end method

.method public setIdentity()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    .line 493
    .local v0, "matrix":[F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 494
    return-void
.end method

.method public setLineColor([F)V
    .locals 3
    .param p1, "color"    # [F

    .prologue
    .line 1003
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramLine:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1004
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muColorHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 1005
    const-string v0, "glVertexAttribPointer muColorHandle"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 1006
    return-void
.end method

.method public setLineVertexPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 992
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleLine:I

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 993
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 994
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleLine:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 995
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 996
    return-void
.end method

.method public setMatrix(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V
    .locals 7
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 574
    sget-object v0, Lcom/lenovo/scg/common/le3d/Le3dContext$1;->$SwitchMap$com$lenovo$scg$common$le3d$LeTextureDataType$TextureDataType:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 614
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 615
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 616
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProjMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 617
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandle:I

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 622
    :goto_0
    return-void

    .line 576
    :pswitch_0
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 577
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 578
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProjMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 579
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandle:I

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0

    .line 583
    :pswitch_1
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 584
    const-string v0, "mProgramTexYUV420sp muMVPMatrixHandleTexYUV420sp"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 586
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProjMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 587
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleTexYUV420sp:I

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 588
    const-string/jumbo v0, "muMVPMatrixHandleTexYUV420sp"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :pswitch_2
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramComm:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 593
    const-string/jumbo v0, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProgramComm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramComm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v0, "mProgramComm muMVPMatrixHandleComm"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 596
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProjMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 597
    const-string v0, "before glUniformMatrix4fv "

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 598
    const-string/jumbo v0, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "muMVPMatrixHandleComm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleComm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleComm:I

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 600
    const-string v0, "glUniformMatrix4fv muMVPMatrixHandleComm"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    :pswitch_3
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramLine:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 605
    const-string/jumbo v0, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProgramLine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramLine:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v0, "mProgramLine muMVPMatrixHandleline"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mVMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 608
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProjMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 609
    const-string/jumbo v0, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "muMVPMatrixHandleline = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleLine:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muMVPMatrixHandleLine:I

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 611
    const-string v0, "glUniformMatrix4fv muMVPMatrixHandleLine"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setProgram(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V
    .locals 2
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    .prologue
    .line 888
    sget-object v0, Lcom/lenovo/scg/common/le3d/Le3dContext$1;->$SwitchMap$com$lenovo$scg$common$le3d$LeTextureDataType$TextureDataType:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 909
    :goto_0
    return-void

    .line 890
    :pswitch_0
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgram:I

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    .line 891
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto :goto_0

    .line 894
    :pswitch_1
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    .line 895
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto :goto_0

    .line 898
    :pswitch_2
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramComm:I

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    .line 899
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto :goto_0

    .line 902
    :pswitch_3
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramLine:I

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    .line 903
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mCurrentProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto :goto_0

    .line 888
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-static {v1, v1, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 145
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3fd657184ae74487L    # 0.3490658503988659

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mLookZ:F

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProjMatrix:[F

    const/high16 v2, 0x42200000    # 40.0f

    int-to-float v3, p1

    int-to-float v4, p2

    div-float/2addr v3, v4

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x461c4000    # 10000.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 155
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mWidth:I

    .line 156
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mHeight:I

    .line 157
    const-string/jumbo v0, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context setSize mWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mHeight ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v0, 0xba2

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mViewPort:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 160
    const-string v0, "jiaxw2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSize----mViewPort[0]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mViewPort:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mViewPort[1]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mViewPort:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mViewProt[2]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mViewPort:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mViewProt[3]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mViewPort:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProjMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProject:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    return-void
.end method

.method public setTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 472
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maTextureHandle:I

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 473
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 474
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 475
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public setTexCoordPointerComm(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    const/4 v3, 0x0

    .line 743
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramComm:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 744
    const-string v0, "mProgramComm"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 745
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muTexSamplerComm:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 746
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pointer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v0, "before glVertexAttribPointer  maTexCoordHandleComm"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 748
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maTexCoordHandleComm:I

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 749
    const-string v0, "glVertexAttribPointer maTexCoordHandleComm"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 750
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 751
    const-string v0, "glEnableVertexAttribArray maTexCoordHandleComm"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public setTexCoordPointerYuv(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    const/4 v3, 0x0

    .line 844
    const-string v0, "before mProgramTexYUV420sp"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 845
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mProgramTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 846
    const-string v0, "mProgramTexYUV420sp"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 847
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muYUV420spTexSamplerY:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 848
    const-string/jumbo v0, "muYUV420spTexSamplerY"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 849
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->muYUV420spTexSamplerUV:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 850
    const-string/jumbo v0, "muYUV420spTexSamplerUV"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 852
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maYUV420spTexCoordY:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 853
    const-string v0, "glEnableVertexAttribArray"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 854
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maYUV420spTexCoordY:I

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 855
    const-string v0, "glVertexAttribPointer maYUV420spTexCoordY"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 857
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maYUV420spTexCoordUV:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 858
    const-string v0, "glEnableVertexAttribArray"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 859
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maYUV420spTexCoordUV:I

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 860
    const-string v0, "glVertexAttribPointer maYUV420spTexCoordUV"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method public setTexEnvMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 221
    return-void
.end method

.method public setVertexPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 479
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandle:I

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 480
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 481
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 482
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public setVertexPointerComm(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 755
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleComm:I

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 756
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 757
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleComm:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 758
    const-string v0, "glEnableVertexAttribArray maPositionHandleComm"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public setVertexPointerYuv(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 864
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleTexYUV420sp:I

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 865
    const-string v0, "glVertexAttribPointer maPositionHandleTexYUV420sp"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 866
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maPositionHandleTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 867
    const-string v0, "glEnableVertexAttribArray maPositionHandleTexYUV420sp"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public updateBlendFunc(II)V
    .locals 0
    .param p1, "srcFactor"    # I
    .param p2, "dstFactor"    # I

    .prologue
    .line 1014
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mSrcFactor:I

    .line 1015
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->mDstFactor:I

    .line 1016
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1017
    return-void
.end method

.method public updateTextureAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 202
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 204
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setTextureAlphaBlendBackgroundColor(FFFF)V

    .line 205
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maAlphaBlendMode:I

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib1f(IF)V

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setTextureAlphaBlendBackgroundColor(FFFF)V

    .line 213
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext;->maAlphaBlendMode:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib1f(IF)V

    goto :goto_0
.end method
