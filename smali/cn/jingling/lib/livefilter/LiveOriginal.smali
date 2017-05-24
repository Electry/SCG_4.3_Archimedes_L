.class public Lcn/jingling/lib/livefilter/LiveOriginal;
.super Ljava/lang/Object;
.source "LiveOriginal.java"


# instance fields
.field private mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;Lcn/jingling/lib/livefilter/ViewportRect;I)V
    .locals 6
    .param p1, "mvpMatrix"    # [F
    .param p2, "vboHandle"    # I
    .param p3, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p4, "viewportRect"    # Lcn/jingling/lib/livefilter/ViewportRect;
    .param p5, "textureHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 33
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveOriginal;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 34
    iget v0, p4, Lcn/jingling/lib/livefilter/ViewportRect;->x:I

    iget v1, p4, Lcn/jingling/lib/livefilter/ViewportRect;->y:I

    iget v2, p4, Lcn/jingling/lib/livefilter/ViewportRect;->width:I

    iget v4, p4, Lcn/jingling/lib/livefilter/ViewportRect;->height:I

    invoke-static {v0, v1, v2, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 35
    const v1, 0x8d40

    if-nez p3, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 37
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 38
    const/16 v0, 0xde1

    invoke-static {v0, p5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 39
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveOriginal;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 40
    const v0, 0x8892

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 41
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveOriginal;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    const/4 v1, 0x2

    .line 42
    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    .line 41
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 43
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveOriginal;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 44
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveOriginal;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 46
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 47
    return-void

    .line 36
    :cond_0
    iget v0, p3, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method

.method public glSetup(Landroid/content/Context;)V
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 17
    const-string/jumbo v0, "vertex_shader"

    .line 18
    const-string v1, "empty_fragment_shader"

    const-string v2, "aPosition"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "uMVPMatrix"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 19
    const-string/jumbo v5, "uTexture"

    aput-object v5, v3, v4

    .line 17
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveOriginal;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 20
    return-void
.end method
