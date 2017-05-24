.class public Lcn/jingling/lib/livefilter/LiveKirsch;
.super Lcn/jingling/lib/livefilter/LiveOp;
.source "LiveKirsch.java"


# instance fields
.field private mShaderKrisch:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/LiveOp;-><init>()V

    return-void
.end method

.method private drawKirsch(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
    .locals 6
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 52
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 53
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveKirsch;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveKirsch;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 54
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 56
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 57
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 58
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 59
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "texelWidth"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveKirsch;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 59
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 61
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "texelHeight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveKirsch;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 61
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 64
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 65
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 66
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 65
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 67
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 69
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 71
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 72
    return-void

    .line 55
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto/16 :goto_0
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
    .line 39
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveKirsch;->mShaderKrisch:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveKirsch;->drawKirsch(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 42
    return-void
.end method

.method public glRelease()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public glSetup(Landroid/content/Context;)V
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 17
    .line 18
    const-string v0, "kirsch_vertex_shader"

    const-string v1, "kirsch_fragment_shader"

    const-string v2, "aPosition"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 19
    const-string/jumbo v5, "uMVPMatrix"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "texelWidth"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "texelHeight"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "uTexture"

    aput-object v5, v3, v4

    .line 17
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveKirsch;->mShaderKrisch:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 20
    return-void
.end method

.method public glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/livefilter/LiveOp;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 25
    return-void
.end method
