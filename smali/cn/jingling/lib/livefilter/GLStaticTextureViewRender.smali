.class public Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;
.super Ljava/lang/Object;
.source "GLStaticTextureViewRender.java"


# instance fields
.field private GLHandle_Texture_OriginalBm:I

.field private GLHandle_VBO_FrameTexPos:I

.field private final POS_DATA_SIZE:I

.field private mAppContext:Landroid/content/Context;

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

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->POS_DATA_SIZE:I

    .line 22
    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_VBO_FrameTexPos:I

    .line 23
    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_Texture_OriginalBm:I

    .line 38
    new-array v0, v2, [F

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixStandard:[F

    .line 39
    new-array v0, v2, [F

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixFlipUpDown:[F

    .line 44
    sget-object v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_CENTER:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 18
    return-void
.end method

.method private initMatrix()V
    .locals 15

    .prologue
    .line 165
    const/16 v1, 0x10

    new-array v13, v1, [F

    .line 166
    .local v13, "mProjMatrix":[F
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 167
    .local v0, "mVMatrix":[F
    const/16 v1, 0x10

    new-array v12, v1, [F

    .line 169
    .local v12, "mMMatrix":[F
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageWidth:I

    invoke-static {v2}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v2

    int-to-float v2, v2

    div-float v14, v1, v2

    .line 170
    .local v14, "wr":F
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageHeight:I

    invoke-static {v2}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 172
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

    .line 173
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40400000    # 3.0f

    move-object v1, v13

    move v4, v14

    move v6, v11

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 175
    const/4 v1, 0x0

    invoke-static {v12, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 177
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixStandard:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 178
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixStandard:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v5, v12

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 179
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixStandard:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixStandard:[F

    const/4 v6, 0x0

    move-object v3, v13

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 183
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

    .line 185
    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-float v5, v11

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40400000    # 3.0f

    move-object v1, v13

    move v4, v14

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 187
    const/4 v1, 0x0

    invoke-static {v12, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 189
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixFlipUpDown:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 190
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixFlipUpDown:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v5, v12

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 191
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixFlipUpDown:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixFlipUpDown:[F

    const/4 v6, 0x0

    move-object v3, v13

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 193
    return-void
.end method

.method private initVBO()V
    .locals 10

    .prologue
    const v9, 0x8892

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 196
    new-array v2, v8, [I

    .line 197
    .local v2, "vbos":[I
    invoke-static {v8, v2, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 198
    aget v4, v2, v7

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 200
    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageWidth:I

    invoke-static {v5}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 201
    .local v3, "wr":F
    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageHeight:I

    invoke-static {v5}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 203
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

    .line 204
    aput v1, v0, v4

    const/16 v4, 0xa

    aput v6, v0, v4

    const/16 v4, 0xb

    aput v1, v0, v4

    .line 208
    .local v0, "frameTexCoords":[F
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x4

    .line 207
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 209
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 206
    iput-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mFrameTexPos:Ljava/nio/FloatBuffer;

    .line 210
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mFrameTexPos:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 212
    array-length v4, v0

    .line 213
    mul-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mFrameTexPos:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    .line 214
    const v6, 0x88e4

    .line 212
    invoke-static {v9, v4, v5, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 216
    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_VBO_FrameTexPos:I

    if-eqz v4, :cond_0

    .line 217
    new-array v4, v8, [I

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_VBO_FrameTexPos:I

    aput v5, v4, v7

    invoke-static {v8, v4, v7}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 219
    :cond_0
    aget v4, v2, v7

    iput v4, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_VBO_FrameTexPos:I

    .line 220
    invoke-static {v9, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 221
    return-void
.end method


# virtual methods
.method public glDrawFrame(Ljava/lang/String;)V
    .locals 12
    .param p1, "filterLabel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mLiveFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Filter label "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    const-string v2, " does not exsit in LiveFilterInfo!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 114
    .local v8, "time":J
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 116
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glRelease()V

    .line 118
    iput-object v3, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    .line 121
    :cond_1
    const-string v0, "GLStatic"

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gl time consume1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mLiveFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    .line 129
    iget v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageWidth:I

    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageHeight:I

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mViewWidth:I

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mViewHeight:I

    iget-object v10, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 128
    invoke-static {v0, v1, v2, v5, v10}, Lcn/jingling/lib/livefilter/GLImageViewportHelper;->getGLViewPort(IIIILcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)Lcn/jingling/lib/livefilter/ViewportRect;

    move-result-object v4

    .line 130
    .local v4, "mCurrentViewport":Lcn/jingling/lib/livefilter/ViewportRect;
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mAppContext:Landroid/content/Context;

    new-instance v2, Landroid/graphics/Point;

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageWidth:I

    .line 131
    iget v10, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageHeight:I

    invoke-direct {v2, v5, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 130
    invoke-virtual {v0, v1, v2}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 132
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/LiveOriginal;->glSetup(Landroid/content/Context;)V

    .line 134
    const-string v0, "GLStatic"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gl time consume2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x2

    new-array v7, v0, [Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    aput-object v1, v7, v0

    .line 139
    .local v7, "frameBufferSwap":[Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixStandard:[F

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_VBO_FrameTexPos:I

    .line 140
    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_Texture_OriginalBm:I

    .line 139
    invoke-virtual {v0, v1, v2, v5, v7}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glDraw([FII[Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v6

    .line 141
    .local v6, "fbi":Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mMVPMatrixFlipUpDown:[F

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_VBO_FrameTexPos:I

    iget v5, v6, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    invoke-virtual/range {v0 .. v5}, Lcn/jingling/lib/livefilter/LiveOriginal;->glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;Lcn/jingling/lib/livefilter/ViewportRect;I)V

    .line 142
    return-void
.end method

.method public glInitRender(Landroid/content/Context;)V
    .locals 2
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mAppContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcn/jingling/lib/livefilter/LiveOriginal;

    invoke-direct {v0}, Lcn/jingling/lib/livefilter/LiveOriginal;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    .line 53
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->generateLiveFilters(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mLiveFilters:Ljava/util/Map;

    .line 54
    return-void
.end method

.method public glRenderRelease()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mAppContext:Landroid/content/Context;

    .line 149
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glRelease()V

    .line 151
    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    .line 154
    :cond_0
    iget v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_Texture_OriginalBm:I

    if-eqz v0, :cond_1

    .line 155
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_Texture_OriginalBm:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 159
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 161
    return-void
.end method

.method public glSetBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "originalBm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageWidth:I

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageHeight:I

    .line 85
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 86
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 88
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageWidth:I

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageHeight:I

    .line 87
    invoke-static {v1, v2}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 90
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageWidth:I

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageHeight:I

    .line 89
    invoke-static {v1, v2}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 92
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->initMatrix()V

    .line 95
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 96
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_Texture_OriginalBm:I

    if-eqz v1, :cond_0

    .line 97
    new-array v1, v3, [I

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_Texture_OriginalBm:I

    aput v2, v1, v4

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, "textureBm":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadSubTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->GLHandle_Texture_OriginalBm:I

    .line 103
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->initVBO()V

    .line 105
    return-void
.end method

.method public setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 0
    .param p1, "type"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 63
    return-void
.end method

.method public setViewSize(II)V
    .locals 0
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    .line 70
    iput p1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mViewWidth:I

    .line 71
    iput p2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->mViewHeight:I

    .line 72
    return-void
.end method
