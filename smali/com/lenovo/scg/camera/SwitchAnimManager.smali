.class public Lcom/lenovo/scg/camera/SwitchAnimManager;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# static fields
.field private static final ANIMATION_DURATION:F = 400.0f

.field private static final ANIMATION_FADE_IN_DURATION:F = 200.0f

.field private static final ANIMATION_FADE_OUT_DURATION:F = 200.0f

.field public static final INITIAL_DARKEN_ALPHA:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "SwitchAnimManager"

.field private static final ZOOM_DELTA_PREVIEW:F = 0.2f

.field private static final ZOOM_DELTA_REVIEW:F = 0.5f


# instance fields
.field private mAnimFadeOutStartTime:J

.field private mAnimStartTime:J

.field private mPreviewFrameLayoutWidth:I

.field private mReviewDrawingHeight:I

.field private mReviewDrawingWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public drawAnimation(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIIILcom/lenovo/scg/camera/CameraScreenNail;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)Z
    .locals 26
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preview"    # Lcom/lenovo/scg/camera/CameraScreenNail;
    .param p7, "review"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .prologue
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v24, v2, v6

    .line 92
    .local v24, "timeDiff":J
    move-wide/from16 v0, v24

    long-to-float v2, v0

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 133
    :goto_0
    return v2

    .line 93
    :cond_0
    move-wide/from16 v0, v24

    long-to-float v2, v0

    const/high16 v3, 0x43c80000    # 400.0f

    div-float v15, v2, v3

    .line 96
    .local v15, "fraction":F
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float v13, v2, v3

    .line 97
    .local v13, "centerX":F
    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float v14, v2, v3

    .line 98
    .local v14, "centerY":F
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v15

    mul-float/2addr v3, v6

    sub-float v16, v2, v3

    .line 99
    .local v16, "previewAnimScale":F
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float v18, v2, v16

    .line 100
    .local v18, "previewWidth":F
    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v17, v2, v16

    .line 101
    .local v17, "previewHeight":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v18, v2

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 102
    .local v4, "previewX":I
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v17, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 105
    .local v5, "previewY":I
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v15

    add-float v19, v2, v3

    .line 113
    .local v19, "reviewAnimScale":F
    const/high16 v22, 0x3f800000    # 1.0f

    .line 114
    .local v22, "scaleRatio":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz v2, :cond_1

    .line 115
    move/from16 v0, p4

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    int-to-float v3, v3

    div-float v22, v2, v3

    .line 119
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v19

    mul-float v21, v2, v22

    .line 120
    .local v21, "reviewWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v19

    mul-float v20, v2, v22

    .line 121
    .local v20, "reviewHeight":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v21, v2

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 122
    .local v8, "reviewX":I
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v20, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 125
    .local v9, "reviewY":I
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->getAlpha()F

    move-result v12

    .line 126
    .local v12, "alpha":F
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 127
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/scg/camera/CameraScreenNail;->directDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 130
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v15

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 131
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v6, p7

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 132
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 133
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 117
    .end local v8    # "reviewX":I
    .end local v9    # "reviewY":I
    .end local v12    # "alpha":F
    .end local v20    # "reviewHeight":F
    .end local v21    # "reviewWidth":F
    :cond_1
    const-string v2, "SwitchAnimManager"

    const-string v3, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public drawDarkPreview(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIIILcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)Z
    .locals 13
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "review"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .prologue
    .line 180
    int-to-float v1, p2

    move/from16 v0, p4

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float v8, v1, v2

    .line 181
    .local v8, "centerX":F
    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float v9, v1, v2

    .line 182
    .local v9, "centerY":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 183
    .local v12, "scaleRatio":F
    iget v1, p0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz v1, :cond_0

    .line 184
    move/from16 v0, p4

    int-to-float v1, v0

    iget v2, p0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 188
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v1, v1

    mul-float v11, v1, v12

    .line 189
    .local v11, "reviewWidth":F
    iget v1, p0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v1, v1

    mul-float v10, v1, v12

    .line 190
    .local v10, "reviewHeight":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 191
    .local v3, "reviewX":I
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 194
    .local v4, "reviewY":I
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->getAlpha()F

    move-result v7

    .line 195
    .local v7, "alpha":F
    const v1, 0x3f4ccccd    # 0.8f

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 196
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 197
    invoke-interface {p1, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 198
    const/4 v1, 0x1

    return v1

    .line 186
    .end local v3    # "reviewX":I
    .end local v4    # "reviewY":I
    .end local v7    # "alpha":F
    .end local v10    # "reviewHeight":F
    .end local v11    # "reviewWidth":F
    :cond_0
    const-string v1, "SwitchAnimManager"

    const-string v2, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public drawFadeInAnimation(Lcom/lenovo/scg/camera/CameraScreenNail;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)Z
    .locals 10
    .param p1, "preview"    # Lcom/lenovo/scg/camera/CameraScreenNail;
    .param p2, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 144
    .local v2, "bRet":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v4, v6, v8

    .line 145
    .local v4, "timeDiff":J
    long-to-float v3, v4

    const/high16 v6, 0x43c80000    # 400.0f

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/CameraScreenNail;->getAlpha()F

    move-result v1

    .line 148
    .local v1, "alphaOld":F
    long-to-float v3, v4

    const/high16 v6, 0x43480000    # 200.0f

    div-float v0, v3, v6

    .line 149
    .local v0, "alpha":F
    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v0

    invoke-interface {p2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 150
    invoke-virtual/range {p1 .. p6}, Lcom/lenovo/scg/camera/CameraScreenNail;->directDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 151
    invoke-interface {p2, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 152
    const/4 v2, 0x1

    .line 154
    .end local v0    # "alpha":F
    .end local v1    # "alphaOld":F
    :cond_0
    return v2
.end method

.method public drawFadeOutAnimation(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIIILcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z
    .locals 12
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 164
    const/4 v8, 0x0

    .line 165
    .local v8, "bRet":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mAnimFadeOutStartTime:J

    sub-long v10, v0, v2

    .line 166
    .local v10, "timeDiff":J
    long-to-float v0, v10

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 168
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->getAlpha()F

    move-result v7

    .line 169
    .local v7, "alphaOld":F
    const/high16 v0, 0x3f800000    # 1.0f

    long-to-float v1, v10

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    .line 170
    .local v6, "alpha":F
    invoke-interface {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    move-object v0, p1

    move-object/from16 v1, p6

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 171
    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 172
    invoke-interface {p1, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 173
    const/4 v8, 0x1

    .line 175
    .end local v6    # "alpha":F
    .end local v7    # "alphaOld":F
    :cond_0
    return v8
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    .line 75
    return-void
.end method

.method public setReviewDrawingSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    .line 67
    iput p2, p0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    .line 68
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 80
    return-void
.end method

.method public startAnimationFadeOut()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/SwitchAnimManager;->mAnimFadeOutStartTime:J

    .line 85
    return-void
.end method
