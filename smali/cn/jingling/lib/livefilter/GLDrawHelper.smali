.class public Lcn/jingling/lib/livefilter/GLDrawHelper;
.super Ljava/lang/Object;
.source "GLDrawHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public glDrawPreview([FLcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;IIIILcn/jingling/lib/livefilter/ViewportRect;)V
    .locals 6
    .param p1, "matrix"    # [F
    .param p2, "shader"    # Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .param p3, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p4, "textureHandle"    # I
    .param p5, "vboHandler"    # I
    .param p6, "mPreviewImageWidth"    # I
    .param p7, "mPreviewImageHeight"    # I
    .param p8, "mViewportRect"    # Lcn/jingling/lib/livefilter/ViewportRect;

    .prologue
    const/4 v3, 0x0

    .line 28
    iget v0, p2, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 29
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 30
    const v1, 0x8d40

    if-nez p3, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 32
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 34
    if-nez p3, :cond_1

    .line 35
    iget v0, p8, Lcn/jingling/lib/livefilter/ViewportRect;->x:I

    iget v1, p8, Lcn/jingling/lib/livefilter/ViewportRect;->y:I

    iget v2, p8, Lcn/jingling/lib/livefilter/ViewportRect;->width:I

    iget v4, p8, Lcn/jingling/lib/livefilter/ViewportRect;->height:I

    invoke-static {v0, v1, v2, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 40
    :goto_1
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 41
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 42
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 43
    const v0, 0x8d65

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 44
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 45
    iget-object v0, p2, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 47
    const v0, 0x8892

    invoke-static {v0, p5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 48
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 49
    iget v0, p2, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 50
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    .line 49
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 52
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 53
    iget v0, p2, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 54
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 55
    iget-object v0, p2, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 57
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 58
    return-void

    .line 31
    :cond_0
    iget v0, p3, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v3, v3, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_1
.end method

.method public glInitTextures([I)V
    .locals 5
    .param p1, "textureHandle"    # [I

    .prologue
    const v4, 0x812f

    const/16 v3, 0x2601

    const/4 v2, 0x0

    const v1, 0x8d65

    .line 167
    const/4 v0, 0x1

    invoke-static {v0, p1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 169
    aget v0, p1, v2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 171
    const/16 v0, 0x2802

    .line 170
    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 172
    const/16 v0, 0x2803

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 175
    const/16 v0, 0x2801

    .line 174
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 177
    const/16 v0, 0x2800

    .line 176
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 178
    return-void
.end method

.method public initModelViewMatrix([FIZ)V
    .locals 17
    .param p1, "modelViewMatrix"    # [F
    .param p2, "direction"    # I
    .param p3, "flip"    # Z

    .prologue
    .line 122
    const/4 v11, 0x0

    .line 123
    .local v11, "eyeX":F
    const/4 v12, 0x0

    .line 124
    .local v12, "eyeY":F
    const/high16 v4, -0x40800000    # -1.0f

    .line 125
    .local v4, "eyeZ":F
    if-eqz p3, :cond_0

    .line 126
    const/high16 v4, 0x3f800000    # 1.0f

    .line 131
    :goto_0
    const/4 v13, 0x0

    .line 132
    .local v13, "lookX":F
    const/4 v14, 0x0

    .line 133
    .local v14, "lookY":F
    const/4 v15, 0x0

    .line 135
    .local v15, "lookZ":F
    const/high16 v8, -0x40800000    # -1.0f

    .line 136
    .local v8, "upX":F
    const/4 v9, 0x0

    .line 137
    .local v9, "upY":F
    const/16 v16, 0x0

    .line 139
    .local v16, "upZ":F
    packed-switch p2, :pswitch_data_0

    .line 158
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 159
    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    .line 158
    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 160
    return-void

    .line 128
    .end local v8    # "upX":F
    .end local v9    # "upY":F
    .end local v13    # "lookX":F
    .end local v14    # "lookY":F
    .end local v15    # "lookZ":F
    .end local v16    # "upZ":F
    :cond_0
    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_0

    .line 141
    .restart local v8    # "upX":F
    .restart local v9    # "upY":F
    .restart local v13    # "lookX":F
    .restart local v14    # "lookY":F
    .restart local v15    # "lookZ":F
    .restart local v16    # "upZ":F
    :pswitch_0
    const/high16 v8, -0x40800000    # -1.0f

    .line 142
    const/4 v9, 0x0

    .line 143
    goto :goto_1

    .line 145
    :pswitch_1
    const/4 v8, 0x0

    .line 146
    const/high16 v9, 0x3f800000    # 1.0f

    .line 147
    goto :goto_1

    .line 149
    :pswitch_2
    const/high16 v8, 0x3f800000    # 1.0f

    .line 150
    const/4 v9, 0x0

    .line 151
    goto :goto_1

    .line 153
    :pswitch_3
    const/4 v8, 0x0

    .line 154
    const/high16 v9, -0x40800000    # -1.0f

    goto :goto_1

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public initProjectionMatrix([FIZIIII)V
    .locals 21
    .param p1, "projectionMatrix"    # [F
    .param p2, "direction"    # I
    .param p3, "flip"    # Z
    .param p4, "textureWidth"    # I
    .param p5, "textureHeight"    # I
    .param p6, "viewWidth"    # I
    .param p7, "viewHeight"    # I

    .prologue
    .line 74
    const v19, 0x3ba3d70a    # 0.005f

    .line 75
    .local v19, "offset":F
    move/from16 v20, v19

    .line 76
    .local v20, "xr":F
    move/from16 v3, v19

    .line 78
    .local v3, "yr":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v10, v1, v19

    .line 79
    .local v10, "wr":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, v19

    .line 81
    .local v4, "hr":F
    packed-switch p2, :pswitch_data_0

    .line 112
    .end local v10    # "wr":F
    :goto_0
    return-void

    .line 83
    .restart local v10    # "wr":F
    :pswitch_0
    if-eqz p3, :cond_0

    .line 84
    const/4 v2, 0x0

    neg-float v5, v10

    move/from16 v0, v20

    neg-float v6, v0

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 86
    :cond_0
    const/4 v6, 0x0

    neg-float v7, v4

    neg-float v8, v3

    neg-float v9, v10

    move/from16 v0, v20

    neg-float v10, v0

    const/high16 v11, -0x3ee00000    # -10.0f

    const/high16 v12, 0x41a00000    # 20.0f

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 90
    :pswitch_1
    if-eqz p3, :cond_1

    .line 91
    const/4 v2, 0x0

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    move/from16 v5, v20

    move v6, v10

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 93
    :cond_1
    const/4 v6, 0x0

    neg-float v7, v4

    neg-float v8, v3

    const/high16 v11, -0x3ee00000    # -10.0f

    const/high16 v12, 0x41a00000    # 20.0f

    move-object/from16 v5, p1

    move/from16 v9, v20

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 97
    :pswitch_2
    if-eqz p3, :cond_2

    .line 98
    const/4 v6, 0x0

    neg-float v7, v4

    neg-float v8, v3

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v5, p1

    move/from16 v9, v20

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 100
    :cond_2
    const/4 v2, 0x0

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    move/from16 v5, v20

    move v6, v10

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 104
    :pswitch_3
    if-eqz p3, :cond_3

    .line 105
    const/4 v12, 0x0

    neg-float v13, v4

    neg-float v14, v3

    neg-float v15, v10

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v16, v0

    const/high16 v17, -0x3ee00000    # -10.0f

    const/high16 v18, 0x41a00000    # 20.0f

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v18}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 107
    :cond_3
    const/4 v2, 0x0

    neg-float v5, v10

    move/from16 v0, v20

    neg-float v6, v0

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
