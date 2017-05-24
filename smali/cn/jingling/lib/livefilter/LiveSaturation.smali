.class public Lcn/jingling/lib/livefilter/LiveSaturation;
.super Lcn/jingling/lib/livefilter/LiveOp;
.source "LiveSaturation.java"


# instance fields
.field private mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field public sat:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "sat"    # F

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/LiveOp;-><init>()V

    .line 14
    iput p1, p0, Lcn/jingling/lib/livefilter/LiveSaturation;->sat:F

    .line 15
    return-void
.end method


# virtual methods
.method public glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
    .locals 6
    .param p1, "mvpMatrix"    # [F
    .param p2, "vboHandle"    # I
    .param p3, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p4, "posDataSize"    # I
    .param p5, "textureHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSaturation;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 36
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSaturation;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSaturation;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 37
    const v1, 0x8d40

    if-nez p3, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 39
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 40
    const/16 v0, 0xde1

    invoke-static {v0, p5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 41
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSaturation;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 42
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSaturation;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uSat"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcn/jingling/lib/livefilter/LiveSaturation;->sat:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 43
    const v0, 0x8892

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 44
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSaturation;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 45
    const/16 v2, 0x1406

    move v1, p4

    move v4, v3

    move v5, v3

    .line 44
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 46
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSaturation;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 47
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSaturation;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 49
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 51
    return-void

    .line 38
    :cond_0
    iget v0, p3, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method

.method public glRelease()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public glSetup(Landroid/content/Context;)V
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 19
    const-string/jumbo v0, "vertex_shader"

    .line 20
    const-string/jumbo v1, "saturation_fragment_shader"

    const-string v2, "aPosition"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "uMVPMatrix"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 21
    const-string/jumbo v5, "uTexture"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "uSat"

    aput-object v5, v3, v4

    .line 19
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSaturation;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 23
    return-void
.end method

.method public glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/livefilter/LiveOp;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 29
    return-void
.end method
