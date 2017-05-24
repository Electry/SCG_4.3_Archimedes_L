.class public Lcn/jingling/lib/livefilter/CameraSTRenderer;
.super Lcn/jingling/lib/livefilter/AbsCameraRender;
.source "CameraSTRenderer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcn/jingling/lib/livefilter/CameraRenderInteface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;
    }
.end annotation


# instance fields
.field private mDirection:I

.field private mDisplayedTexPos:Ljava/nio/FloatBuffer;

.field private mFixMVPMatrix:[F

.field private mFlip:Z

.field private mFrameBuffer:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameTexPos:Ljava/nio/FloatBuffer;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mGlDrawHelper:Lcn/jingling/lib/livefilter/GLDrawHelper;

.field private mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

.field private mMVPMatrix:[F

.field private mObserver:Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;

.field private mPixelsReady:Z

.field private mRGBShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureDataHandle:I

.field private mVBODisplayHandle:I

.field private mVBOFrameHandle:I

.field private mVertexCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Z)V
    .locals 2
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "gLSurfaceView"    # Landroid/opengl/GLSurfaceView;
    .param p3, "smooth"    # Z

    .prologue
    const/16 v1, 0x10

    .line 53
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/AbsCameraRender;-><init>()V

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mMVPMatrix:[F

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFixMVPMatrix:[F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPixelsReady:Z

    .line 55
    invoke-static {p1}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mAppContext:Landroid/content/Context;

    .line 57
    invoke-static {p1, p3}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->generateLiveFilters(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mLiveFilters:Ljava/util/Map;

    .line 58
    const-string/jumbo v0, "original"

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->setFilter(Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 60
    new-instance v0, Lcn/jingling/lib/livefilter/GLDrawHelper;

    invoke-direct {v0}, Lcn/jingling/lib/livefilter/GLDrawHelper;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mGlDrawHelper:Lcn/jingling/lib/livefilter/GLDrawHelper;

    .line 61
    new-instance v0, Lcn/jingling/lib/livefilter/LiveOriginal;

    invoke-direct {v0}, Lcn/jingling/lib/livefilter/LiveOriginal;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    .line 62
    return-void
.end method

.method private getTextureCoordinate()Ljava/nio/FloatBuffer;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 244
    const/high16 v3, 0x3f800000    # 1.0f

    .line 245
    .local v3, "wr":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 247
    .local v2, "hr":F
    const/16 v4, 0xc

    new-array v0, v4, [F

    aput v5, v0, v6

    const/4 v4, 0x1

    aput v5, v0, v4

    const/4 v4, 0x2

    aput v3, v0, v4

    const/4 v4, 0x3

    aput v5, v0, v4

    const/4 v4, 0x4

    aput v5, v0, v4

    const/4 v4, 0x5

    aput v2, v0, v4

    const/4 v4, 0x6

    aput v3, v0, v4

    const/4 v4, 0x7

    aput v5, v0, v4

    const/16 v4, 0x8

    aput v3, v0, v4

    const/16 v4, 0x9

    .line 248
    aput v2, v0, v4

    const/16 v4, 0xa

    aput v5, v0, v4

    const/16 v4, 0xb

    aput v2, v0, v4

    .line 249
    .local v0, "frameTexCoords":[F
    array-length v4, v0

    iput v4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mVertexCount:I

    .line 251
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 252
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 253
    .local v1, "frameTexPos":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    return-object v1
.end method

.method private glInitTextures()V
    .locals 2

    .prologue
    .line 293
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 294
    .local v0, "textureHandle":[I
    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mGlDrawHelper:Lcn/jingling/lib/livefilter/GLDrawHelper;

    invoke-virtual {v1, v0}, Lcn/jingling/lib/livefilter/GLDrawHelper;->glInitTextures([I)V

    .line 295
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mTextureDataHandle:I

    .line 296
    return-void
.end method

.method private glInitVBOs()V
    .locals 7

    .prologue
    const v6, 0x88e4

    const/4 v1, 0x2

    const/4 v5, 0x1

    const v4, 0x8892

    const/4 v3, 0x0

    .line 302
    new-array v0, v1, [I

    .line 303
    .local v0, "vbos":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 304
    aget v1, v0, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 305
    iget v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mVertexCount:I

    .line 306
    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameTexPos:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 305
    invoke-static {v4, v1, v2, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 308
    aget v1, v0, v5

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 309
    iget v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mVertexCount:I

    .line 310
    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mDisplayedTexPos:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 309
    invoke-static {v4, v1, v2, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 312
    aget v1, v0, v3

    iput v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mVBOFrameHandle:I

    .line 313
    aget v1, v0, v5

    iput v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mVBODisplayHandle:I

    .line 314
    return-void
.end method

.method private initMatrix(IZ)V
    .locals 21
    .param p1, "direction"    # I
    .param p2, "flip"    # Z

    .prologue
    .line 258
    const/16 v3, 0x10

    new-array v5, v3, [F

    .line 259
    .local v5, "projectionMatrix":[F
    const/16 v3, 0x10

    new-array v7, v3, [F

    .line 260
    .local v7, "modelViewMatrix":[F
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v7, v1, v2}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->initModelViewMatrix([FIZ)V

    .line 261
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->initProjectionMatrix([FIZ)V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mMVPMatrix:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 263
    const/4 v8, 0x0

    .line 262
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 265
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageHeight:I

    int-to-float v3, v3

    .line 266
    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageHeight:I

    invoke-static {v4}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    int-to-float v4, v4

    .line 265
    div-float v19, v3, v4

    .line 267
    .local v19, "hr":F
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageWidth:I

    int-to-float v3, v3

    .line 268
    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageWidth:I

    invoke-static {v4}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    int-to-float v4, v4

    .line 267
    div-float v20, v3, v4

    .line 270
    .local v20, "wr":F
    const/16 v3, 0x10

    new-array v8, v3, [F

    .line 271
    .local v8, "fixModelViewMatrix":[F
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    invoke-static/range {v8 .. v18}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 272
    const/16 v3, 0x10

    new-array v9, v3, [F

    .line 273
    .local v9, "fixProjectionMatrix":[F
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, -0x40800000    # -1.0f

    move/from16 v12, v20

    move/from16 v14, v19

    invoke-static/range {v9 .. v16}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 274
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFixMVPMatrix:[F

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 275
    const/4 v15, 0x0

    move-object v12, v9

    move-object v14, v8

    .line 274
    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 276
    return-void
.end method

.method private initModelViewMatrix([FIZ)V
    .locals 1
    .param p1, "modelViewMatrix"    # [F
    .param p2, "direction"    # I
    .param p3, "flip"    # Z

    .prologue
    .line 286
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mGlDrawHelper:Lcn/jingling/lib/livefilter/GLDrawHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcn/jingling/lib/livefilter/GLDrawHelper;->initModelViewMatrix([FIZ)V

    .line 287
    return-void
.end method

.method private initProjectionMatrix([FIZ)V
    .locals 8
    .param p1, "projectionMatrix"    # [F
    .param p2, "direction"    # I
    .param p3, "flip"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mGlDrawHelper:Lcn/jingling/lib/livefilter/GLDrawHelper;

    .line 281
    iget v4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mTextureWidth:I

    iget v5, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mTextureHeight:I

    iget v6, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewWidth:I

    iget v7, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewHeight:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 280
    invoke-virtual/range {v0 .. v7}, Lcn/jingling/lib/livefilter/GLDrawHelper;->initProjectionMatrix([FIZIIII)V

    .line 282
    return-void
.end method

.method private initSurfaceTexture()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 116
    .local v0, "oldSurfaceTexture":Landroid/graphics/SurfaceTexture;
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mTextureDataHandle:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 117
    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 122
    const/4 v0, 0x0

    .line 124
    :cond_0
    return-void
.end method

.method private logMatrix([FLjava/lang/String;)V
    .locals 5
    .param p1, "matrix"    # [F
    .param p2, "logName"    # Ljava/lang/String;

    .prologue
    .line 346
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 347
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 350
    const-string/jumbo v2, "xxxx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 348
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFilterInfo()Lcn/jingling/lib/livefilter/LiveFilterInfo;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public init(IIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 6
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "direction"    # I
    .param p4, "flip"    # Z
    .param p5, "imageType"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 74
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-gez p3, :cond_2

    .line 77
    :cond_0
    const-string v4, "CameraMtkRenderer->init() parameters contain invalid value!"

    .line 78
    const-string v5, "CameraMtkRenderer"

    .line 76
    invoke-static {v4, v5}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    return-void

    .line 81
    :cond_2
    iput-object p5, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 82
    iput p3, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mDirection:I

    .line 83
    iput-boolean p4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFlip:Z

    .line 84
    move v3, p1

    .line 85
    .local v3, "w":I
    move v1, p2

    .line 86
    .local v1, "h":I
    iget-object v5, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 87
    :try_start_0
    iput v3, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mTextureWidth:I

    .line 88
    iput v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mTextureHeight:I

    .line 89
    if-le v3, v1, :cond_3

    .line 90
    iput v3, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageHeight:I

    .line 91
    iput v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageWidth:I

    .line 96
    :goto_0
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->getTextureCoordinate()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameTexPos:Ljava/nio/FloatBuffer;

    .line 97
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->getTextureCoordinate()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mDisplayedTexPos:Ljava/nio/FloatBuffer;

    .line 98
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mNeedUpdateViewPort:Z

    .line 99
    invoke-direct {p0, p3, p4}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->initMatrix(IZ)V

    .line 86
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mLiveFilters:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 104
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 105
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveFilterInfo;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveFilterInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->setup()V

    goto :goto_1

    .line 93
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveFilterInfo;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveFilterInfo;>;>;"
    :cond_3
    :try_start_1
    iput v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageHeight:I

    .line 94
    iput v3, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageWidth:I

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v10, 0x0

    .line 148
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 149
    iget-object v9, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mMutex:Ljava/lang/Object;

    monitor-enter v9

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPixelsReady:Z

    if-nez v0, :cond_1

    .line 151
    monitor-exit v9

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 154
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 157
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFilterUpdate:Z

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->glUpdateFilter()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFilterUpdate:Z

    .line 163
    :cond_2
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mNeedUpdateViewPort:Z

    if-eqz v0, :cond_3

    .line 165
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageWidth:I

    iget v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageHeight:I

    iget v2, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewWidth:I

    .line 166
    iget v4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewHeight:I

    iget-object v5, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 164
    invoke-static {v0, v1, v2, v4, v5}, Lcn/jingling/lib/livefilter/GLImageViewportHelper;->getGLViewPort(IIIILcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)Lcn/jingling/lib/livefilter/ViewportRect;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewportRect:Lcn/jingling/lib/livefilter/ViewportRect;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mNeedUpdateViewPort:Z

    .line 170
    :cond_3
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 173
    const-string/jumbo v0, "original"

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v1}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBuffer:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glBindFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 175
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mGlDrawHelper:Lcn/jingling/lib/livefilter/GLDrawHelper;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mMVPMatrix:[F

    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mRGBShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    const/4 v3, 0x0

    .line 176
    iget v4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mTextureDataHandle:I

    iget v5, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mVBOFrameHandle:I

    .line 177
    iget v6, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageWidth:I

    iget v7, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageHeight:I

    iget-object v8, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewportRect:Lcn/jingling/lib/livefilter/ViewportRect;

    .line 175
    invoke-virtual/range {v0 .. v8}, Lcn/jingling/lib/livefilter/GLDrawHelper;->glDrawPreview([FLcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIIILcn/jingling/lib/livefilter/ViewportRect;)V

    .line 191
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPixelsReady:Z

    .line 192
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 149
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 196
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFpsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFpsCount:I

    .line 197
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFpsCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->markTime()V

    .line 199
    iput v10, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFpsCount:I

    goto :goto_0

    .line 179
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBuffer:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glBindFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 180
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glBindFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 181
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glBindFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 182
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mGlDrawHelper:Lcn/jingling/lib/livefilter/GLDrawHelper;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mMVPMatrix:[F

    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mRGBShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 183
    iget-object v3, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBuffer:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mTextureDataHandle:I

    iget v5, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mVBOFrameHandle:I

    .line 184
    iget v6, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageWidth:I

    iget v7, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageHeight:I

    iget-object v8, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewportRect:Lcn/jingling/lib/livefilter/ViewportRect;

    .line 182
    invoke-virtual/range {v0 .. v8}, Lcn/jingling/lib/livefilter/GLDrawHelper;->glDrawPreview([FLcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIIILcn/jingling/lib/livefilter/ViewportRect;)V

    .line 185
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFixMVPMatrix:[F

    .line 186
    iget v2, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mVBODisplayHandle:I

    iget-object v4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBuffer:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v4, v4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 187
    const/4 v5, 0x2

    new-array v5, v5, [Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    aput-object v7, v5, v6

    .line 185
    invoke-virtual {v0, v1, v2, v4, v5}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glDraw([FII[Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v3

    .line 188
    .local v3, "fbi":Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFixMVPMatrix:[F

    iget v2, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mVBODisplayHandle:I

    .line 189
    iget-object v4, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewportRect:Lcn/jingling/lib/livefilter/ViewportRect;

    iget v5, v3, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 188
    invoke-virtual/range {v0 .. v5}, Lcn/jingling/lib/livefilter/LiveOriginal;->glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;Lcn/jingling/lib/livefilter/ViewportRect;I)V

    goto :goto_1

    .line 149
    .end local v3    # "fbi":Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 322
    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPixelsReady:Z

    .line 322
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 329
    :cond_0
    return-void

    .line 322
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 206
    iput p2, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewWidth:I

    .line 207
    iput p3, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewHeight:I

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mNeedUpdateViewPort:Z

    .line 209
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 214
    const-string/jumbo v0, "xxxx"

    const-string/jumbo v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mAppContext:Landroid/content/Context;

    .line 217
    const-string/jumbo v1, "vertex_shader_2"

    const-string/jumbo v2, "rgb_fragment_shader"

    const-string v3, "aPosition"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 218
    const-string/jumbo v6, "uTexture"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "uMVPMatrix"

    aput-object v6, v4, v5

    .line 216
    invoke-static {v0, v1, v2, v3, v4}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mRGBShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 220
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 221
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 225
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageWidth:I

    iget v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageHeight:I

    .line 224
    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBufferWithNoBind(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 227
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageWidth:I

    iget v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageHeight:I

    .line 226
    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBufferWithNoBind(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 229
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBuffer:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 231
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageWidth:I

    iget v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mPreviewImageHeight:I

    .line 230
    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBufferWithNoBind(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFrameBuffer:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 232
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 234
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->glInitTextures()V

    .line 235
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->initSurfaceTexture()V

    .line 236
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->glInitVBOs()V

    .line 237
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mObserver:Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mObserver:Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;->onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/LiveOriginal;->glSetup(Landroid/content/Context;)V

    .line 241
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mFilterUpdate:Z

    .line 131
    monitor-exit v1

    .line 134
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetViewSize(II)V
    .locals 0
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    .line 354
    iput p1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewWidth:I

    .line 355
    iput p2, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mViewHeight:I

    .line 356
    return-void
.end method

.method public setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 1
    .param p1, "imageType"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 142
    iput-object p1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mNeedUpdateViewPort:Z

    .line 144
    return-void
.end method

.method public setObserver(Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;)V
    .locals 0
    .param p1, "observer"    # Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;

    .prologue
    .line 332
    iput-object p1, p0, Lcn/jingling/lib/livefilter/CameraSTRenderer;->mObserver:Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;

    .line 333
    return-void
.end method
