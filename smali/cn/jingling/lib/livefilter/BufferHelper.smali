.class public Lcn/jingling/lib/livefilter/BufferHelper;
.super Ljava/lang/Object;
.source "BufferHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static glBindFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V
    .locals 5
    .param p0, "fbinfo"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .prologue
    const v4, 0x8d40

    .line 80
    .line 81
    iget v0, p0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    .line 80
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 83
    const v0, 0x8ce0

    const/16 v1, 0xde1

    .line 84
    iget v2, p0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    const/4 v3, 0x0

    .line 82
    invoke-static {v4, v0, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 85
    return-void
.end method

.method public static glDrawFrameBufferOnScreen(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;Landroid/opengl/Matrix;)V
    .locals 0
    .param p0, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p1, "mvpMatrix"    # Landroid/opengl/Matrix;

    .prologue
    .line 133
    return-void
.end method

.method public static glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .locals 14
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/16 v2, 0x1908

    const v4, 0x46180400    # 9729.0f

    const/4 v13, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 20
    new-array v12, v13, [I

    .line 21
    .local v12, "textures":[I
    invoke-static {v13, v12, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 22
    aget v10, v12, v1

    .line 23
    .local v10, "frameBufferTexture":I
    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 25
    const/16 v3, 0x2801

    .line 24
    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 27
    const/16 v3, 0x2800

    .line 26
    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 29
    invoke-static {p0}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    .line 30
    invoke-static {p1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    .line 31
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    .line 28
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 33
    new-array v11, v13, [I

    .line 34
    .local v11, "frameBuffers":[I
    invoke-static {v13, v11, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 35
    aget v9, v11, v1

    .line 37
    .local v9, "frameBufferHandle":I
    const v2, 0x8d40

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 38
    const v2, 0x8d40

    .line 39
    const v3, 0x8ce0

    .line 38
    invoke-static {v2, v3, v0, v10, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 42
    new-instance v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-direct {v0, v9, v10}, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;-><init>(II)V

    return-object v0
.end method

.method public static glGenerateFrameBufferOES(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const v6, 0x812f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 95
    new-array v4, v8, [I

    .line 96
    .local v4, "textures":[I
    invoke-static {v8, v4, v7}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 97
    aget v1, v4, v7

    .line 98
    .local v1, "frameBufferTexture":I
    const v3, 0x8d65

    .line 99
    .local v3, "target":I
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 100
    const/16 v5, 0x2802

    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 102
    const/16 v5, 0x2803

    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 104
    const/16 v5, 0x2801

    .line 105
    const/16 v6, 0x2600

    .line 104
    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 106
    const/16 v5, 0x2800

    .line 107
    const/16 v6, 0x2601

    .line 106
    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 109
    new-array v2, v8, [I

    .line 110
    .local v2, "frameBuffers":[I
    invoke-static {v8, v2, v7}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 111
    aget v0, v2, v7

    .line 113
    .local v0, "frameBufferHandle":I
    new-instance v5, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-direct {v5, v0, v1}, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;-><init>(II)V

    return-object v5
.end method

.method public static glGenerateFrameBufferWithNoBind(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .locals 14
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/16 v2, 0x1908

    const v4, 0x46180400    # 9729.0f

    const/16 v0, 0xde1

    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 54
    new-array v12, v13, [I

    .line 55
    .local v12, "textures":[I
    invoke-static {v13, v12, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 56
    aget v10, v12, v1

    .line 57
    .local v10, "frameBufferTexture":I
    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 59
    const/16 v3, 0x2801

    .line 58
    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 61
    const/16 v3, 0x2800

    .line 60
    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 63
    invoke-static {p0}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    .line 64
    invoke-static {p1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    .line 65
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    .line 62
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 67
    new-array v11, v13, [I

    .line 68
    .local v11, "frameBuffers":[I
    invoke-static {v13, v11, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 69
    aget v9, v11, v1

    .line 71
    .local v9, "frameBufferHandle":I
    new-instance v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-direct {v0, v9, v10}, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;-><init>(II)V

    return-object v0
.end method

.method public static glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V
    .locals 4
    .param p0, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    if-eqz p0, :cond_0

    .line 124
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 126
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 128
    :cond_0
    return-void
.end method
