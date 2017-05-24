.class public Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;,
        Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;,
        Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    }
.end annotation


# static fields
.field private static final ALPHA_UNIFORM:Ljava/lang/String; = "uAlpha"

.field private static final BOUNDS_COORDINATES:[F

.field private static final BOX_COORDINATES:[F

.field private static final CLIPRECT_UNIFORM:Ljava/lang/String; = "uClipRect"

.field private static final COLOR_UNIFORM:Ljava/lang/String; = "uColor"

.field private static final COORDS_PER_VERTEX:I = 0x2

.field private static final COUNT_FILL_VERTEX:I = 0x4

.field private static final COUNT_LINE_VERTEX:I = 0x2

.field private static final COUNT_RECT_VERTEX:I = 0x4

.field private static final DRAW_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

.field private static final DRAW_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

.field private static final ENABLECLIP_UNIFORM:Ljava/lang/String; = "uEnableClip"

.field private static final FLOAT_SIZE:I = 0x4

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final INDEX_ALPHA:I = 0x4

.field private static final INDEX_CLIPRECT:I = 0x6

.field private static final INDEX_COLOR:I = 0x2

.field private static final INDEX_ENALECLIP:I = 0x5

.field private static final INDEX_MATRIX:I = 0x1

.field private static final INDEX_POSITION:I = 0x0

.field private static final INDEX_TEXTURE_COORD:I = 0x2

.field private static final INDEX_TEXTURE_MATRIX:I = 0x2

.field private static final INDEX_TEXTURE_SAMPLER:I = 0x3

.field private static final INITIAL_RESTORE_STATE_SIZE:I = 0x8

.field private static final MATRIX_SIZE:I = 0x10

.field private static final MATRIX_UNIFORM:Ljava/lang/String; = "uMatrix"

.field private static final MESH_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

.field private static final OES_TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final POSITION_ATTRIBUTE:Ljava/lang/String; = "aPosition"

.field private static final POS_VERTICES:[F

.field private static final TAG:Ljava/lang/String;

.field private static final TEXTURE_COORD_ATTRIBUTE:Ljava/lang/String; = "aTextureCoordinate"

.field private static final TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nuniform float uEnableClip;\nuniform vec4 uClipRect;\nvoid main() {\n if(uEnableClip > 0.0){\n    if( (uClipRect.x - gl_FragCoord.x)*(gl_FragCoord.x - uClipRect.z)>0.0 &&    (uClipRect.y - gl_FragCoord.y)*(gl_FragCoord.y - uClipRect.w)>0.0){\n    gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n    gl_FragColor *= uAlpha;\n    }else{\n     discard;\n    } }else{ \n    gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n    gl_FragColor *= uAlpha;\n    }\n }\n"

.field private static final TEXTURE_MATRIX_UNIFORM:Ljava/lang/String; = "uTextureMatrix"

.field private static final TEXTURE_SAMPLER_UNIFORM:Ljava/lang/String; = "uTextureSampler"

.field private static final TEXTURE_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

.field private static final TEX_VERTICES:[F

.field private static final VERTEX_STRIDE:I = 0x8

.field private static final mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;


# instance fields
.field private final GALLERY_BACKGROUND_COLOR:F

.field private final GLSL_FragmentShaderTexYUV420sp:Ljava/lang/String;

.field private final GLSL_VertexShaderTexYUV420sp:Ljava/lang/String;

.field private mAlphas:[F

.field private mBoxCoordinates:I

.field private mClearColor:F

.field private mCountDrawLine:I

.field private mCountDrawMesh:I

.field private mCountFillRect:I

.field private mCountTextureRect:I

.field private mCurrentAlphaIndex:I

.field private mCurrentMatrixIndex:I

.field private final mDeleteBuffers:Lcom/lenovo/scg/gallery3d/util/IntArray;

.field mDrawParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mDrawProgram:I

.field private mFrameBuffer:[I

.field private mHeight:I

.field private mMatrices:[F

.field mMeshParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mMeshProgram:I

.field mOesTextureParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mOesTextureProgram:I

.field private mPosVertices:Ljava/nio/FloatBuffer;

.field private mProgramTexYUV420sp:I

.field private mProjectionMatrix:[F

.field private mSaveFlags:Lcom/lenovo/scg/gallery3d/util/IntArray;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTargetTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempColor:[F

.field private final mTempIntArray:[I

.field private final mTempMatrix:[F

.field private final mTempSourceRect:Landroid/graphics/RectF;

.field private final mTempTargetRect:Landroid/graphics/RectF;

.field private final mTempTextureMatrix:[F

.field private mTempTransformMatrix:[F

.field private mTexVertices:Ljava/nio/FloatBuffer;

.field private mTextureMatrix:[F

.field private mTextureMatrixTransformed:[F

.field mTextureParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mTextureProgram:I

.field private final mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

.field private mWidth:I

.field private maPositionHandleTexYUV420sp:I

.field private maYUV420spTexCoordUV:I

.field private maYUV420spTexCoordY:I

.field private muMVPMatrixHandleTexYUV420sp:I

.field private muYUV420spTexSamplerUV:I

.field private muYUV420spTexSamplerY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 42
    const-class v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    .line 64
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->BOX_COORDINATES:[F

    .line 69
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->BOUNDS_COORDINATES:[F

    .line 296
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20IdImpl;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20IdImpl;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    .line 1117
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->TEX_VERTICES:[F

    .line 1119
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->POS_VERTICES:[F

    return-void

    .line 64
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 69
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1117
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1119
    :array_3
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/16 v7, 0x80

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 141
    const/16 v7, 0x8

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    .line 143
    new-instance v7, Lcom/lenovo/scg/gallery3d/util/IntArray;

    invoke-direct {v7}, Lcom/lenovo/scg/gallery3d/util/IntArray;-><init>()V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/lenovo/scg/gallery3d/util/IntArray;

    .line 145
    const/4 v7, 0x0

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 147
    const/4 v7, 0x0

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 155
    const/16 v7, 0x10

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    .line 235
    const/4 v7, 0x3

    new-array v7, v7, [Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v8, 0x0

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v10, "aPosition"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uMatrix"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uColor"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 240
    const/4 v7, 0x7

    new-array v7, v7, [Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v8, 0x0

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v10, "aPosition"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uMatrix"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uTextureMatrix"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uTextureSampler"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uAlpha"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uEnableClip"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x6

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uClipRect"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 249
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v8, 0x0

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v10, "aPosition"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uMatrix"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uTextureMatrix"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uTextureSampler"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uAlpha"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 256
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v8, 0x0

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v10, "aPosition"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uMatrix"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v10, "aTextureCoordinate"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uTextureSampler"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v10, "uAlpha"

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 263
    new-instance v7, Lcom/lenovo/scg/gallery3d/util/IntArray;

    invoke-direct {v7}, Lcom/lenovo/scg/gallery3d/util/IntArray;-><init>()V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    .line 265
    new-instance v7, Lcom/lenovo/scg/gallery3d/util/IntArray;

    invoke-direct {v7}, Lcom/lenovo/scg/gallery3d/util/IntArray;-><init>()V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcom/lenovo/scg/gallery3d/util/IntArray;

    .line 268
    const/4 v7, 0x0

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    .line 270
    const/4 v7, 0x0

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    .line 272
    const/4 v7, 0x0

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    .line 274
    const/4 v7, 0x0

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    .line 278
    const/4 v7, 0x1

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    .line 281
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    .line 284
    const/16 v7, 0x20

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    .line 286
    const/4 v7, 0x4

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    .line 288
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    .line 290
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    .line 292
    const/16 v7, 0x10

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    .line 294
    const/4 v7, 0x1

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    .line 1070
    const/4 v7, 0x0

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mClearColor:F

    .line 1072
    const/high16 v7, 0x437f0000    # 255.0f

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->GALLERY_BACKGROUND_COLOR:F

    .line 1107
    const/16 v7, 0x10

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    .line 1109
    const/16 v7, 0x8

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrixTransformed:[F

    .line 1121
    const/16 v7, 0x10

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTransformMatrix:[F

    .line 1123
    const-string/jumbo v7, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoordY;\nattribute vec2 aTextureCoordUV;\nvarying vec2 vTextureCoordY;\nvarying vec2 vTextureCoordUV;\nvoid main() \n{\n\tgl_Position = uMVPMatrix * aPosition;\n\tvTextureCoordY = aTextureCoordY;\n\tvTextureCoordUV = aTextureCoordUV;\n}\n"

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->GLSL_VertexShaderTexYUV420sp:Ljava/lang/String;

    .line 1127
    const-string/jumbo v7, "precision mediump float;\nvarying vec2 vTextureCoordY;\nvarying vec2 vTextureCoordUV;\nuniform sampler2D sTextureY;\nuniform sampler2D sTextureUV;\nvoid main() \n{\n\tconst mat3 yuv2rgb = mat3(1,1,1,0,-0.34414,1.772,1.402,-0.71414,0);\n\tvec4 texel0, texel1;\n\ttexel0 = texture2D(sTextureY, vTextureCoordY)\n;\ttexel1 = texture2D(sTextureUV, vTextureCoordUV)\n;\ttexel0.g = texel1.a - 0.5;\n\ttexel0.b = texel1.r - 0.5;\n\ttexel0.rgb = yuv2rgb * texel0.rgb;\n\tgl_FragColor = texel0;\n}\n"

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->GLSL_FragmentShaderTexYUV420sp:Ljava/lang/String;

    .line 299
    const-string/jumbo v7, "wwf"

    const-string v8, "GLES20Canvas"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 301
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v8, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v7, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 302
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v8, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    .line 303
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v7, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->BOX_COORDINATES:[F

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 306
    .local v0, "boxBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mBoxCoordinates:I

    .line 308
    const v7, 0x8b31

    const-string/jumbo v8, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 309
    .local v2, "drawVertexShader":I
    const v7, 0x8b31

    const-string/jumbo v8, "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v6

    .line 310
    .local v6, "textureVertexShader":I
    const v7, 0x8b31

    const-string/jumbo v8, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 311
    .local v3, "meshVertexShader":I
    const v7, 0x8b30

    const-string/jumbo v8, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 312
    .local v1, "drawFragmentShader":I
    const v7, 0x8b30

    const-string/jumbo v8, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nuniform float uEnableClip;\nuniform vec4 uClipRect;\nvoid main() {\n if(uEnableClip > 0.0){\n    if( (uClipRect.x - gl_FragCoord.x)*(gl_FragCoord.x - uClipRect.z)>0.0 &&    (uClipRect.y - gl_FragCoord.y)*(gl_FragCoord.y - uClipRect.w)>0.0){\n    gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n    gl_FragColor *= uAlpha;\n    }else{\n     discard;\n    } }else{ \n    gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n    gl_FragColor *= uAlpha;\n    }\n }\n"

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v5

    .line 313
    .local v5, "textureFragmentShader":I
    const v7, 0x8b30

    const-string v8, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 315
    .local v4, "oesTextureFragmentShader":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, v1, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mDrawProgram:I

    .line 316
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v6, v5, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureProgram:I

    .line 317
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v6, v4, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mOesTextureProgram:I

    .line 318
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v3, v5, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMeshProgram:I

    .line 320
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->initYUV420spShader()V

    .line 322
    const/4 v7, 0x1

    const/16 v8, 0x303

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 323
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 324
    return-void

    .line 1121
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private SetTextureMatrix([F)V
    .locals 9
    .param p1, "matTransform"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1236
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    aput v4, v0, v1

    .line 1237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    aput v3, v0, v6

    .line 1238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    aput v3, v0, v8

    .line 1239
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/4 v2, 0x3

    aput v3, v0, v2

    .line 1241
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/4 v2, 0x4

    aput v3, v0, v2

    .line 1242
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/4 v2, 0x5

    aput v3, v0, v2

    .line 1243
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/4 v2, 0x6

    aput v3, v0, v2

    .line 1244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/4 v2, 0x7

    aput v3, v0, v2

    .line 1246
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v2, 0x8

    aput v4, v0, v2

    .line 1247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v2, 0x9

    aput v4, v0, v2

    .line 1248
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v2, 0xa

    aput v3, v0, v2

    .line 1249
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v2, 0xb

    aput v3, v0, v2

    .line 1251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v2, 0xc

    aput v3, v0, v2

    .line 1252
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v2, 0xd

    aput v4, v0, v2

    .line 1253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v2, 0xe

    aput v3, v0, v2

    .line 1254
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v2, 0xf

    aput v3, v0, v2

    .line 1257
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTransformMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    move-object v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTransformMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrixTransformed:[F

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    aget v3, v3, v1

    aput v3, v0, v2

    .line 1261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrixTransformed:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    aget v3, v3, v6

    aput v3, v0, v2

    .line 1262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrixTransformed:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    aput v3, v0, v2

    .line 1263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrixTransformed:[F

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    aput v3, v0, v2

    .line 1264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrixTransformed:[F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    .line 1265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrixTransformed:[F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    aput v2, v0, v6

    .line 1266
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrixTransformed:[F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    aput v2, v0, v8

    .line 1267
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrixTransformed:[F

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrix:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    aput v3, v0, v2

    .line 1268
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTexVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 1269
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTexVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureMatrixTransformed:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1271
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maYUV420spTexCoordY:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1272
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1273
    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maYUV420spTexCoordY:I

    const/16 v4, 0x1406

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTexVertices:Ljava/nio/FloatBuffer;

    move v3, v8

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1274
    const-string v0, "glVertexAttribPointer maYUV420spTexCoordY"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1276
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maYUV420spTexCoordUV:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1277
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1278
    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maYUV420spTexCoordUV:I

    const/16 v4, 0x1406

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTexVertices:Ljava/nio/FloatBuffer;

    move v3, v8

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1279
    const-string v0, "glVertexAttribPointer maYUV420spTexCoordUV"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method private assembleProgram(II[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I
    .locals 6
    .param p1, "vertexShader"    # I
    .param p2, "fragmentShader"    # I
    .param p3, "params"    # [Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .prologue
    const/4 v4, 0x0

    .line 335
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 336
    .local v2, "program":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 337
    if-nez v2, :cond_0

    .line 338
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create GL program: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 340
    :cond_0
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 341
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 342
    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 343
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 344
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 345
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 346
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    .line 347
    .local v1, "mLinkStatus":[I
    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 348
    aget v3, v1, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 349
    sget-object v3, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    const-string v4, "Could not link program: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v3, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 352
    const/4 v2, 0x0

    .line 354
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_2

    .line 355
    aget-object v3, p3, v0

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->loadHandle(I)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_2
    return v2
.end method

.method private bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;)Z
    .locals 4
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    .prologue
    .line 1225
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getTexElementsNum()I

    move-result v1

    .line 1226
    .local v1, "nTexElementsNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1227
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v2

    .line 1228
    .local v2, "tex":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->onBind(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1229
    const/4 v3, 0x0

    .line 1232
    .end local v2    # "tex":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :goto_1
    return v3

    .line 1226
    .restart local v2    # "tex":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1232
    .end local v2    # "tex":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;)Z
    .locals 4
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;

    .prologue
    .line 1213
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->getTexElementsNum()I

    move-result v1

    .line 1214
    .local v1, "nTexElementsNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1215
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    move-result-object v2

    .line 1216
    .local v2, "tex":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->onBind(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1217
    const/4 v3, 0x0

    .line 1220
    .end local v2    # "tex":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :goto_1
    return v3

    .line 1214
    .restart local v2    # "tex":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1220
    .end local v2    # "tex":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static checkError()V
    .locals 5

    .prologue
    .line 1015
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 1016
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 1017
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 1018
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GL error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private static checkFramebufferStatus()V
    .locals 5

    .prologue
    .line 935
    const v2, 0x8d40

    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    .line 936
    .local v1, "status":I
    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 937
    const-string v0, ""

    .line 938
    .local v0, "msg":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 952
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 940
    :pswitch_1
    const-string v0, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    .line 941
    goto :goto_0

    .line 943
    :pswitch_2
    const-string v0, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    .line 944
    goto :goto_0

    .line 946
    :pswitch_3
    const-string v0, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    .line 947
    goto :goto_0

    .line 949
    :pswitch_4
    const-string v0, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    .line 954
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    .line 938
    nop

    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1024
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 1025
    sget-object v1, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1028
    :cond_0
    return-void
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 9
    .param p0, "source"    # Landroid/graphics/RectF;
    .param p1, "target"    # Landroid/graphics/RectF;
    .param p2, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 677
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    .line 678
    .local v3, "width":I
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    .line 679
    .local v0, "height":I
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 680
    .local v2, "texWidth":I
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v1

    .line 683
    .local v1, "texHeight":I
    iget v6, p0, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    .line 684
    iget v6, p0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->right:F

    .line 685
    iget v6, p0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    .line 686
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    .line 689
    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 690
    .local v4, "xBound":F
    iget v6, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 691
    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 692
    iput v4, p0, Landroid/graphics/RectF;->right:F

    .line 694
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 695
    .local v5, "yBound":F
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 696
    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 697
    iput v5, p0, Landroid/graphics/RectF;->bottom:F

    .line 700
    :cond_1
    return-void
.end method

.method private static copyTextureCoordinates(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V
    .locals 8
    .param p0, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p1, "outRect"    # Landroid/graphics/RectF;

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, "left":I
    const/4 v3, 0x0

    .line 629
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    .line 630
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    .line 631
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->hasBorder()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 632
    const/4 v1, 0x1

    .line 633
    const/4 v3, 0x1

    .line 634
    add-int/lit8 v2, v2, -0x1

    .line 635
    add-int/lit8 v0, v0, -0x1

    .line 637
    :cond_0
    int-to-float v4, v1

    int-to-float v5, v3

    int-to-float v6, v2

    int-to-float v7, v0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 638
    return-void
.end method

.method private static createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 5
    .param p0, "values"    # [F

    .prologue
    const/4 v4, 0x0

    .line 328
    array-length v2, p0

    mul-int/lit8 v1, v2, 0x4

    .line 329
    .local v1, "size":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 330
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    array-length v2, p0

    invoke-virtual {v0, p0, v4, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    return-object v0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1134
    const v5, 0x8b31

    invoke-static {v5, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 1135
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 1160
    :cond_0
    :goto_0
    return v2

    .line 1139
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 1140
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 1141
    goto :goto_0

    .line 1144
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 1145
    .local v2, "program":I
    if-eqz v2, :cond_0

    .line 1146
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1147
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1148
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1149
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1150
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1151
    new-array v0, v6, [I

    .line 1152
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1153
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 1154
    sget-object v4, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    sget-object v4, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1157
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private draw(IIIFFFFIF)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "color"    # I
    .param p9, "lineWidth"    # F

    .prologue
    .line 535
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, p2, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->prepareDraw(IIF)V

    .line 536
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move-object v2, p0

    move v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->draw([Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V

    .line 537
    return-void
.end method

.method private draw(IIIFFFFLcom/lenovo/scg/gallery3d/glrenderer/GLPaint;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "paint"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;

    .prologue
    .line 531
    invoke-virtual/range {p8 .. p8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFIF)V

    .line 532
    return-void
.end method

.method private draw([Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V
    .locals 8
    .param p1, "params"    # [Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .param p2, "type"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F

    .prologue
    const/4 v7, 0x0

    .line 591
    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setMatrix([Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V

    .line 592
    aget-object v0, p1, v7

    iget v6, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    .line 593
    .local v6, "positionHandle":I
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 594
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 595
    invoke-static {p2, v7, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 596
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 597
    invoke-static {v6}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 598
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 599
    return-void
.end method

.method private drawTextureRect(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    .line 662
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setTextureMatrix(Landroid/graphics/RectF;)V

    .line 663
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-direct {p0, p1, v0, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V

    .line 664
    return-void
.end method

.method private drawTextureRect(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V
    .locals 8
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "textureMatrix"    # [F
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 703
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move-result-object v1

    .line 704
    .local v1, "params":[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setPosition([Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V

    .line 705
    aget-object v0, v1, v6

    iget v0, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 706
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 707
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isFlippedVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    .line 709
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->translate(FF)V

    .line 710
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v5, v0, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->scale(FFF)V

    .line 711
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->translate(FF)V

    .line 713
    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x4

    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->draw([Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V

    .line 714
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isFlippedVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->restore()V

    .line 717
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    .line 718
    return-void
.end method

.method private enableBlending(Z)V
    .locals 1
    .param p1, "enableBlending"    # Z

    .prologue
    const/16 v0, 0xbe2

    .line 572
    if-eqz p1, :cond_0

    .line 573
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 574
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 579
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 577
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    goto :goto_0
.end method

.method private getClearColor()F
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mClearColor:F

    return v0
.end method

.method private getColor(I)[F
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 560
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v5

    mul-float v0, v4, v5

    .line 561
    .local v0, "alpha":F
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v3, v4, v0

    .line 562
    .local v3, "red":F
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v2, v4, v0

    .line 563
    .local v2, "green":F
    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v1, v4, v0

    .line 564
    .local v1, "blue":F
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x0

    aput v3, v4, v5

    .line 565
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x1

    aput v2, v4, v5

    .line 566
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x2

    aput v1, v4, v5

    .line 567
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x3

    aput v0, v4, v5

    .line 568
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    return-object v4
.end method

.method private getTargetTexture()Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    return-object v0
.end method

.method private initYUV420spShader()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1165
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoordY;\nattribute vec2 aTextureCoordUV;\nvarying vec2 vTextureCoordY;\nvarying vec2 vTextureCoordUV;\nvoid main() \n{\n\tgl_Position = uMVPMatrix * aPosition;\n\tvTextureCoordY = aTextureCoordY;\n\tvTextureCoordUV = aTextureCoordUV;\n}\n"

    const-string/jumbo v1, "precision mediump float;\nvarying vec2 vTextureCoordY;\nvarying vec2 vTextureCoordUV;\nuniform sampler2D sTextureY;\nuniform sampler2D sTextureUV;\nvoid main() \n{\n\tconst mat3 yuv2rgb = mat3(1,1,1,0,-0.34414,1.772,1.402,-0.71414,0);\n\tvec4 texel0, texel1;\n\ttexel0 = texture2D(sTextureY, vTextureCoordY)\n;\ttexel1 = texture2D(sTextureUV, vTextureCoordUV)\n;\ttexel0.g = texel1.a - 0.5;\n\ttexel0.b = texel1.r - 0.5;\n\ttexel0.rgb = yuv2rgb * texel0.rgb;\n\tgl_FragColor = texel0;\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProgramTexYUV420sp:I

    .line 1166
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProgramTexYUV420sp:I

    if-nez v0, :cond_0

    .line 1209
    :goto_0
    return-void

    .line 1170
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProgramTexYUV420sp:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maPositionHandleTexYUV420sp:I

    .line 1171
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1172
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maPositionHandleTexYUV420sp:I

    if-ne v0, v2, :cond_1

    .line 1173
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1176
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProgramTexYUV420sp:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muMVPMatrixHandleTexYUV420sp:I

    .line 1177
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1178
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muMVPMatrixHandleTexYUV420sp:I

    if-ne v0, v2, :cond_2

    .line 1179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1183
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProgramTexYUV420sp:I

    const-string v1, "aTextureCoordY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maYUV420spTexCoordY:I

    .line 1184
    const-string v0, "glGetAttribLocation aTextureCoordY"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1185
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maYUV420spTexCoordY:I

    if-ne v0, v2, :cond_3

    .line 1186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoordY"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProgramTexYUV420sp:I

    const-string v1, "aTextureCoordUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maYUV420spTexCoordUV:I

    .line 1190
    const-string v0, "glGetAttribLocation aTextureCoordUV"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1191
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maYUV420spTexCoordUV:I

    if-ne v0, v2, :cond_4

    .line 1192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoordUV"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1195
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProgramTexYUV420sp:I

    const-string/jumbo v1, "sTextureY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muYUV420spTexSamplerY:I

    .line 1196
    const-string v0, "glGetUniformLocation sTextureY"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1197
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muYUV420spTexSamplerY:I

    if-ne v0, v2, :cond_5

    .line 1198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for sTextureY"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1201
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProgramTexYUV420sp:I

    const-string/jumbo v1, "sTextureUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muYUV420spTexSamplerUV:I

    .line 1202
    const-string v0, "glGetUniformLocation sTextureUV"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1203
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muYUV420spTexSamplerUV:I

    if-ne v0, v2, :cond_6

    .line 1204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for sTextureUV"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1206
    :cond_6
    sget-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->TEX_VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTexVertices:Ljava/nio/FloatBuffer;

    .line 1207
    sget-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->POS_VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mPosVertices:Ljava/nio/FloatBuffer;

    .line 1208
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mPosVertices:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->POS_VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "shaderCode"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 366
    .local v0, "shader":I
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 368
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 369
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 371
    return v0
.end method

.method private prepareDraw(IIF)V
    .locals 9
    .param p1, "offset"    # I
    .param p2, "color"    # I
    .param p3, "lineWidth"    # F

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 540
    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mDrawProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 541
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 542
    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-lez v4, :cond_0

    .line 543
    invoke-static {p3}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 544
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 546
    :cond_0
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getColor(I)[F

    move-result-object v1

    .line 547
    .local v1, "colorArray":[F
    aget v4, v1, v7

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v0, v2

    .line 548
    .local v0, "blendingEnabled":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    .line 549
    if-eqz v0, :cond_1

    .line 550
    aget v4, v1, v3

    aget v5, v1, v2

    aget v6, v1, v8

    aget v7, v1, v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 551
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 554
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v4, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 555
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setPosition([Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V

    .line 556
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 557
    return-void

    .end local v0    # "blendingEnabled":Z
    :cond_2
    move v0, v3

    .line 547
    goto :goto_0
.end method

.method private prepareTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;I[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V
    .locals 2
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "program"    # I
    .param p3, "params"    # [Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .prologue
    .line 757
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 758
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 759
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getEnableBlending()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    .line 760
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 761
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 762
    invoke-virtual {p1, p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->onBind(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z

    .line 763
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 764
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 765
    const/4 v0, 0x3

    aget-object v0, p3, v0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureUnitId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 767
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 768
    const/4 v0, 0x4

    aget-object v0, p3, v0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 769
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 771
    return-void

    .line 759
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .locals 9
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    const/16 v8, 0xde1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 723
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 724
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 725
    .local v1, "params":[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTextureProgram:I

    .line 730
    .local v2, "program":I
    :goto_0
    invoke-direct {p0, p1, v2, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;I[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V

    .line 733
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 734
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->IsEnableClip()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 736
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 737
    aget-object v4, v1, v5

    iget v4, v4, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 738
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 753
    :cond_0
    :goto_1
    return-object v1

    .line 727
    .end local v1    # "params":[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .end local v2    # "program":I
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 728
    .restart local v1    # "params":[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mOesTextureProgram:I

    .restart local v2    # "program":I
    goto :goto_0

    .line 740
    :cond_2
    aget-object v4, v1, v5

    iget v4, v4, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 741
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 742
    const/4 v4, 0x4

    new-array v3, v4, [F

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    aput v4, v3, v7

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    aput v5, v3, v4

    .line 744
    .local v3, "rectBuffer":[F
    invoke-static {v3}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 745
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    const/4 v4, 0x6

    aget-object v4, v1, v4

    iget v4, v4, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v4, v7, v0}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    .line 746
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    goto :goto_1

    .line 749
    .end local v0    # "buffer":Ljava/nio/FloatBuffer;
    .end local v3    # "rectBuffer":[F
    :cond_3
    aget-object v4, v1, v5

    iget v4, v4, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_1
.end method

.method private static printMatrix(Ljava/lang/String;[FI)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 1034
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1035
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    .line 1036
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1038
    :cond_0
    add-int v2, p2, v1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1033
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    sget-object v2, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void
.end method

.method private setMatrix(FFFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 1284
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v6, 0x0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 1285
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p3, p4, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1286
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    move v3, v8

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1287
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muMVPMatrixHandleTexYUV420sp:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    invoke-static {v0, v2, v1, v3, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1288
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1289
    return-void
.end method

.method private setMatrix([Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V
    .locals 10
    .param p1, "params"    # [Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 602
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 603
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p4, p5, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 604
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    move v3, v9

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 605
    aget-object v0, p1, v8

    iget v0, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    invoke-static {v0, v8, v1, v2, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 606
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 607
    return-void
.end method

.method private setPosition([Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V
    .locals 7
    .param p1, "params"    # [Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .param p2, "offset"    # I

    .prologue
    const v6, 0x8892

    const/4 v3, 0x0

    .line 582
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mBoxCoordinates:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 583
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 584
    aget-object v0, p1, v3

    iget v0, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    mul-int/lit8 v5, p2, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 585
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 586
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 587
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 588
    return-void
.end method

.method private setRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V
    .locals 5
    .param p1, "oldTexture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .prologue
    const/4 v1, 0x1

    const v4, 0x8d40

    const/4 v3, 0x0

    .line 906
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 907
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 908
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 909
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    aget v0, v0, v3

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 910
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 918
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 919
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mScreenWidth:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mScreenHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    .line 932
    :goto_1
    return-void

    .line 911
    :cond_1
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 912
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 913
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 914
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 915
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    goto :goto_0

    .line 921
    :cond_2
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    .line 923
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 924
    invoke-virtual {p2, p0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->prepare(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 927
    :cond_3
    const v0, 0x8ce0

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getTarget()I

    move-result v1

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getId()I

    move-result v2

    invoke-static {v4, v0, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 928
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 930
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkFramebufferStatus()V

    goto :goto_1
.end method

.method private setTextureMatrix(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "source"    # Landroid/graphics/RectF;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    aput v2, v0, v1

    .line 668
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    aput v2, v0, v1

    .line 669
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/16 v1, 0xc

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 670
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/16 v1, 0xd

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    .line 671
    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .locals 6
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "elementSize"    # I

    .prologue
    const v5, 0x8892

    const/4 v4, 0x0

    .line 1004
    sget-object v1, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    invoke-interface {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 1005
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1006
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    aget v0, v1, v4

    .line 1007
    .local v0, "bufferId":I
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1008
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1009
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    mul-int/2addr v1, p2

    const v2, 0x88e4

    invoke-static {v5, v1, p1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1010
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1011
    return v0
.end method


# virtual methods
.method public beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->save()V

    .line 896
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getTargetTexture()Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-result-object v0

    .line 897
    .local v0, "oldTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 899
    return-void
.end method

.method public clearBuffer()V
    .locals 4

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getClearColor()F

    move-result v0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getClearColor()F

    move-result v1

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getClearColor()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 394
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 395
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 396
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 397
    return-void
.end method

.method public clearBuffer(FFFF)V
    .locals 4
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 401
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 402
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 403
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 404
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getClearColor()F

    move-result v0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getClearColor()F

    move-result v1

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getClearColor()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 405
    return-void
.end method

.method public clearBuffer([F)V
    .locals 4
    .param p1, "argb"    # [F

    .prologue
    .line 411
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 412
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 413
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 414
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 415
    return-void
.end method

.method public deleteBuffer(I)V
    .locals 2
    .param p1, "bufferId"    # I

    .prologue
    .line 853
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    monitor-enter v1

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcom/lenovo/scg/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/util/IntArray;->add(I)V

    .line 855
    monitor-exit v1

    .line 856
    return-void

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 7

    .prologue
    .line 860
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    monitor-enter v2

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    .line 862
    .local v0, "ids":Lcom/lenovo/scg/gallery3d/util/IntArray;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 863
    sget-object v1, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 864
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->clear()V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcom/lenovo/scg/gallery3d/util/IntArray;

    .line 868
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 869
    sget-object v1, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 870
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->clear()V

    .line 872
    :cond_1
    monitor-exit v2

    .line 873
    return-void

    .line 872
    .end local v0    # "ids":Lcom/lenovo/scg/gallery3d/util/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawLine(FFFFLcom/lenovo/scg/gallery3d/glrenderer/GLPaint;)V
    .locals 9
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "paint"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;

    .prologue
    .line 520
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    sub-float v6, p3, p1

    sub-float v7, p4, p2

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFLcom/lenovo/scg/gallery3d/glrenderer/GLPaint;)V

    .line 521
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    .line 522
    return-void
.end method

.method public drawMesh(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIIIII)V
    .locals 8
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xyBuffer"    # I
    .param p5, "uvBuffer"    # I
    .param p6, "indexBuffer"    # I
    .param p7, "indexCount"    # I

    .prologue
    .line 775
    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMeshProgram:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, p1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;I[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V

    .line 777
    const v2, 0x8893

    invoke-static {v2, p6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 778
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 780
    const v2, 0x8892

    invoke-static {v2, p4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 781
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 782
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v0, v2, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    .line 783
    .local v0, "positionHandle":I
    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 784
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 786
    const v2, 0x8892

    invoke-static {v2, p5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 787
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 788
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v1, v2, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    .line 789
    .local v1, "texCoordHandle":I
    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 790
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 791
    const v2, 0x8892

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 792
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 794
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 795
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 796
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 797
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 799
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    int-to-float v4, p2

    int-to-float v5, p3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setMatrix([Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V

    .line 800
    const/4 v2, 0x5

    const/16 v3, 0x1401

    const/4 v4, 0x0

    invoke-static {v2, p7, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 801
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 803
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 804
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 805
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 806
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 807
    const v2, 0x8893

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 808
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 809
    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    .line 810
    return-void
.end method

.method public drawMixed(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IFIIII)V
    .locals 6
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I

    .prologue
    .line 814
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->copyTextureCoordinates(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V

    .line 815
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p4

    int-to-float v2, p5

    add-int v3, p4, p6

    int-to-float v3, v3

    add-int v4, p5, p7

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 816
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->drawMixed(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 817
    return-void
.end method

.method public drawMixed(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 10
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "source"    # Landroid/graphics/RectF;
    .param p5, "target"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 821
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    .line 826
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v8

    .line 827
    .local v8, "currentAlpha":F
    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 829
    .local v6, "cappedRatio":F
    sub-float v0, v2, v6

    mul-float v9, v0, v8

    .line 830
    .local v9, "textureAlpha":F
    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    .line 831
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 833
    mul-float v7, v6, v8

    .line 834
    .local v7, "colorAlpha":F
    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    .line 835
    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->fillRect(FFFFI)V

    .line 837
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->restore()V

    goto :goto_0
.end method

.method public drawRect(FFFFLcom/lenovo/scg/gallery3d/glrenderer/GLPaint;)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "paint"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;

    .prologue
    .line 526
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFLcom/lenovo/scg/gallery3d/glrenderer/GLPaint;)V

    .line 527
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    .line 528
    return-void
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 5
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 617
    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->copyTextureCoordinates(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V

    .line 621
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int v3, p2, p4

    int-to-float v3, v3

    add-int v4, p3, p5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 622
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 623
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 642
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 646
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 648
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 649
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V
    .locals 5
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "textureTransform"    # [F
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 654
    if-lez p5, :cond_0

    if-gtz p6, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p4

    add-int v3, p3, p5

    int-to-float v3, v3

    add-int v4, p4, p6

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 658
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;[FIIII)V
    .locals 7
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;
    .param p2, "mTextureTransform"    # [F
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 1364
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    .line 1365
    return-void
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;[FIIII)V
    .locals 8
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;
    .param p2, "mTextureTransform"    # [F
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    const v7, 0x84c0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1330
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProgramTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1331
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    .line 1332
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;)Z

    .line 1333
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->SetTextureMatrix([F)V

    .line 1334
    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v4, p6

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setMatrix(FFFF)V

    .line 1335
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maPositionHandleTexYUV420sp:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mPosVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1336
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1338
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maPositionHandleTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1339
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTextureUnitId()I

    move-result v0

    add-int/2addr v0, v7

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1342
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1343
    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTarget()I

    move-result v0

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1344
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1345
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muYUV420spTexSamplerY:I

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTextureUnitId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1346
    const-string v0, "glUniform1i"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTextureUnitId()I

    move-result v0

    add-int/2addr v0, v7

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1349
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1350
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTarget()I

    move-result v0

    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1351
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1352
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muYUV420spTexSamplerUV:I

    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTextureUnitId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1353
    const-string v0, "glUniform1i"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1355
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1356
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1358
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maPositionHandleTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1359
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1360
    return-void

    :cond_1
    move v0, v3

    .line 1331
    goto/16 :goto_0
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;[FIIII)V
    .locals 8
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;
    .param p2, "mTextureTransform"    # [F
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    const v7, 0x84c0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1295
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProgramTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1296
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    .line 1297
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;)Z

    .line 1298
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->SetTextureMatrix([F)V

    .line 1299
    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v4, p6

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setMatrix(FFFF)V

    .line 1300
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maPositionHandleTexYUV420sp:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mPosVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1301
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1303
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maPositionHandleTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1304
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->getTextureUnitId()I

    move-result v0

    add-int/2addr v0, v7

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1307
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1308
    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->getTarget()I

    move-result v0

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1309
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1310
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muYUV420spTexSamplerY:I

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->getTextureUnitId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1311
    const-string v0, "glUniform1i"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->getTextureUnitId()I

    move-result v0

    add-int/2addr v0, v7

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1314
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1315
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->getTarget()I

    move-result v0

    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1316
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1317
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muYUV420spTexSamplerUV:I

    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->getTextureUnitId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1318
    const-string v0, "glUniform1i"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1320
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1321
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1323
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maPositionHandleTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1324
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1325
    return-void

    :cond_1
    move v0, v3

    .line 1296
    goto/16 :goto_0
.end method

.method public drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIZ)V
    .locals 9
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "textureMatrix"    # [F
    .param p3, "nRotation"    # I
    .param p4, "bMirroH"    # Z

    .prologue
    const/16 v1, 0x10

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1376
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move-result-object v6

    .line 1377
    .local v6, "params":[Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    invoke-direct {p0, v6, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setPosition([Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V

    .line 1378
    const/16 v0, 0x5a

    if-ne p3, v0, :cond_0

    .line 1380
    invoke-static {p2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1381
    if-eqz p4, :cond_0

    .line 1383
    invoke-static {p2, v3, v5, v4, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1384
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p2, v3, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1387
    :cond_0
    const/4 v0, 0x2

    aget-object v0, v6, v0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v0, v8, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1388
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1391
    const/16 v0, 0x5a

    if-ne p3, v0, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget v2, p1, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mHeight:I

    int-to-float v2, v2

    iget v4, p1, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mWidth:I

    int-to-float v4, v4

    invoke-static {v0, v3, v2, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1400
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1401
    aget-object v0, v6, v8

    iget v0, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    invoke-static {v0, v8, v3, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1403
    aget-object v0, v6, v3

    iget v7, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    .line 1404
    .local v7, "positionHandle":I
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1405
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1406
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1407
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1408
    invoke-static {v7}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1409
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1410
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    .line 1411
    return-void

    .line 1397
    .end local v7    # "positionHandle":I
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    int-to-float v2, v2

    invoke-static {v0, v3, v4, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1398
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget v2, p1, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v0, v3, v2, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0
.end method

.method public drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;[FIZ)V
    .locals 7
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;
    .param p2, "textureMatrix"    # [F
    .param p3, "nRotation"    # I
    .param p4, "bMirroH"    # Z

    .prologue
    const/16 v1, 0x10

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1421
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProgramTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1422
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    const v2, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    :cond_0
    move v0, v6

    :goto_0
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    .line 1423
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;)Z

    .line 1424
    const/16 v0, 0x5a

    if-ne p3, v0, :cond_1

    .line 1426
    invoke-static {p2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1427
    if-eqz p4, :cond_1

    .line 1429
    invoke-static {p2, v3, v5, v4, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1430
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p2, v3, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1433
    :cond_1
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->SetTextureMatrix([F)V

    .line 1435
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1436
    const/16 v0, 0x5a

    if-ne p3, v0, :cond_3

    .line 1438
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget v2, p1, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mHeight:I

    int-to-float v4, v4

    invoke-static {v0, v3, v2, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1445
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1446
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muMVPMatrixHandleTexYUV420sp:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    invoke-static {v0, v6, v3, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1447
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1449
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maPositionHandleTexYUV420sp:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mPosVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1450
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1452
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maPositionHandleTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1453
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1455
    const v0, 0x84c0

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTextureUnitId()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1456
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1457
    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTarget()I

    move-result v0

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1458
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1459
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muYUV420spTexSamplerY:I

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTextureUnitId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1460
    const-string v0, "glUniform1i"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1462
    const v0, 0x84c0

    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTextureUnitId()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1463
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1464
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTarget()I

    move-result v0

    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1465
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1466
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->muYUV420spTexSamplerUV:I

    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->getTextureUnitId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1467
    const-string v0, "glUniform1i"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1469
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1470
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 1472
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->maPositionHandleTexYUV420sp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1473
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1474
    return-void

    :cond_2
    move v0, v3

    .line 1422
    goto/16 :goto_0

    .line 1442
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    int-to-float v2, v2

    invoke-static {v0, v3, v4, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1443
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget v2, p1, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mHeight:I

    int-to-float v2, v2

    iget v4, p1, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mWidth:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v0, v3, v2, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_1
.end method

.method public dumpStatisticsAndClear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 877
    const-string v1, "MESH:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, "line":Ljava/lang/String;
    iput v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    .line 879
    iput v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    .line 880
    iput v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    .line 881
    iput v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    .line 882
    sget-object v1, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-void
.end method

.method public endRenderTarget()V
    .locals 4

    .prologue
    .line 887
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 888
    .local v0, "oldTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getTargetTexture()Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-result-object v1

    .line 889
    .local v1, "texture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 890
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->restore()V

    .line 891
    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "color"    # I

    .prologue
    .line 611
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFIF)V

    .line 612
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    .line 613
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;IIII)V
    .locals 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 1053
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    int-to-float v4, p2

    int-to-float v5, p3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 1054
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    int-to-float v2, p4

    int-to-float v3, p5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1055
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    sget-object v6, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->BOUNDS_COORDINATES:[F

    move v3, v8

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 1056
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    sget-object v6, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->BOUNDS_COORDINATES:[F

    const/4 v7, 0x4

    move v3, v9

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 1057
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    aget v0, v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1058
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    aget v0, v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1059
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/16 v1, 0x11

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1060
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/16 v1, 0x15

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1061
    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    .line 1062
    return-void
.end method

.method public getGLId()Lcom/lenovo/scg/gallery3d/glrenderer/GLId;
    .locals 1

    .prologue
    .line 1066
    sget-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    return-object v0
.end method

.method public initGalleryBackground()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1085
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1086
    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mClearColor:F

    .line 1087
    return-void
.end method

.method public initializeTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 979
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 980
    .local v0, "target":I
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 981
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 982
    invoke-static {v0, v2, p2, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 983
    return-void
.end method

.method public initializeTextureSize(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;II)V
    .locals 9
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "format"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 969
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 970
    .local v0, "target":I
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 971
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 972
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v3

    .line 973
    .local v3, "width":I
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v4

    .line 974
    .local v4, "height":I
    const/4 v8, 0x0

    move v2, p2

    move v5, v1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 975
    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    .line 430
    return-void
.end method

.method public multiplyMatrix([FI)V
    .locals 6
    .param p1, "matrix"    # [F
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    .line 471
    .local v0, "temp":[F
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 472
    .local v2, "currentMatrix":[F
    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .local v3, "index":I
    move-object v4, p1

    move v5, p2

    .line 473
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 474
    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    return-void
.end method

.method public recoverFromLightCycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1045
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1046
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 1047
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1048
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 1049
    return-void
.end method

.method public restore()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 507
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/lenovo/scg/gallery3d/util/IntArray;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/util/IntArray;->removeLast()I

    move-result v1

    .line 508
    .local v1, "restoreFlags":I
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 509
    .local v0, "restoreAlpha":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 510
    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 512
    :cond_0
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 513
    .local v2, "restoreMatrix":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 514
    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v3, v3, -0x10

    iput v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 516
    :cond_1
    return-void

    .end local v0    # "restoreAlpha":Z
    .end local v2    # "restoreMatrix":Z
    :cond_2
    move v0, v3

    .line 508
    goto :goto_0

    .restart local v0    # "restoreAlpha":Z
    :cond_3
    move v2, v3

    .line 512
    goto :goto_1
.end method

.method public rotate(FFFF)V
    .locals 9
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x10

    .line 457
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 466
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    .local v0, "temp":[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 461
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 462
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 463
    .local v4, "matrix":[F
    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .local v5, "index":I
    move-object v2, v0

    move v3, v8

    move-object v6, v0

    move v7, v1

    .line 464
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 465
    invoke-static {v0, v8, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    .line 480
    return-void
.end method

.method public save(I)V
    .locals 8
    .param p1, "saveFlags"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 484
    and-int/lit8 v5, p1, 0x1

    if-ne v5, v3, :cond_4

    move v2, v3

    .line 485
    .local v2, "saveAlpha":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    .line 487
    .local v0, "currentAlpha":F
    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 488
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    array-length v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    if-gt v5, v6, :cond_0

    .line 489
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    .line 491
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aput v0, v5, v6

    .line 493
    .end local v0    # "currentAlpha":F
    :cond_1
    and-int/lit8 v5, p1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 494
    .local v3, "saveMatrix":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 495
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 496
    .local v1, "currentIndex":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 497
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    array-length v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    if-gt v4, v5, :cond_2

    .line 498
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 500
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v7, 0x10

    invoke-static {v4, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    .end local v1    # "currentIndex":I
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/lenovo/scg/gallery3d/util/IntArray;

    invoke-virtual {v4, p1}, Lcom/lenovo/scg/gallery3d/util/IntArray;->add(I)V

    .line 503
    return-void

    .end local v2    # "saveAlpha":Z
    .end local v3    # "saveMatrix":Z
    :cond_4
    move v2, v4

    .line 484
    goto :goto_0

    .restart local v2    # "saveAlpha":Z
    :cond_5
    move v3, v4

    .line 493
    goto :goto_1
.end method

.method public scale(FFF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 453
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 424
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aput p1, v0, v1

    .line 425
    return-void
.end method

.method public setSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 376
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    .line 377
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    .line 378
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 379
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 380
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    int-to-float v3, p1

    int-to-float v5, p2

    move v4, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 382
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->getTargetTexture()Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 383
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mScreenWidth:I

    .line 384
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mScreenHeight:I

    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    int-to-float v3, p2

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 386
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, v7, v6, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 388
    :cond_0
    return-void
.end method

.method public setTextureParameters(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 4
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    const v3, 0x812f

    const v2, 0x46180400    # 9729.0f

    .line 958
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 959
    .local v0, "target":I
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 960
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 961
    const/16 v1, 0x2802

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 962
    const/16 v1, 0x2803

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 963
    const/16 v1, 0x2801

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 964
    const/16 v1, 0x2800

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 965
    return-void
.end method

.method public texSubImage2D(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    .locals 7
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "format"    # I
    .param p6, "type"    # I

    .prologue
    .line 987
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 988
    .local v0, "target":I
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 989
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 990
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 991
    return-void
.end method

.method public translate(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 442
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 443
    .local v0, "index":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 444
    .local v1, "m":[F
    add-int/lit8 v2, v0, 0xc

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x0

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x4

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 445
    add-int/lit8 v2, v0, 0xd

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x5

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 446
    add-int/lit8 v2, v0, 0xe

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x6

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 447
    add-int/lit8 v2, v0, 0xf

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x3

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x7

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 448
    return-void
.end method

.method public translate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 435
    return-void
.end method

.method public unloadTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z
    .locals 4
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 842
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isLoaded()Z

    move-result v0

    .line 843
    .local v0, "unload":Z
    if-eqz v0, :cond_0

    .line 844
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    monitor-enter v2

    .line 845
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/util/IntArray;->add(I)V

    .line 846
    monitor-exit v2

    .line 848
    :cond_0
    return v0

    .line 846
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1000
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 995
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method
