.class public Lcn/jingling/lib/livefilter/LiveHopeEffect;
.super Lcn/jingling/lib/livefilter/LiveOp;
.source "LiveHopeEffect.java"


# instance fields
.field private mHopeEffectShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mTextureLayerHandle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/LiveOp;-><init>()V

    return-void
.end method

.method private createTextureBitmap(II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 36
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, "textureBitmap":Landroid/graphics/Bitmap;
    mul-int v3, p1, p2

    new-array v1, v3, [I

    .local v1, "texPixels":[I
    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    .line 38
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 39
    invoke-static {v1, p1, p2}, Lcn/jingling/lib/filters/CMTProcessor;->setHopeEffectTexturePixels([III)V

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    .line 40
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 41
    return-object v0
.end method

.method private drawHopeEffect(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;III)V
    .locals 7
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I
    .param p7, "textureLayerHandle"    # I

    .prologue
    const/16 v2, 0xde1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 62
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 63
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveHopeEffect;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveHopeEffect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 64
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 66
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 67
    invoke-static {v2, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 68
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 69
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 70
    invoke-static {v2, p7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 71
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTextureLayer"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 73
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 74
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 75
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 74
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 76
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 77
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 79
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 80
    return-void

    .line 65
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method


# virtual methods
.method public glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
    .locals 8
    .param p1, "mvpMatrix"    # [F
    .param p2, "vboHandle"    # I
    .param p3, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p4, "posDataSize"    # I
    .param p5, "textureHandle"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveHopeEffect;->mHopeEffectShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 48
    iget v7, p0, Lcn/jingling/lib/livefilter/LiveHopeEffect;->mTextureLayerHandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 47
    invoke-direct/range {v0 .. v7}, Lcn/jingling/lib/livefilter/LiveHopeEffect;->drawHopeEffect(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;III)V

    .line 50
    return-void
.end method

.method public glRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/LiveHopeEffect;->mTextureLayerHandle:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcn/jingling/lib/livefilter/LiveHopeEffect;->mTextureLayerHandle:I

    .line 57
    return-void
.end method

.method public glSetup(Landroid/content/Context;)V
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string/jumbo v0, "vertex_shader"

    .line 21
    const-string v1, "hope_effect_fragment_shader"

    const-string v2, "aPosition"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "uMVPMatrix"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 22
    const-string/jumbo v5, "uTexture"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "uTextureLayer"

    aput-object v5, v3, v4

    .line 20
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveHopeEffect;->mHopeEffectShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 23
    return-void
.end method

.method public glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/livefilter/LiveOp;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 30
    iget v1, p2, Landroid/graphics/Point;->x:I

    .line 31
    iget v2, p2, Landroid/graphics/Point;->y:I

    .line 30
    invoke-direct {p0, v1, v2}, Lcn/jingling/lib/livefilter/LiveHopeEffect;->createTextureBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    .local v0, "textureBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadSubTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/livefilter/LiveHopeEffect;->mTextureLayerHandle:I

    .line 33
    return-void
.end method
