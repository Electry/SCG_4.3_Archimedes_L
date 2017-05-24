.class public Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;
.super Ljava/lang/Object;
.source "GLStaticSurfaceViewRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private GLHandle_Texture_OriginalBm:I

.field private GLHandle_VBO_FrameTexPos:I

.field private bmSet:Z

.field private inited:Z

.field private mAppContext:Landroid/content/Context;

.field private mCurrentLabel:Ljava/lang/String;

.field private mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

.field private mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameTexPos:Ljava/nio/FloatBuffer;

.field private mImageHeight:I

.field private mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

.field private mImageWidth:I

.field private mLiveFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcn/jingling/lib/livefilter/LiveFilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

.field private mMVPMatrixFlipUpDown:[F

.field private mMVPMatrixStandard:[F

.field private mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mViewHeight:I

.field private mViewWidth:I

.field private needInit:Z

.field private needRelease:Z

.field private needResetBm:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, v2, [F

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixStandard:[F

    .line 27
    new-array v0, v2, [F

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixFlipUpDown:[F

    .line 28
    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageWidth:I

    .line 29
    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageHeight:I

    .line 30
    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mViewWidth:I

    .line 31
    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mViewHeight:I

    .line 34
    sget-object v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_CENTER:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 48
    const-string/jumbo v0, "original"

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLabel:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_VBO_FrameTexPos:I

    .line 51
    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_Texture_OriginalBm:I

    .line 53
    iput-boolean v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needInit:Z

    .line 54
    iput-boolean v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->inited:Z

    .line 55
    iput-boolean v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needResetBm:Z

    .line 56
    iput-boolean v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->bmSet:Z

    .line 57
    iput-boolean v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needRelease:Z

    .line 22
    return-void
.end method

.method private glDrawFrame()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 213
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 215
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glRelease()V

    .line 217
    iput-object v3, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    .line 220
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mLiveFilters:Ljava/util/Map;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLabel:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    .line 226
    iget v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageWidth:I

    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageHeight:I

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mViewWidth:I

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mViewHeight:I

    iget-object v8, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 225
    invoke-static {v0, v1, v2, v5, v8}, Lcn/jingling/lib/livefilter/GLImageViewportHelper;->getGLViewPort(IIIILcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)Lcn/jingling/lib/livefilter/ViewportRect;

    move-result-object v4

    .line 228
    .local v4, "mCurrentViewport":Lcn/jingling/lib/livefilter/ViewportRect;
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mAppContext:Landroid/content/Context;

    new-instance v2, Landroid/graphics/Point;

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageWidth:I

    .line 229
    iget v8, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageHeight:I

    invoke-direct {v2, v5, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 228
    invoke-virtual {v0, v1, v2}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 231
    const/4 v0, 0x2

    new-array v7, v0, [Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    aput-object v1, v7, v0

    .line 234
    .local v7, "frameBufferSwap":[Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixStandard:[F

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_VBO_FrameTexPos:I

    .line 235
    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_Texture_OriginalBm:I

    .line 234
    invoke-virtual {v0, v1, v2, v5, v7}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glDraw([FII[Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v6

    .line 236
    .local v6, "fbi":Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixFlipUpDown:[F

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_VBO_FrameTexPos:I

    iget v5, v6, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    invoke-virtual/range {v0 .. v5}, Lcn/jingling/lib/livefilter/LiveOriginal;->glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;Lcn/jingling/lib/livefilter/ViewportRect;I)V

    .line 237
    return-void
.end method

.method private glInitRender()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->generateLiveFilters(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mLiveFilters:Ljava/util/Map;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needInit:Z

    .line 156
    return-void
.end method

.method private glReleaseRender()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mAppContext:Landroid/content/Context;

    .line 160
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glRelease()V

    .line 162
    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    .line 165
    :cond_0
    iget v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_Texture_OriginalBm:I

    if-eqz v0, :cond_1

    .line 167
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_Texture_OriginalBm:I

    aput v1, v0, v2

    .line 166
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 171
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 172
    return-void
.end method

.method private glResetBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "originalBm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageWidth:I

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageHeight:I

    .line 179
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->initMatrix()V

    .line 182
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 183
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 184
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageWidth:I

    .line 185
    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageHeight:I

    .line 184
    invoke-static {v1, v2}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 186
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageWidth:I

    .line 187
    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageHeight:I

    .line 186
    invoke-static {v1, v2}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 190
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 191
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_Texture_OriginalBm:I

    if-eqz v1, :cond_0

    .line 193
    new-array v1, v3, [I

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_Texture_OriginalBm:I

    aput v2, v1, v4

    .line 192
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    .local v0, "textureBm":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadSubTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_Texture_OriginalBm:I

    .line 199
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->initVBO()V

    .line 201
    return-void
.end method

.method private initMatrix()V
    .locals 15

    .prologue
    .line 241
    const/16 v1, 0x10

    new-array v13, v1, [F

    .line 242
    .local v13, "mProjMatrix":[F
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 243
    .local v0, "mVMatrix":[F
    const/16 v1, 0x10

    new-array v12, v1, [F

    .line 245
    .local v12, "mMMatrix":[F
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageWidth:I

    invoke-static {v2}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v2

    int-to-float v2, v2

    div-float v14, v1, v2

    .line 246
    .local v14, "wr":F
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageHeight:I

    invoke-static {v2}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 248
    .local v11, "hr":F
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 249
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40400000    # 3.0f

    move-object v1, v13

    move v4, v14

    move v6, v11

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 251
    const/4 v1, 0x0

    invoke-static {v12, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 253
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixStandard:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 254
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixStandard:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v5, v12

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 255
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixStandard:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixStandard:[F

    const/4 v6, 0x0

    move-object v3, v13

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 259
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 261
    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-float v5, v11

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40400000    # 3.0f

    move-object v1, v13

    move v4, v14

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 263
    const/4 v1, 0x0

    invoke-static {v12, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 265
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixFlipUpDown:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 266
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixFlipUpDown:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v5, v12

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 267
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixFlipUpDown:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mMVPMatrixFlipUpDown:[F

    const/4 v6, 0x0

    move-object v3, v13

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 269
    return-void
.end method

.method private initVBO()V
    .locals 10

    .prologue
    const v9, 0x8892

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 272
    new-array v2, v8, [I

    .line 273
    .local v2, "vbos":[I
    invoke-static {v8, v2, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 274
    aget v4, v2, v7

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 276
    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageWidth:I

    invoke-static {v5}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 277
    .local v3, "wr":F
    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageHeight:I

    invoke-static {v5}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 279
    .local v1, "hr":F
    const/16 v4, 0xc

    new-array v0, v4, [F

    aput v6, v0, v7

    aput v6, v0, v8

    const/4 v4, 0x2

    aput v3, v0, v4

    const/4 v4, 0x3

    aput v6, v0, v4

    const/4 v4, 0x4

    aput v6, v0, v4

    const/4 v4, 0x5

    aput v1, v0, v4

    const/4 v4, 0x6

    aput v3, v0, v4

    const/4 v4, 0x7

    aput v6, v0, v4

    const/16 v4, 0x8

    aput v3, v0, v4

    const/16 v4, 0x9

    .line 280
    aput v1, v0, v4

    const/16 v4, 0xa

    aput v6, v0, v4

    const/16 v4, 0xb

    aput v1, v0, v4

    .line 284
    .local v0, "frameTexCoords":[F
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x4

    .line 283
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 285
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 282
    iput-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mFrameTexPos:Ljava/nio/FloatBuffer;

    .line 286
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mFrameTexPos:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 288
    array-length v4, v0

    .line 289
    mul-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mFrameTexPos:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    .line 290
    const v6, 0x88e4

    .line 288
    invoke-static {v9, v4, v5, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 292
    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_VBO_FrameTexPos:I

    if-eqz v4, :cond_0

    .line 293
    new-array v4, v8, [I

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_VBO_FrameTexPos:I

    aput v5, v4, v7

    invoke-static {v8, v4, v7}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 295
    :cond_0
    aget v4, v2, v7

    iput v4, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->GLHandle_VBO_FrameTexPos:I

    .line 296
    invoke-static {v9, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 297
    return-void
.end method


# virtual methods
.method public initRender(Landroid/content/Context;)V
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 64
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mAppContext:Landroid/content/Context;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needInit:Z

    .line 66
    new-instance v0, Lcn/jingling/lib/livefilter/LiveOriginal;

    invoke-direct {v0}, Lcn/jingling/lib/livefilter/LiveOriginal;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    .line 67
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needInit:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->glInitRender()V

    .line 117
    iput-boolean v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needInit:Z

    .line 118
    iput-boolean v2, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->inited:Z

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needResetBm:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->inited:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->glResetBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    iput-boolean v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needResetBm:Z

    .line 124
    iput-boolean v2, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->bmSet:Z

    .line 127
    :cond_1
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needRelease:Z

    if-eqz v0, :cond_3

    .line 128
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->glReleaseRender()V

    .line 129
    iput-boolean v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needRelease:Z

    .line 136
    :cond_2
    :goto_0
    return-void

    .line 131
    :cond_3
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->inited:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->bmSet:Z

    if-eqz v0, :cond_2

    .line 132
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->glDrawFrame()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 140
    iput p2, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mViewWidth:I

    .line 141
    iput p3, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mViewHeight:I

    .line 143
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 149
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 150
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/LiveOriginal;->glSetup(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public releaseRender()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needRelease:Z

    .line 76
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "originalBm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 84
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageWidth:I

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageHeight:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->needResetBm:Z

    .line 88
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterLabel"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mLiveFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Filter label "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    const-string v2, " does not exsit in LiveFilterInfo!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mCurrentLabel:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 0
    .param p1, "type"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 109
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 110
    return-void
.end method
