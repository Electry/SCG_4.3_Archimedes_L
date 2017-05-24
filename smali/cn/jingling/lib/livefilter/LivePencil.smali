.class public Lcn/jingling/lib/livefilter/LivePencil;
.super Lcn/jingling/lib/livefilter/LiveOp;
.source "LivePencil.java"


# instance fields
.field private mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferTemplateEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mPencilOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mShaderKrisch:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mShaderLevelsCompression:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mShaderPosterize:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mShaderRGB2GRAY3:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mTextureBrushStrokeHandle1:I

.field private mTextureBrushStrokeHandle2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
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

    .line 118
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 119
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 120
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 122
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 123
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 124
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 125
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "texelWidth"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 125
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 127
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "texelHeight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 127
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 130
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 131
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 132
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 131
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 133
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 135
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 137
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 138
    return-void

    .line 121
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto/16 :goto_0
.end method

.method private drawLayer(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIIF)V
    .locals 7
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I
    .param p7, "textureLayerHandle"    # I
    .param p8, "layerWeight"    # F

    .prologue
    const/16 v2, 0xde1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 209
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 210
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 211
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 213
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 214
    invoke-static {v2, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 215
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 216
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 217
    invoke-static {v2, p7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 218
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTextureLayer"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 219
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uLayerWeight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 220
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 221
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 222
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 221
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 223
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 224
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 226
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 227
    return-void

    .line 212
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method

.method private drawLevelsCompression(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIFF)V
    .locals 6
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I
    .param p7, "lowEdge"    # F
    .param p8, "highEdge"    # F

    .prologue
    const/4 v3, 0x0

    .line 186
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 187
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 188
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 190
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 191
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 192
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 193
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uLowEdge"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 194
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uHighEdge"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 196
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 197
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 198
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 197
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 199
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 201
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 203
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 204
    return-void

    .line 189
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method

.method private drawPosterize(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIF)V
    .locals 6
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I
    .param p7, "uLevels"    # F

    .prologue
    const/4 v3, 0x0

    .line 164
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 165
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 166
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 168
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 169
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 170
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 171
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uLevels"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 173
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 174
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 175
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 174
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 176
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 178
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 180
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 181
    return-void

    .line 167
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method

.method private drawRGB2GRAY3(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
    .locals 6
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 143
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 144
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 145
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 147
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 148
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 149
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 151
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 152
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 153
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 152
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 154
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 156
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 158
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 159
    return-void

    .line 146
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method


# virtual methods
.method public glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
    .locals 9
    .param p1, "mvpMatrix"    # [F
    .param p2, "vboHandle"    # I
    .param p3, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p4, "posDataSize"    # I
    .param p5, "textureHandle"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mShaderKrisch:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 74
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferTemplateEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    .line 73
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LivePencil;->drawKirsch(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 75
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mShaderRGB2GRAY3:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 76
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    .line 75
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LivePencil;->drawRGB2GRAY3(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 77
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mShaderPosterize:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 78
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 79
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    const/high16 v7, 0x41400000    # 12.0f

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 77
    invoke-direct/range {v0 .. v7}, Lcn/jingling/lib/livefilter/LivePencil;->drawPosterize(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIF)V

    .line 80
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mShaderLevelsCompression:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 81
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 82
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    const v7, 0x3e48c8c9

    const v8, 0x3f34b4b5

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 80
    invoke-direct/range {v0 .. v8}, Lcn/jingling/lib/livefilter/LivePencil;->drawLevelsCompression(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIFF)V

    .line 83
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v4, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 84
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 85
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferTemplateEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v7, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    const v8, 0x3f333333    # 0.7f

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 83
    invoke-direct/range {v0 .. v8}, Lcn/jingling/lib/livefilter/LivePencil;->drawLayer(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIIF)V

    .line 87
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mPencilOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 88
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 89
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 90
    iget v7, p0, Lcn/jingling/lib/livefilter/LivePencil;->mTextureBrushStrokeHandle1:I

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 87
    invoke-direct/range {v0 .. v8}, Lcn/jingling/lib/livefilter/LivePencil;->drawLayer(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIIF)V

    .line 91
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 92
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 93
    iget v7, p0, Lcn/jingling/lib/livefilter/LivePencil;->mTextureBrushStrokeHandle2:I

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 91
    invoke-direct/range {v0 .. v8}, Lcn/jingling/lib/livefilter/LivePencil;->drawLayer(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIIF)V

    .line 97
    return-void
.end method

.method public glRelease()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferTemplateEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 102
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 103
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 104
    iput-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferTemplateEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 105
    iput-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 106
    iput-object v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 108
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mTextureBrushStrokeHandle1:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 109
    iput v4, p0, Lcn/jingling/lib/livefilter/LivePencil;->mTextureBrushStrokeHandle1:I

    .line 111
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/LivePencil;->mTextureBrushStrokeHandle2:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 112
    iput v4, p0, Lcn/jingling/lib/livefilter/LivePencil;->mTextureBrushStrokeHandle2:I

    .line 113
    return-void
.end method

.method public glSetup(Landroid/content/Context;)V
    .locals 10
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 25
    .line 26
    const-string v0, "kirsch_vertex_shader"

    const-string v1, "kirsch_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v9, [Ljava/lang/String;

    .line 27
    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    const-string/jumbo v4, "texelWidth"

    aput-object v4, v3, v6

    const-string/jumbo v4, "texelHeight"

    aput-object v4, v3, v7

    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v8

    .line 25
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mShaderKrisch:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 29
    const-string/jumbo v0, "vertex_shader"

    .line 30
    const-string/jumbo v1, "rgb2gray_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    .line 31
    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v6

    .line 29
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mShaderRGB2GRAY3:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 33
    const-string/jumbo v0, "vertex_shader"

    .line 34
    const-string/jumbo v1, "posterize_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    .line 35
    const-string/jumbo v4, "uLevels"

    aput-object v4, v3, v6

    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v7

    .line 33
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mShaderPosterize:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 38
    const-string/jumbo v0, "vertex_shader"

    const-string v1, "levels_compression_fragment_shader"

    .line 39
    const-string v2, "aPosition"

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    const-string/jumbo v4, "uLowEdge"

    aput-object v4, v3, v6

    const-string/jumbo v4, "uHighEdge"

    aput-object v4, v3, v7

    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v8

    .line 37
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mShaderLevelsCompression:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 41
    const-string/jumbo v0, "vertex_shader"

    .line 42
    const-string/jumbo v1, "overlay_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    .line 43
    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v6

    const-string/jumbo v4, "uTextureLayer"

    aput-object v4, v3, v7

    const-string/jumbo v4, "uLayerWeight"

    aput-object v4, v3, v8

    .line 41
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 46
    const-string/jumbo v0, "vertex_shader"

    const-string/jumbo v1, "pencil_overlay_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v9, [Ljava/lang/String;

    .line 47
    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v6

    const-string/jumbo v4, "uTextureLayer"

    aput-object v4, v3, v7

    const-string/jumbo v4, "uLayerWeight"

    aput-object v4, v3, v8

    .line 45
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LivePencil;->mPencilOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 49
    return-void
.end method

.method public glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/livefilter/LiveOp;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 55
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    .line 54
    invoke-static {v2, v3}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v2

    iput-object v2, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferTemplateEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 57
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    .line 56
    invoke-static {v2, v3}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v2

    iput-object v2, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 59
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    .line 58
    invoke-static {v2, v3}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v2

    iput-object v2, p0, Lcn/jingling/lib/livefilter/LivePencil;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 60
    const-string v2, "layers/newpencilstroke"

    .line 61
    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sget-object v5, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    .line 60
    invoke-static {p1, v2, v3, v4, v5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, "bm1":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadSubTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcn/jingling/lib/livefilter/LivePencil;->mTextureBrushStrokeHandle1:I

    .line 64
    const-string v2, "layers/canvas_paper7"

    .line 65
    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sget-object v5, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    .line 64
    invoke-static {p1, v2, v3, v4, v5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    .local v1, "bm2":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/TextureHelper;->loadSubTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcn/jingling/lib/livefilter/LivePencil;->mTextureBrushStrokeHandle2:I

    .line 67
    return-void
.end method
