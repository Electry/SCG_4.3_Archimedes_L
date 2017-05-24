.class public Lcn/jingling/lib/livefilter/LiveBlueEdge;
.super Lcn/jingling/lib/livefilter/LiveOp;
.source "LiveBlueEdge.java"


# instance fields
.field private mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferTemplateBlueImg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferTemplateHolder:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferTemplateSobelEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mShaderBlueImg:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mShaderLevelsCompression:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mShaderPosterize:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mShaderRGB2GRAY3:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mShaderSobelEdg:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

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

.method private drawImg(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
    .locals 6
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 157
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 158
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 159
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 161
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 162
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 163
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 165
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 166
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 167
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 166
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 168
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 170
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 172
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 173
    return-void

    .line 160
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
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

    .line 244
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 245
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 246
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 248
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 249
    invoke-static {v2, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 250
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 251
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 252
    invoke-static {v2, p7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 253
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTextureLayer"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 254
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uLayerWeight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 255
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 256
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 257
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 256
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 258
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 259
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 261
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 262
    return-void

    .line 247
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

    .line 221
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 222
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 223
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 225
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 226
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 227
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 228
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uLowEdge"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 229
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uHighEdge"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 231
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 232
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 233
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 232
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 234
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 236
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 238
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 239
    return-void

    .line 224
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

    .line 199
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 200
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 201
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 203
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 204
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 205
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 206
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uLevels"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 208
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 209
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 210
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 209
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 211
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 213
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 215
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 216
    return-void

    .line 202
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

    .line 178
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 179
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 180
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 182
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 183
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 184
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 186
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 187
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 188
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 187
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 189
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 191
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 193
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 194
    return-void

    .line 181
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method

.method private drawSobelEdge(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
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

    .line 133
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 134
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 135
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 137
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 138
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 139
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 140
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "texelWidth"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 140
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 142
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "texelHeight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 142
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 145
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 146
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 147
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 146
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 148
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 150
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 152
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 153
    return-void

    .line 136
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto/16 :goto_0
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
    .line 80
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mShaderSobelEdg:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 81
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateSobelEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    .line 80
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveBlueEdge;->drawSobelEdge(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 82
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mShaderBlueImg:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 83
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateBlueImg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    .line 82
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveBlueEdge;->drawImg(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 85
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 86
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateHolder:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 87
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateSobelEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 88
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateBlueImg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v7, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 85
    invoke-direct/range {v0 .. v8}, Lcn/jingling/lib/livefilter/LiveBlueEdge;->drawLayer(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIIF)V

    .line 90
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mShaderRGB2GRAY3:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 91
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    .line 90
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveBlueEdge;->drawRGB2GRAY3(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 92
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mShaderPosterize:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 93
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 94
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    const/high16 v7, 0x41400000    # 12.0f

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 92
    invoke-direct/range {v0 .. v7}, Lcn/jingling/lib/livefilter/LiveBlueEdge;->drawPosterize(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIF)V

    .line 95
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mShaderLevelsCompression:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 96
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 97
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    const v7, 0x3e48c8c9

    const v8, 0x3f34b4b5

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 95
    invoke-direct/range {v0 .. v8}, Lcn/jingling/lib/livefilter/LiveBlueEdge;->drawLevelsCompression(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIFF)V

    .line 98
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 99
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 100
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateHolder:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v7, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    const v8, 0x3f333333    # 0.7f

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 98
    invoke-direct/range {v0 .. v8}, Lcn/jingling/lib/livefilter/LiveBlueEdge;->drawLayer(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIIF)V

    .line 102
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 103
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 104
    iget v7, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mTextureBrushStrokeHandle1:I

    const v8, 0x3e4ccccd    # 0.2f

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 102
    invoke-direct/range {v0 .. v8}, Lcn/jingling/lib/livefilter/LiveBlueEdge;->drawLayer(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIIF)V

    .line 105
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 106
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 107
    iget v7, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mTextureBrushStrokeHandle2:I

    const v8, 0x3e99999a    # 0.3f

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 105
    invoke-direct/range {v0 .. v8}, Lcn/jingling/lib/livefilter/LiveBlueEdge;->drawLayer(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIIF)V

    .line 108
    return-void
.end method

.method public glRelease()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateSobelEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 113
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 114
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 115
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateBlueImg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 116
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateHolder:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 117
    iput-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateSobelEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 118
    iput-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 119
    iput-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 120
    iput-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateBlueImg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 121
    iput-object v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateHolder:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 123
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mTextureBrushStrokeHandle1:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 124
    iput v4, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mTextureBrushStrokeHandle1:I

    .line 126
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mTextureBrushStrokeHandle2:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 127
    iput v4, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mTextureBrushStrokeHandle2:I

    .line 128
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

    .line 26
    .line 27
    const-string v0, "kirsch_vertex_shader"

    const-string/jumbo v1, "sobel_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v9, [Ljava/lang/String;

    .line 28
    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    const-string/jumbo v4, "texelWidth"

    aput-object v4, v3, v6

    const-string/jumbo v4, "texelHeight"

    aput-object v4, v3, v7

    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v8

    .line 26
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mShaderSobelEdg:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 30
    const-string/jumbo v0, "vertex_shader"

    .line 31
    const-string v1, "generate_blue_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    .line 32
    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v6

    .line 30
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mShaderBlueImg:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 34
    const-string/jumbo v0, "vertex_shader"

    .line 35
    const-string/jumbo v1, "rgb2gray_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    .line 36
    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v6

    .line 34
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mShaderRGB2GRAY3:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 38
    const-string/jumbo v0, "vertex_shader"

    .line 39
    const-string/jumbo v1, "posterize_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    .line 40
    const-string/jumbo v4, "uLevels"

    aput-object v4, v3, v6

    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v7

    .line 38
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mShaderPosterize:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 43
    const-string/jumbo v0, "vertex_shader"

    const-string v1, "levels_compression_fragment_shader"

    .line 44
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

    .line 42
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mShaderLevelsCompression:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 46
    const-string/jumbo v0, "vertex_shader"

    .line 47
    const-string/jumbo v1, "overlay_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    .line 48
    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v6

    const-string/jumbo v4, "uTextureLayer"

    aput-object v4, v3, v7

    const-string/jumbo v4, "uLayerWeight"

    aput-object v4, v3, v8

    .line 46
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 50
    return-void
.end method

.method public glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/livefilter/LiveOp;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 56
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    .line 55
    invoke-static {v2, v3}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v2

    iput-object v2, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateSobelEdg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 58
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    .line 57
    invoke-static {v2, v3}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v2

    iput-object v2, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateBlueImg:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 60
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    .line 59
    invoke-static {v2, v3}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v2

    iput-object v2, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferTemplateHolder:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 62
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    .line 61
    invoke-static {v2, v3}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v2

    iput-object v2, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 64
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    .line 63
    invoke-static {v2, v3}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v2

    iput-object v2, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mFrameBufferSrcHolderB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 66
    const-string v2, "layers/canvas_graphic_pen"

    .line 67
    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sget-object v5, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    .line 66
    invoke-static {p1, v2, v3, v4, v5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "bm1":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadSubTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mTextureBrushStrokeHandle1:I

    .line 70
    const-string v2, "layers/canvas_paper7"

    .line 71
    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sget-object v5, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    .line 70
    invoke-static {p1, v2, v3, v4, v5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 72
    .local v1, "bm2":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/TextureHelper;->loadSubTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcn/jingling/lib/livefilter/LiveBlueEdge;->mTextureBrushStrokeHandle2:I

    .line 74
    return-void
.end method
