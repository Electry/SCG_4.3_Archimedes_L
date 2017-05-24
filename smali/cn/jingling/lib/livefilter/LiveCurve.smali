.class public Lcn/jingling/lib/livefilter/LiveCurve;
.super Lcn/jingling/lib/livefilter/LiveOp;
.source "LiveCurve.java"


# instance fields
.field private mCurve:Ljava/lang/String;

.field private mCurveHandle:I

.field private mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "curve"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/LiveOp;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mCurve:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
    .locals 7
    .param p1, "mvpMatrix"    # [F
    .param p2, "vboHandle"    # I
    .param p3, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p4, "posDataSize"    # I
    .param p5, "textureHandle"    # I

    .prologue
    const/16 v2, 0xde1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 35
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 36
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 38
    const v1, 0x8d40

    if-nez p3, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 40
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 41
    invoke-static {v2, p5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 42
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 43
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 44
    iget v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mCurveHandle:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 45
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTextureCurve"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 46
    const v0, 0x8892

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 47
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 48
    const/16 v2, 0x1406

    move v1, p4

    move v4, v3

    move v5, v3

    .line 47
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 49
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 50
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 52
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 54
    return-void

    .line 39
    :cond_0
    iget v0, p3, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method

.method public glRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mCurveHandle:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mCurveHandle:I

    .line 61
    return-void
.end method

.method public glSetup(Landroid/content/Context;)V
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string/jumbo v0, "vertex_shader"

    .line 21
    const-string v1, "curve_fragment_shader"

    const-string v2, "aPosition"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "uMVPMatrix"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "uTexture"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 22
    const-string/jumbo v5, "uTextureCurve"

    aput-object v5, v3, v4

    .line 20
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 24
    return-void
.end method

.method public glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/livefilter/LiveOp;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 29
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mCurve:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadCurveTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/livefilter/LiveCurve;->mCurveHandle:I

    .line 30
    return-void
.end method
