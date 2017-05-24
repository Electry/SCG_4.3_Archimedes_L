.class public final Lcn/jingling/lib/livefilter/CameraFbo;
.super Ljava/lang/Object;
.source "CameraFbo.java"


# instance fields
.field private mFrameBufferHandle:I

.field private mHeight:I

.field private mTextureHandles:[I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mFrameBufferHandle:I

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mTextureHandles:[I

    .line 25
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const v0, 0x8d40

    iget v1, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mFrameBufferHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 39
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mWidth:I

    iget v1, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 40
    return-void
.end method

.method public bindTexture(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 50
    const v0, 0x8d40

    .line 51
    const v1, 0x8ce0

    const/16 v2, 0xde1

    .line 52
    iget-object v3, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mTextureHandles:[I

    aget v3, v3, p1

    const/4 v4, 0x0

    .line 50
    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 53
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mHeight:I

    return v0
.end method

.method public getTexture(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mTextureHandles:[I

    aget v0, v0, p1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mWidth:I

    return v0
.end method

.method public init(IIIZ)V
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "textureCount"    # I
    .param p4, "textureExternalOES"    # Z

    .prologue
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/livefilter/CameraFbo;->reset()V

    .line 107
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/livefilter/CameraFbo;->mWidth:I

    .line 108
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/livefilter/CameraFbo;->mHeight:I

    .line 111
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 112
    .local v11, "handle":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v11, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 113
    const/4 v2, 0x0

    aget v2, v11, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/jingling/lib/livefilter/CameraFbo;->mFrameBufferHandle:I

    .line 114
    const v2, 0x8d40

    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/livefilter/CameraFbo;->mFrameBufferHandle:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 117
    move/from16 v0, p3

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/jingling/lib/livefilter/CameraFbo;->mTextureHandles:[I

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/livefilter/CameraFbo;->mTextureHandles:[I

    const/4 v3, 0x0

    move/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 119
    if-eqz p4, :cond_0

    const v12, 0x8d65

    .line 121
    .local v12, "target":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/jingling/lib/livefilter/CameraFbo;->mTextureHandles:[I

    array-length v0, v15

    move/from16 v16, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_1
    move/from16 v0, v16

    if-lt v14, v0, :cond_1

    .line 137
    return-void

    .line 120
    .end local v12    # "target":I
    :cond_0
    const/16 v12, 0xde1

    goto :goto_0

    .line 121
    .restart local v12    # "target":I
    :cond_1
    aget v13, v15, v14

    .line 122
    .local v13, "texture":I
    invoke-static {v12, v13}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 123
    const/16 v2, 0xde1

    .line 124
    const/16 v3, 0x2802

    const v4, 0x812f

    .line 123
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 125
    const/16 v2, 0x2803

    .line 126
    const v3, 0x812f

    .line 125
    invoke-static {v12, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 127
    const/16 v2, 0x2801

    .line 128
    const/16 v3, 0x2601

    .line 127
    invoke-static {v12, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 129
    const/16 v2, 0x2800

    .line 130
    const/16 v3, 0x2601

    .line 129
    invoke-static {v12, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 131
    const/16 v2, 0xde1

    if-ne v12, v2, :cond_2

    .line 132
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    .line 133
    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/livefilter/CameraFbo;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/livefilter/CameraFbo;->mHeight:I

    const/4 v7, 0x0

    const/16 v8, 0x1908

    .line 134
    const/16 v9, 0x1401

    const/4 v10, 0x0

    .line 132
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 121
    :cond_2
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    new-array v0, v2, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mFrameBufferHandle:I

    aput v1, v0, v3

    .line 145
    .local v0, "handle":[I
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 146
    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mTextureHandles:[I

    array-length v1, v1

    iget-object v2, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mTextureHandles:[I

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mFrameBufferHandle:I

    .line 148
    new-array v1, v3, [I

    iput-object v1, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mTextureHandles:[I

    .line 149
    iput v3, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mHeight:I

    iput v3, p0, Lcn/jingling/lib/livefilter/CameraFbo;->mWidth:I

    .line 150
    return-void
.end method
