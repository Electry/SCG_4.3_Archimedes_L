.class public Lcn/jingling/lib/livefilter/CameraRenderer;
.super Lcn/jingling/lib/livefilter/AbsCameraRender;
.source "CameraRenderer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mDisplayedTexPos:Ljava/nio/FloatBuffer;

.field private mFixMVPMatrix:[F

.field private mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferYUV:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameTexPos:Ljava/nio/FloatBuffer;

.field private mImageFormat:I

.field private mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

.field private mMVPMatrix:[F

.field private mPixelsReady:Z

.field private mPixelsUVBuffer:Ljava/nio/ByteBuffer;

.field private mPixelsYBuffer:Ljava/nio/ByteBuffer;

.field private mTextureDataUVHandle:I

.field private mTextureDataYHandle:I

.field private mVBODisplayHandle:I

.field private mVBOFrameHandle:I

.field private mVertexCount:I

.field private mYUVShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "smooth"    # Z

    .prologue
    const/16 v1, 0x10

    .line 44
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/AbsCameraRender;-><init>()V

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mMVPMatrix:[F

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFixMVPMatrix:[F

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsReady:Z

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mAppContext:Landroid/content/Context;

    .line 46
    invoke-static {p1, p2}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->generateLiveFilters(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mLiveFilters:Ljava/util/Map;

    .line 47
    new-instance v0, Lcn/jingling/lib/livefilter/LiveOriginal;

    invoke-direct {v0}, Lcn/jingling/lib/livefilter/LiveOriginal;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    .line 48
    const-string/jumbo v0, "original"

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/CameraRenderer;->setFilter(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private getTextureCoordinate(II)Ljava/nio/FloatBuffer;
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 232
    int-to-float v4, p1

    mul-float/2addr v4, v7

    invoke-static {p1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 233
    .local v3, "wr":F
    int-to-float v4, p2

    mul-float/2addr v4, v7

    invoke-static {p2}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 234
    .local v2, "hr":F
    const/16 v4, 0xc

    new-array v0, v4, [F

    aput v6, v0, v8

    const/4 v4, 0x1

    aput v6, v0, v4

    const/4 v4, 0x2

    aput v3, v0, v4

    const/4 v4, 0x3

    aput v6, v0, v4

    const/4 v4, 0x4

    aput v6, v0, v4

    const/4 v4, 0x5

    aput v2, v0, v4

    const/4 v4, 0x6

    aput v3, v0, v4

    const/4 v4, 0x7

    aput v6, v0, v4

    const/16 v4, 0x8

    aput v3, v0, v4

    const/16 v4, 0x9

    .line 235
    aput v2, v0, v4

    const/16 v4, 0xa

    aput v6, v0, v4

    const/16 v4, 0xb

    aput v2, v0, v4

    .line 236
    .local v0, "frameTexCoords":[F
    array-length v4, v0

    iput v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mVertexCount:I

    .line 238
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 239
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 240
    .local v1, "frameTexPos":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 241
    return-object v1
.end method

.method private glDrawYUV(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
    .locals 10
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p3, "textureYHandle"    # I
    .param p4, "textureUVHandle"    # I

    .prologue
    const/16 v7, 0x1401

    const/4 v9, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 400
    iget v2, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 401
    if-nez p2, :cond_0

    .line 402
    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewportRect:Lcn/jingling/lib/livefilter/ViewportRect;

    iget v2, v2, Lcn/jingling/lib/livefilter/ViewportRect;->x:I

    iget-object v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewportRect:Lcn/jingling/lib/livefilter/ViewportRect;

    iget v3, v3, Lcn/jingling/lib/livefilter/ViewportRect;->y:I

    iget-object v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewportRect:Lcn/jingling/lib/livefilter/ViewportRect;

    iget v4, v4, Lcn/jingling/lib/livefilter/ViewportRect;->width:I

    iget-object v5, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewportRect:Lcn/jingling/lib/livefilter/ViewportRect;

    iget v5, v5, Lcn/jingling/lib/livefilter/ViewportRect;->height:I

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 406
    :goto_0
    const v3, 0x8d40

    if-nez p2, :cond_1

    move v2, v1

    :goto_1
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 408
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 409
    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 410
    iget-object v2, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v3, "uTextureY"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 411
    iget v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureWidth:I

    .line 412
    iget v5, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureHeight:I

    const/16 v6, 0x1909

    .line 413
    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsYBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    .line 411
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 414
    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 415
    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 416
    iget-object v2, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v3, "uTextureUV"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 418
    iget v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureWidth:I

    div-int/lit8 v4, v2, 0x2

    iget v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureHeight:I

    div-int/lit8 v5, v2, 0x2

    .line 419
    const/16 v6, 0x190a

    .line 420
    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsUVBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    .line 417
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 421
    const v0, 0x8892

    iget v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mVBOFrameHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 422
    iget v2, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    const/4 v3, 0x2

    .line 423
    const/16 v4, 0x1406

    move v5, v1

    move v6, v1

    move v7, v1

    .line 422
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 424
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 425
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v2, "uMVPMatrix"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 426
    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mMVPMatrix:[F

    .line 425
    invoke-static {v0, v9, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 427
    const/4 v0, 0x4

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 428
    return-void

    .line 404
    :cond_0
    iget v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageWidth:I

    iget v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageHeight:I

    invoke-static {v1, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto/16 :goto_0

    .line 407
    :cond_1
    iget v2, p2, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto/16 :goto_1
.end method

.method private glInitVBOs()V
    .locals 7

    .prologue
    const v6, 0x88e4

    const/4 v1, 0x2

    const/4 v5, 0x1

    const v4, 0x8892

    const/4 v3, 0x0

    .line 384
    new-array v0, v1, [I

    .line 385
    .local v0, "vbos":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 386
    aget v1, v0, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 387
    iget v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mVertexCount:I

    .line 388
    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameTexPos:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 387
    invoke-static {v4, v1, v2, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 390
    aget v1, v0, v5

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 391
    iget v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mVertexCount:I

    .line 392
    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mDisplayedTexPos:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 391
    invoke-static {v4, v1, v2, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 394
    aget v1, v0, v3

    iput v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mVBOFrameHandle:I

    .line 395
    aget v1, v0, v5

    iput v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mVBODisplayHandle:I

    .line 396
    return-void
.end method

.method private glInitYUVTextures()V
    .locals 12

    .prologue
    const/4 v3, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x2601

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 355
    new-array v9, v3, [I

    .line 356
    .local v9, "textureHandle":[I
    const/16 v2, 0xb71

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 357
    invoke-static {v3, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 359
    aget v2, v9, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 361
    const/16 v2, 0x2801

    .line 360
    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 363
    const/16 v2, 0x2800

    .line 362
    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 364
    const/16 v2, 0x1909

    .line 365
    iget v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureWidth:I

    invoke-static {v3}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    .line 366
    iget v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureHeight:I

    invoke-static {v4}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    .line 367
    const/16 v6, 0x1909

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    .line 364
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 369
    aget v2, v9, v11

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 371
    const/16 v2, 0x2801

    .line 370
    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 373
    const/16 v2, 0x2800

    .line 372
    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 374
    const/16 v2, 0x190a

    .line 375
    iget v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureWidth:I

    invoke-static {v3}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    .line 376
    iget v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureHeight:I

    invoke-static {v4}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    .line 377
    const/16 v6, 0x190a

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    .line 374
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 379
    aget v0, v9, v1

    iput v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureDataYHandle:I

    .line 380
    aget v0, v9, v11

    iput v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureDataUVHandle:I

    .line 381
    return-void
.end method

.method private initMatrix(IZ)V
    .locals 21
    .param p1, "direction"    # I
    .param p2, "flip"    # Z

    .prologue
    .line 245
    const/16 v3, 0x10

    new-array v5, v3, [F

    .line 246
    .local v5, "projectionMatrix":[F
    const/16 v3, 0x10

    new-array v7, v3, [F

    .line 247
    .local v7, "modelViewMatrix":[F
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v7, v1, v2}, Lcn/jingling/lib/livefilter/CameraRenderer;->initModelViewMatrix([FIZ)V

    .line 248
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcn/jingling/lib/livefilter/CameraRenderer;->initProjectionMatrix([FIZ)V

    .line 249
    const-string/jumbo v3, "projectionMatrix"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcn/jingling/lib/livefilter/CameraRenderer;->logMatrix([FLjava/lang/String;)V

    .line 250
    const-string/jumbo v3, "modelViewMatrix"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lcn/jingling/lib/livefilter/CameraRenderer;->logMatrix([FLjava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/livefilter/CameraRenderer;->mMVPMatrix:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 252
    const/4 v8, 0x0

    .line 251
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/livefilter/CameraRenderer;->mMVPMatrix:[F

    const-string v4, "mMVPMatrix"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcn/jingling/lib/livefilter/CameraRenderer;->logMatrix([FLjava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageHeight:I

    int-to-float v3, v3

    .line 256
    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageHeight:I

    invoke-static {v4}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    int-to-float v4, v4

    .line 255
    div-float v19, v3, v4

    .line 257
    .local v19, "hr":F
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageWidth:I

    int-to-float v3, v3

    .line 258
    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageWidth:I

    invoke-static {v4}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    int-to-float v4, v4

    .line 257
    div-float v20, v3, v4

    .line 259
    .local v20, "wr":F
    const/16 v3, 0x10

    new-array v8, v3, [F

    .line 260
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

    .line 261
    const/16 v3, 0x10

    new-array v9, v3, [F

    .line 262
    .local v9, "fixProjectionMatrix":[F
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, -0x40800000    # -1.0f

    move/from16 v12, v20

    move/from16 v14, v19

    invoke-static/range {v9 .. v16}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 264
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFixMVPMatrix:[F

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 265
    const/4 v15, 0x0

    move-object v12, v9

    move-object v14, v8

    .line 264
    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 266
    return-void
.end method

.method private initModelViewMatrix([FIZ)V
    .locals 17
    .param p1, "modelViewMatrix"    # [F
    .param p2, "direction"    # I
    .param p3, "flip"    # Z

    .prologue
    .line 314
    const/4 v11, 0x0

    .line 315
    .local v11, "eyeX":F
    const/4 v12, 0x0

    .line 316
    .local v12, "eyeY":F
    const/high16 v4, -0x40800000    # -1.0f

    .line 317
    .local v4, "eyeZ":F
    if-eqz p3, :cond_0

    .line 318
    const/high16 v4, 0x3f800000    # 1.0f

    .line 323
    :goto_0
    const/4 v13, 0x0

    .line 324
    .local v13, "lookX":F
    const/4 v14, 0x0

    .line 325
    .local v14, "lookY":F
    const/4 v15, 0x0

    .line 327
    .local v15, "lookZ":F
    const/high16 v8, -0x40800000    # -1.0f

    .line 328
    .local v8, "upX":F
    const/4 v9, 0x0

    .line 329
    .local v9, "upY":F
    const/16 v16, 0x0

    .line 331
    .local v16, "upZ":F
    packed-switch p2, :pswitch_data_0

    .line 350
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 351
    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    .line 350
    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 352
    return-void

    .line 320
    .end local v8    # "upX":F
    .end local v9    # "upY":F
    .end local v13    # "lookX":F
    .end local v14    # "lookY":F
    .end local v15    # "lookZ":F
    .end local v16    # "upZ":F
    :cond_0
    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_0

    .line 333
    .restart local v8    # "upX":F
    .restart local v9    # "upY":F
    .restart local v13    # "lookX":F
    .restart local v14    # "lookY":F
    .restart local v15    # "lookZ":F
    .restart local v16    # "upZ":F
    :pswitch_0
    const/high16 v8, -0x40800000    # -1.0f

    .line 334
    const/4 v9, 0x0

    .line 335
    goto :goto_1

    .line 337
    :pswitch_1
    const/4 v8, 0x0

    .line 338
    const/high16 v9, 0x3f800000    # 1.0f

    .line 339
    goto :goto_1

    .line 341
    :pswitch_2
    const/high16 v8, 0x3f800000    # 1.0f

    .line 342
    const/4 v9, 0x0

    .line 343
    goto :goto_1

    .line 345
    :pswitch_3
    const/4 v8, 0x0

    .line 346
    const/high16 v9, -0x40800000    # -1.0f

    goto :goto_1

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initProjectionMatrix([FIZ)V
    .locals 21
    .param p1, "projectionMatrix"    # [F
    .param p2, "direction"    # I
    .param p3, "flip"    # Z

    .prologue
    .line 271
    const v19, 0x3ba3d70a    # 0.005f

    .line 272
    .local v19, "offset":F
    move/from16 v20, v19

    .line 273
    .local v20, "xr":F
    move/from16 v3, v19

    .line 274
    .local v3, "yr":F
    move-object/from16 v0, p0

    iget v1, v0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureWidth:I

    invoke-static {v2}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v10, v1, v19

    .line 275
    .local v10, "wr":F
    move-object/from16 v0, p0

    iget v1, v0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureHeight:I

    invoke-static {v2}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v4, v1, v19

    .line 277
    .local v4, "hr":F
    const-string/jumbo v1, "xxxx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "hr = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", wr = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", direction = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", flip = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    packed-switch p2, :pswitch_data_0

    .line 310
    .end local v10    # "wr":F
    :goto_0
    return-void

    .line 281
    .restart local v10    # "wr":F
    :pswitch_0
    if-eqz p3, :cond_0

    .line 282
    const/4 v2, 0x0

    neg-float v5, v10

    move/from16 v0, v20

    neg-float v6, v0

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 284
    :cond_0
    const/4 v6, 0x0

    neg-float v7, v4

    neg-float v8, v3

    neg-float v9, v10

    move/from16 v0, v20

    neg-float v10, v0

    const/high16 v11, -0x3ee00000    # -10.0f

    const/high16 v12, 0x41a00000    # 20.0f

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 288
    :pswitch_1
    if-eqz p3, :cond_1

    .line 289
    const/4 v2, 0x0

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    move/from16 v5, v20

    move v6, v10

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 291
    :cond_1
    const/4 v6, 0x0

    neg-float v7, v4

    neg-float v8, v3

    const/high16 v11, -0x3ee00000    # -10.0f

    const/high16 v12, 0x41a00000    # 20.0f

    move-object/from16 v5, p1

    move/from16 v9, v20

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 295
    :pswitch_2
    if-eqz p3, :cond_2

    .line 296
    const/4 v6, 0x0

    neg-float v7, v4

    neg-float v8, v3

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v5, p1

    move/from16 v9, v20

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 298
    :cond_2
    const/4 v2, 0x0

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    move/from16 v5, v20

    move v6, v10

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 302
    :pswitch_3
    if-eqz p3, :cond_3

    .line 303
    const/4 v12, 0x0

    neg-float v13, v4

    neg-float v14, v3

    neg-float v15, v10

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v16, v0

    const/high16 v17, -0x3ee00000    # -10.0f

    const/high16 v18, 0x41a00000    # 20.0f

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v18}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 305
    :cond_3
    const/4 v2, 0x0

    neg-float v5, v10

    move/from16 v0, v20

    neg-float v6, v0

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto/16 :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private logMatrix([FLjava/lang/String;)V
    .locals 5
    .param p1, "matrix"    # [F
    .param p2, "logName"    # Ljava/lang/String;

    .prologue
    .line 434
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 435
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 438
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

    .line 439
    return-void

    .line 436
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

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public init(IIIIIIZ)V
    .locals 9
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I
    .param p5, "direction"    # I
    .param p6, "format"    # I
    .param p7, "flip"    # Z

    .prologue
    .line 63
    sget-object v8, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_CENTER:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcn/jingling/lib/livefilter/CameraRenderer;->init(IIIIIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V

    .line 64
    return-void
.end method

.method public init(IIIIIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 7
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I
    .param p5, "direction"    # I
    .param p6, "format"    # I
    .param p7, "flip"    # Z
    .param p8, "type"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 79
    iput p2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewHeight:I

    .line 80
    iput p1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewWidth:I

    .line 82
    move v3, p3

    .line 83
    .local v3, "w":I
    move v1, p4

    .line 84
    .local v1, "h":I
    iget-object v5, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 85
    :try_start_0
    iput v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureWidth:I

    .line 86
    iput v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureHeight:I

    .line 87
    if-le v3, v1, :cond_0

    .line 88
    iput v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageHeight:I

    .line 89
    iput v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageWidth:I

    .line 94
    :goto_0
    iput p6, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mImageFormat:I

    .line 95
    mul-int v4, v3, v1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsYBuffer:Ljava/nio/ByteBuffer;

    .line 96
    mul-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsUVBuffer:Ljava/nio/ByteBuffer;

    .line 97
    iget v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureWidth:I

    iget v6, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureHeight:I

    invoke-direct {p0, v4, v6}, Lcn/jingling/lib/livefilter/CameraRenderer;->getTextureCoordinate(II)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameTexPos:Ljava/nio/FloatBuffer;

    .line 98
    iget v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageWidth:I

    .line 99
    iget v6, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageHeight:I

    .line 98
    invoke-direct {p0, v4, v6}, Lcn/jingling/lib/livefilter/CameraRenderer;->getTextureCoordinate(II)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mDisplayedTexPos:Ljava/nio/FloatBuffer;

    .line 100
    invoke-direct {p0, p5, p7}, Lcn/jingling/lib/livefilter/CameraRenderer;->initMatrix(IZ)V

    .line 101
    iput-object p8, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 102
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mNeedUpdateViewPort:Z

    .line 84
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mLiveFilters:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 106
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveFilterInfo;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
    return-void

    .line 91
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveFilterInfo;>;>;"
    :cond_0
    :try_start_1
    iput v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageHeight:I

    .line 92
    iput v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageWidth:I

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 108
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveFilterInfo;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveFilterInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->setup()V

    goto :goto_1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v9, 0x0

    .line 116
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 117
    iget-object v7, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mMutex:Ljava/lang/Object;

    monitor-enter v7

    .line 118
    :try_start_0
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsReady:Z

    if-nez v0, :cond_1

    .line 119
    monitor-exit v7

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 122
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 125
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFilterUpdate:Z

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraRenderer;->glUpdateFilter()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFilterUpdate:Z

    .line 134
    :cond_2
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mNeedUpdateViewPort:Z

    if-eqz v0, :cond_3

    .line 136
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageWidth:I

    iget v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageHeight:I

    iget v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewWidth:I

    .line 137
    iget v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewHeight:I

    iget-object v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 135
    invoke-static {v0, v1, v2, v3, v4}, Lcn/jingling/lib/livefilter/GLImageViewportHelper;->getGLViewPort(IIIILcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)Lcn/jingling/lib/livefilter/ViewportRect;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewportRect:Lcn/jingling/lib/livefilter/ViewportRect;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mNeedUpdateViewPort:Z

    .line 141
    :cond_3
    const-string/jumbo v0, "original"

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v1}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferYUV:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glBindFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 144
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mYUVShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    const/4 v1, 0x0

    iget v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureDataYHandle:I

    .line 145
    iget v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureDataUVHandle:I

    .line 144
    invoke-direct {p0, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/CameraRenderer;->glDrawYUV(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 158
    :goto_1
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsReady:Z

    .line 117
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 162
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFpsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFpsCount:I

    .line 163
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFpsCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraRenderer;->markTime()V

    .line 165
    iput v9, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFpsCount:I

    goto :goto_0

    .line 147
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferYUV:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glBindFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 148
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glBindFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 149
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glBindFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 150
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mYUVShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferYUV:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureDataYHandle:I

    .line 151
    iget v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureDataUVHandle:I

    .line 150
    invoke-direct {p0, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/CameraRenderer;->glDrawYUV(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 152
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFixMVPMatrix:[F

    iget v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mVBODisplayHandle:I

    .line 153
    iget-object v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferYUV:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v3, v3, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 154
    const/4 v4, 0x2

    new-array v4, v4, [Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    const/4 v5, 0x0

    iget-object v8, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget-object v8, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    aput-object v8, v4, v5

    .line 152
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glDraw([FII[Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v6

    .line 155
    .local v6, "fbi":Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFixMVPMatrix:[F

    iget v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mVBODisplayHandle:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewportRect:Lcn/jingling/lib/livefilter/ViewportRect;

    iget v5, v6, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    invoke-virtual/range {v0 .. v5}, Lcn/jingling/lib/livefilter/LiveOriginal;->glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;Lcn/jingling/lib/livefilter/ViewportRect;I)V

    goto :goto_1

    .line 117
    .end local v6    # "fbi":Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 174
    const-string/jumbo v0, "xxxx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSurfaceChanged width = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput p2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewWidth:I

    .line 177
    iput p3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mViewHeight:I

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mNeedUpdateViewPort:Z

    .line 179
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 184
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 185
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mAppContext:Landroid/content/Context;

    const-string/jumbo v1, "vertex_shader"

    .line 186
    const-string/jumbo v2, "yuv_fragment_shader"

    const-string v3, "aPosition"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "uTextureY"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "uTextureUV"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 187
    const-string/jumbo v6, "uMVPMatrix"

    aput-object v6, v4, v5

    .line 185
    invoke-static {v0, v1, v2, v3, v4}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mYUVShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 188
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/CameraRenderer;->glInitYUVTextures()V

    .line 189
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferYUV:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 190
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 191
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 193
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageWidth:I

    iget v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageHeight:I

    .line 192
    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBufferWithNoBind(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferYUV:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 195
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageWidth:I

    iget v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageHeight:I

    .line 194
    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBufferWithNoBind(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 197
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageWidth:I

    iget v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPreviewImageHeight:I

    .line 196
    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBufferWithNoBind(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 198
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/CameraRenderer;->glInitVBOs()V

    .line 199
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mLiveOriginal:Lcn/jingling/lib/livefilter/LiveOriginal;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/LiveOriginal;->glSetup(Landroid/content/Context;)V

    .line 200
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 201
    return-void
.end method

.method public setFrame([B)V
    .locals 5
    .param p1, "frame"    # [B

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsYBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 229
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 208
    :try_start_0
    iget-boolean v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsReady:Z

    if-eqz v2, :cond_1

    .line 209
    monitor-exit v3

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsYBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsUVBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    :try_start_2
    iget v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureWidth:I

    iget v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mTextureHeight:I

    mul-int v1, v2, v3

    .line 217
    .local v1, "size":I
    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsYBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 218
    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsUVBuffer:Ljava/nio/ByteBuffer;

    .line 219
    iget v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mImageFormat:I

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    mul-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x8

    .line 218
    invoke-virtual {v2, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 224
    .end local v1    # "size":I
    :goto_1
    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsYBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsUVBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    iget-object v3, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 227
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcn/jingling/lib/livefilter/CameraRenderer;->mPixelsReady:Z

    .line 226
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 220
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
