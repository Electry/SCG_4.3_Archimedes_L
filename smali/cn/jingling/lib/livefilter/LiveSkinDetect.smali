.class public Lcn/jingling/lib/livefilter/LiveSkinDetect;
.super Lcn/jingling/lib/livefilter/LiveOp;
.source "LiveSkinDetect.java"


# instance fields
.field private mAlphaMeanShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mFrameBufferC:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

.field private mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mSmoothApplyShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mSmoothBlurHorizontalShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mSmoothBlurVerticalShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mSmoothExtractionShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mSmoothTemplateShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mTextureHighlightCurveHandle:I

.field private mTextureSmoothCurveHandle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/LiveOp;-><init>()V

    return-void
.end method

.method private glAlphaMean(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
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

    .line 131
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 132
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 133
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 135
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 136
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 137
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 138
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "texelWidth"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 138
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 140
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "texelHeight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 140
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 143
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 144
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 145
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 144
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 146
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 148
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 150
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 151
    return-void

    .line 134
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto/16 :goto_0
.end method

.method private glDrawExtraction(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;III)V
    .locals 7
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I
    .param p7, "textureBlurHandle"    # I

    .prologue
    const/16 v2, 0xde1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 226
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 227
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 228
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 230
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 231
    invoke-static {v2, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 232
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 233
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 234
    invoke-static {v2, p7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 235
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTextureBlur"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 236
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 237
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 238
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 237
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 239
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 240
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 242
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 243
    return-void

    .line 229
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method

.method private glDrawSmoothApply(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIII)V
    .locals 7
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I
    .param p7, "textureTemplateHandle"    # I
    .param p8, "textureCurveHandle"    # I

    .prologue
    const/4 v6, 0x1

    const/16 v2, 0xde1

    const/4 v3, 0x0

    .line 270
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 271
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 272
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 274
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 275
    invoke-static {v2, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 276
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 277
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 278
    invoke-static {v2, p7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 279
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTextureTemplate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 280
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 281
    invoke-static {v2, p8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 282
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTextureCurve"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 283
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 284
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 285
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 284
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 286
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 287
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 289
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 290
    return-void

    .line 273
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto/16 :goto_0
.end method

.method private glDrawSmoothBlur(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
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

    .line 202
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 203
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 204
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 206
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 207
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 208
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string v1, "inputImageTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 209
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "texelWidthOffset"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 210
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 209
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 211
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "texelHeightOffset"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 211
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 214
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 215
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 216
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 215
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 217
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 218
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 220
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 221
    return-void

    .line 205
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto/16 :goto_0
.end method

.method private glDrawTemplate(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;III)V
    .locals 7
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I
    .param p7, "textureCurveHandle"    # I

    .prologue
    const/16 v2, 0xde1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 248
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 249
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 250
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 252
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 253
    invoke-static {v2, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 254
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 255
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 256
    invoke-static {v2, p7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 257
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTextureCurve"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 258
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 259
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 260
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 259
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 261
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 262
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 264
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 265
    return-void

    .line 251
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method

.method private glSkinDetect(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
    .locals 6
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 182
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 183
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 184
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 186
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 187
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 188
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 189
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 190
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 191
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 190
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 192
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 193
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 195
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 197
    return-void

    .line 185
    :cond_0
    iget v0, p4, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0
.end method

.method private glSkinOverlay(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIII)V
    .locals 7
    .param p1, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p2, "mvpMatrix"    # [F
    .param p3, "vboHandle"    # I
    .param p4, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p5, "posDataSize"    # I
    .param p6, "textureHandle"    # I
    .param p7, "textureTemplateHandle"    # I
    .param p8, "textureCurveHandle"    # I

    .prologue
    const/4 v6, 0x1

    const/16 v2, 0xde1

    const/4 v3, 0x0

    .line 156
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 157
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 158
    const v1, 0x8d40

    if-nez p4, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 160
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 161
    invoke-static {v2, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 162
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 163
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 164
    invoke-static {v2, p7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 165
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTextureLayer"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 166
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 167
    invoke-static {v2, p8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 168
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTextureWeight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 169
    const v0, 0x8892

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 170
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 171
    const/16 v2, 0x1406

    move v1, p5

    move v4, v3

    move v5, v3

    .line 170
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 172
    iget v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 173
    iget-object v0, p1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 175
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 176
    return-void

    .line 159
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
    .line 70
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glBindFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 71
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glBindFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 73
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothBlurHorizontalShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 74
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    .line 73
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glDrawSmoothBlur(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 75
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothBlurVerticalShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 76
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 75
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glDrawSmoothBlur(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 77
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothBlurHorizontalShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 78
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 77
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glDrawSmoothBlur(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 79
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothBlurVerticalShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 80
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 79
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glDrawSmoothBlur(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 81
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothBlurHorizontalShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 82
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 81
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glDrawSmoothBlur(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 83
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothBlurVerticalShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 84
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 83
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glDrawSmoothBlur(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 96
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glSkinDetect(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 98
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mAlphaMeanShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferC:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 99
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 98
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glAlphaMean(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 100
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 101
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v7, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 102
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferC:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v8, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    .line 100
    invoke-direct/range {v0 .. v8}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glSkinOverlay(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIII)V

    .line 105
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothExtractionShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 106
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 107
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v7, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    .line 105
    invoke-direct/range {v0 .. v7}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glDrawExtraction(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;III)V

    .line 108
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothTemplateShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 109
    iget-object v4, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v6, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 110
    iget v7, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mTextureHighlightCurveHandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 108
    invoke-direct/range {v0 .. v7}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glDrawTemplate(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;III)V

    .line 111
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothApplyShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 112
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    iget v7, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 113
    iget v8, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mTextureSmoothCurveHandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 111
    invoke-direct/range {v0 .. v8}, Lcn/jingling/lib/livefilter/LiveSkinDetect;->glDrawSmoothApply(Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;[FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIII)V

    .line 116
    return-void
.end method

.method public glRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 122
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 123
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferC:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    invoke-static {v0}, Lcn/jingling/lib/livefilter/BufferHelper;->glReleaseFrameBuffer(Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)V

    .line 124
    iput-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 125
    iput-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 126
    iput-object v1, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferC:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 127
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

    .line 19
    .line 20
    const-string v0, "kirsch_vertex_shader"

    const-string v1, "alpha_meansmooth_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v9, [Ljava/lang/String;

    .line 21
    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    const-string/jumbo v4, "texelWidth"

    aput-object v4, v3, v6

    const-string/jumbo v4, "texelHeight"

    aput-object v4, v3, v7

    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v8

    .line 19
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mAlphaMeanShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 23
    const-string/jumbo v0, "vertex_shader"

    .line 24
    const-string/jumbo v1, "skin_overlay_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    .line 25
    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v6

    const-string/jumbo v4, "uTextureLayer"

    aput-object v4, v3, v7

    const-string/jumbo v4, "uTextureWeight"

    aput-object v4, v3, v8

    .line 23
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mOverlayShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 26
    const-string/jumbo v0, "vertex_shader"

    .line 27
    const-string/jumbo v1, "skin_detect_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    .line 28
    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v6

    .line 26
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 30
    const-string/jumbo v0, "smooth_blur_horizontal_vertex_shader"

    .line 31
    const-string/jumbo v1, "smooth_blur_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v9, [Ljava/lang/String;

    .line 32
    const-string v4, "inputImageTexture"

    aput-object v4, v3, v5

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v6

    const-string/jumbo v4, "texelWidthOffset"

    aput-object v4, v3, v7

    .line 33
    const-string/jumbo v4, "texelHeightOffset"

    aput-object v4, v3, v8

    .line 29
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothBlurHorizontalShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 35
    const-string/jumbo v0, "smooth_blur_vertical_vertex_shader"

    .line 36
    const-string/jumbo v1, "smooth_blur_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v9, [Ljava/lang/String;

    .line 37
    const-string v4, "inputImageTexture"

    aput-object v4, v3, v5

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v6

    const-string/jumbo v4, "texelWidthOffset"

    aput-object v4, v3, v7

    .line 38
    const-string/jumbo v4, "texelHeightOffset"

    aput-object v4, v3, v8

    .line 34
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothBlurVerticalShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 40
    const-string/jumbo v0, "vertex_shader"

    const-string/jumbo v1, "smooth_extract_selection_fragment_shader"

    .line 41
    const-string v2, "aPosition"

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v5

    const-string/jumbo v4, "uTextureBlur"

    aput-object v4, v3, v6

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v7

    .line 39
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothExtractionShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 43
    const-string/jumbo v0, "vertex_shader"

    const-string/jumbo v1, "smooth_template_fragment_shader"

    .line 44
    const-string v2, "aPosition"

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v6

    const-string/jumbo v4, "uTextureCurve"

    aput-object v4, v3, v7

    .line 42
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothTemplateShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 45
    const-string/jumbo v0, "vertex_shader"

    .line 46
    const-string/jumbo v1, "smooth_apply_fragment_shader"

    const-string v2, "aPosition"

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "uMVPMatrix"

    aput-object v4, v3, v5

    .line 47
    const-string/jumbo v4, "uTexture"

    aput-object v4, v3, v6

    const-string/jumbo v4, "uTextureTemplate"

    aput-object v4, v3, v7

    const-string/jumbo v4, "uTextureCurve"

    aput-object v4, v3, v8

    .line 45
    invoke-static {p1, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mSmoothApplyShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 49
    const-string v0, "curves/skin_smooth.dat"

    .line 48
    invoke-static {p1, v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadCurveTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mTextureSmoothCurveHandle:I

    .line 51
    const-string v0, "curves/highlight.dat"

    .line 50
    invoke-static {p1, v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadCurveTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mTextureHighlightCurveHandle:I

    .line 52
    return-void
.end method

.method public glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/livefilter/LiveOp;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 58
    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 59
    iget v1, p2, Landroid/graphics/Point;->y:I

    .line 58
    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferA:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 60
    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 61
    iget v1, p2, Landroid/graphics/Point;->y:I

    .line 60
    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferB:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 62
    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 63
    iget v1, p2, Landroid/graphics/Point;->y:I

    .line 62
    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/BufferHelper;->glGenerateFrameBuffer(II)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveSkinDetect;->mFrameBufferC:Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .line 64
    return-void
.end method
