.class public Lcn/jingling/lib/livefilter/GLStaticFBORender;
.super Ljava/lang/Object;
.source "GLStaticFBORender.java"


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

.field private mMVPMatrix:[F

.field private mPerformedBitmap:Landroid/graphics/Bitmap;

.field private mPerformedPixelsBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->POS_DATA_SIZE:I

    .line 22
    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_VBO_FrameTexPos:I

    .line 23
    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_Texture_OriginalBm:I

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mMVPMatrix:[F

    .line 18
    return-void
.end method

.method private initMatrix()V
    .locals 15

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v3, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 168
    new-array v13, v3, [F

    .line 169
    .local v13, "mProjMatrix":[F
    new-array v0, v3, [F

    .line 170
    .local v0, "mVMatrix":[F
    new-array v12, v3, [F

    .line 172
    .local v12, "mMMatrix":[F
    iget v3, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageWidth:I

    invoke-static {v4}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    int-to-float v4, v4

    div-float v14, v3, v4

    .line 173
    .local v14, "wr":F
    iget v3, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageHeight:I

    invoke-static {v4}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    int-to-float v4, v4

    div-float v11, v3, v4

    .line 175
    .local v11, "hr":F
    const/high16 v4, 0x40000000    # 2.0f

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 177
    const/high16 v10, 0x40400000    # 3.0f

    move-object v3, v13

    move v4, v1

    move v5, v2

    move v6, v14

    move v7, v2

    move v8, v11

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 178
    invoke-static {v12, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 180
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mMVPMatrix:[F

    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 181
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mMVPMatrix:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    move-object v6, v12

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 182
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mMVPMatrix:[F

    iget-object v6, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mMVPMatrix:[F

    move v3, v1

    move-object v4, v13

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 183
    return-void
.end method

.method private initVBO()V
    .locals 10

    .prologue
    const v9, 0x8892

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 186
    new-array v2, v8, [I

    .line 187
    .local v2, "vbos":[I
    invoke-static {v8, v2, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 188
    aget v4, v2, v7

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 189
    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageWidth:I

    invoke-static {v5}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 190
    .local v3, "wr":F
    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageHeight:I

    invoke-static {v5}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 192
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

    .line 193
    aput v1, v0, v4

    const/16 v4, 0xa

    aput v6, v0, v4

    const/16 v4, 0xb

    aput v1, v0, v4

    .line 195
    .local v0, "frameTexCoords":[F
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 196
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 194
    iput-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mFrameTexPos:Ljava/nio/FloatBuffer;

    .line 197
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mFrameTexPos:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    array-length v4, v0

    .line 200
    mul-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mFrameTexPos:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    .line 201
    const v6, 0x88e4

    .line 199
    invoke-static {v9, v4, v5, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 203
    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_VBO_FrameTexPos:I

    if-eqz v4, :cond_0

    .line 204
    new-array v4, v8, [I

    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_VBO_FrameTexPos:I

    aput v5, v4, v7

    invoke-static {v8, v4, v7}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 206
    :cond_0
    aget v4, v2, v7

    iput v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_VBO_FrameTexPos:I

    .line 207
    invoke-static {v9, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 208
    return-void
.end method


# virtual methods
.method public glDrawFrame(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "filterLabel"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mLiveFilters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Filter label "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    const-string v2, " does not exsit in LiveFilterInfo!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 111
    .local v10, "time":J
    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 114
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v1}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glRelease()V

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    .line 119
    :cond_1
    const-string v1, "GLStatic"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gl time consume1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mLiveFilters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    .line 125
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mAppContext:Landroid/content/Context;

    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageWidth:I

    .line 126
    iget v5, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageHeight:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 125
    invoke-virtual {v1, v2, v3}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 128
    const-string v1, "GLStatic"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gl time consume2: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x2

    new-array v7, v1, [Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    aput-object v1, v7, v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    aput-object v2, v7, v1

    .line 131
    .local v7, "frameBufferSwap":[Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mMVPMatrix:[F

    iget v3, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_VBO_FrameTexPos:I

    .line 132
    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_Texture_OriginalBm:I

    .line 131
    invoke-virtual {v1, v2, v3, v4, v7}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glDraw([FII[Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v8

    .line 134
    .local v8, "resultFbo":Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    const v1, 0x8d40

    iget v2, v8, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 136
    const-string v1, "GLStatic"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gl time consume3: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageWidth:I

    iget v3, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageHeight:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mPerformedPixelsBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 140
    const-string v0, "GLStatic"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gl time consume4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mPerformedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mPerformedPixelsBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 144
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mPerformedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public glInitRender(Landroid/content/Context;)V
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 54
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mAppContext:Landroid/content/Context;

    .line 55
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->generateLiveFilters(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mLiveFilters:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public glRenderRelease()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mAppContext:Landroid/content/Context;

    .line 152
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glRelease()V

    .line 154
    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    .line 157
    :cond_0
    iget v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_Texture_OriginalBm:I

    if-eqz v0, :cond_1

    .line 158
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_Texture_OriginalBm:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 162
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 164
    return-void
.end method

.method public glSetBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "originalBm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageWidth:I

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageHeight:I

    .line 67
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageWidth:I

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageHeight:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mPerformedPixelsBuffer:Ljava/nio/IntBuffer;

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 71
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageWidth:I

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 73
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mPerformedBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1

    .line 77
    :cond_0
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticFBORender;->initMatrix()V

    .line 80
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 81
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 83
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageWidth:I

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageHeight:I

    .line 82
    invoke-static {v1, v2}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 85
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageWidth:I

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mImageHeight:I

    .line 84
    invoke-static {v1, v2}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 88
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 89
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_Texture_OriginalBm:I

    if-eqz v1, :cond_1

    .line 90
    new-array v1, v4, [I

    iget v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_Texture_OriginalBm:I

    aput v2, v1, v5

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, "textureBm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 94
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1

    .line 97
    :cond_2
    invoke-static {v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadSubTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORender;->GLHandle_Texture_OriginalBm:I

    .line 100
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticFBORender;->initVBO()V

    .line 102
    return-void
.end method
