.class public Lcom/lenovo/scg/camera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# static fields
.field private static final ANIM_BOTH:I = 0x0

.field private static final ANIM_FLASH:I = 0x1

.field private static final ANIM_HOLD2:I = 0x3

.field private static final ANIM_SLIDE:I = 0x2

.field private static final ANIM_SLIDE2:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CAM_Capture"

.field private static final TIME_FLASH:I = 0xc8

.field private static final TIME_HOLD:I = 0x190

.field private static final TIME_HOLD2:I = 0xce4

.field private static final TIME_SLIDE:I = 0x320

.field private static final TIME_SLIDE2:I = 0x1004


# instance fields
.field private volatile mAnimOrientation:I

.field private mAnimStartTime:J

.field private mAnimType:I

.field private mBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mHoldH:I

.field private mHoldW:I

.field private mHoldX:I

.field private mHoldY:I

.field private mMarginRight:I

.field private mMarginTop:I

.field private mOffset:I

.field private mResources:Landroid/content/res/Resources;

.field private mShadowSize:I

.field private mSize:I

.field private final mSlideInterpolator:Landroid/view/animation/Interpolator;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    .line 106
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f020407

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mResources:Landroid/content/res/Resources;

    .line 108
    return-void
.end method

.method public static getAnimationDuration()I
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x1004

    return v0
.end method

.method private static interpolate(FFF)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "end"    # F
    .param p2, "fraction"    # F

    .prologue
    .line 246
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private setAnimationGeometry(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mMarginRight:I

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mMarginTop:I

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mSize:I

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mShadowSize:I

    .line 139
    iget v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mMarginRight:I

    iget v1, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mOffset:I

    .line 141
    iput p3, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawWidth:I

    .line 142
    iput p4, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawHeight:I

    .line 143
    int-to-float v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mX:F

    .line 144
    int-to-float v0, p2

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mY:F

    .line 145
    iget v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mSize:I

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldW:I

    .line 146
    iget v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mSize:I

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldH:I

    .line 147
    iget v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 149
    :sswitch_0
    add-int v0, p1, p3

    iget v1, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mMarginRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldX:I

    .line 150
    iget v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mMarginTop:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldY:I

    goto :goto_0

    .line 153
    :sswitch_1
    iget v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mMarginTop:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldX:I

    .line 154
    iget v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mMarginRight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldY:I

    goto :goto_0

    .line 157
    :sswitch_2
    iget v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mMarginRight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldX:I

    .line 158
    add-int v0, p2, p4

    iget v1, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mMarginTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldY:I

    goto :goto_0

    .line 161
    :sswitch_3
    add-int v0, p1, p3

    iget v1, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mMarginTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldX:I

    .line 162
    add-int v0, p2, p4

    iget v1, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mMarginRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldY:I

    goto :goto_0

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public animateFlash()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimType:I

    .line 124
    return-void
.end method

.method public animateFlashAndSlide()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimType:I

    .line 128
    return-void
.end method

.method public animateSlide()V
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimType:I

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimStartTime:J

    goto :goto_0
.end method

.method public drawAnimation(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/camera/CameraScreenNail;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;IIII)Z
    .locals 28
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "preview"    # Lcom/lenovo/scg/camera/CameraScreenNail;
    .param p3, "review"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    .param p4, "lx"    # I
    .param p5, "ly"    # I
    .param p6, "lw"    # I
    .param p7, "lh"    # I

    .prologue
    .line 169
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/camera/CaptureAnimManager;->setAnimationGeometry(IIII)V

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v24, v6, v8

    .line 172
    .local v24, "timeDiff":J
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const-wide/16 v6, 0xe74

    cmp-long v6, v24, v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    .line 242
    :goto_0
    return v6

    .line 173
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimType:I

    if-nez v6, :cond_1

    const-wide/16 v6, 0x1004

    cmp-long v6, v24, v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    .line 176
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimType:I

    move/from16 v18, v0

    .line 177
    .local v18, "animStep":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 178
    const-wide/16 v6, 0x190

    add-long v24, v24, v6

    .line 180
    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimType:I

    if-nez v6, :cond_4

    .line 181
    :cond_3
    const-wide/16 v6, 0x190

    cmp-long v6, v24, v6

    if-gez v6, :cond_6

    .line 182
    const/16 v18, 0x1

    .line 196
    :cond_4
    :goto_1
    const/4 v6, 0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_9

    .line 197
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mX:F

    float-to-int v8, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mY:F

    float-to-int v9, v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 198
    const-wide/16 v6, 0xc8

    cmp-long v6, v24, v6

    if-gez v6, :cond_5

    .line 199
    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3e99999a    # 0.3f

    move-wide/from16 v0, v24

    long-to-float v8, v0

    mul-float/2addr v7, v8

    const/high16 v8, 0x43480000    # 200.0f

    div-float/2addr v7, v8

    sub-float v20, v6, v7

    .line 200
    .local v20, "f":F
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v6, v6, v20

    float-to-int v6, v6

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    .line 201
    .local v11, "color":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v9, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v10, v6

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 242
    .end local v11    # "color":I
    .end local v20    # "f":F
    :cond_5
    :goto_2
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 183
    :cond_6
    const-wide/16 v6, 0x320

    cmp-long v6, v24, v6

    if-gez v6, :cond_7

    .line 184
    const/16 v18, 0x2

    .line 185
    const-wide/16 v6, 0x190

    sub-long v24, v24, v6

    goto :goto_1

    .line 186
    :cond_7
    const-wide/16 v6, 0xce4

    cmp-long v6, v24, v6

    if-gez v6, :cond_8

    .line 187
    const/16 v18, 0x3

    .line 188
    const-wide/16 v6, 0x320

    sub-long v24, v24, v6

    goto :goto_1

    .line 191
    :cond_8
    const/16 v18, 0x4

    .line 192
    const-wide/16 v6, 0xce4

    sub-long v24, v24, v6

    goto :goto_1

    .line 203
    :cond_9
    const/4 v6, 0x2

    move/from16 v0, v18

    if-ne v0, v6, :cond_a

    .line 204
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    move-wide/from16 v0, v24

    long-to-float v7, v0

    const/high16 v8, 0x43c80000    # 400.0f

    div-float/2addr v7, v8

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v21

    .line 205
    .local v21, "fraction":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mX:F

    move/from16 v26, v0

    .line 206
    .local v26, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mY:F

    move/from16 v27, v0

    .line 207
    .local v27, "y":F
    const/16 v23, 0x0

    .line 208
    .local v23, "w":F
    const/16 v22, 0x0

    .line 209
    .local v22, "h":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldX:I

    int-to-float v7, v7

    move/from16 v0, v21

    invoke-static {v6, v7, v0}, Lcom/lenovo/scg/camera/CaptureAnimManager;->interpolate(FFF)F

    move-result v26

    .line 210
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldY:I

    int-to-float v7, v7

    move/from16 v0, v21

    invoke-static {v6, v7, v0}, Lcom/lenovo/scg/camera/CaptureAnimManager;->interpolate(FFF)F

    move-result v27

    .line 211
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldW:I

    int-to-float v7, v7

    move/from16 v0, v21

    invoke-static {v6, v7, v0}, Lcom/lenovo/scg/camera/CaptureAnimManager;->interpolate(FFF)F

    move-result v23

    .line 212
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldH:I

    int-to-float v7, v7

    move/from16 v0, v21

    invoke-static {v6, v7, v0}, Lcom/lenovo/scg/camera/CaptureAnimManager;->interpolate(FFF)F

    move-result v22

    .line 213
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mX:F

    float-to-int v14, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mY:F

    float-to-int v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawHeight:I

    move/from16 v17, v0

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v17}, Lcom/lenovo/scg/camera/CameraScreenNail;->directDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 214
    move/from16 v0, v26

    float-to-int v14, v0

    move/from16 v0, v27

    float-to-int v15, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v12, p3

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v17}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto/16 :goto_2

    .line 215
    .end local v21    # "fraction":F
    .end local v22    # "h":F
    .end local v23    # "w":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_a
    const/4 v6, 0x3

    move/from16 v0, v18

    if-ne v0, v6, :cond_b

    .line 216
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mX:F

    float-to-int v14, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mY:F

    float-to-int v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawHeight:I

    move/from16 v17, v0

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v17}, Lcom/lenovo/scg/camera/CameraScreenNail;->directDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 217
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldW:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldH:I

    move/from16 v17, v0

    move-object/from16 v12, p3

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v17}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mShadowSize:I

    sub-int v14, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldY:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mShadowSize:I

    sub-int v15, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldW:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mShadowSize:I

    mul-int/lit8 v7, v7, 0x2

    add-int v16, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldH:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mShadowSize:I

    mul-int/lit8 v7, v7, 0x2

    add-int v17, v6, v7

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v17}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto/16 :goto_2

    .line 219
    :cond_b
    const/4 v6, 0x4

    move/from16 v0, v18

    if-ne v0, v6, :cond_5

    .line 220
    move-wide/from16 v0, v24

    long-to-float v6, v0

    const/high16 v7, 0x44480000    # 800.0f

    div-float v21, v6, v7

    .line 221
    .restart local v21    # "fraction":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldX:I

    int-to-float v0, v6

    move/from16 v26, v0

    .line 222
    .restart local v26    # "x":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldY:I

    int-to-float v0, v6

    move/from16 v27, v0

    .line 223
    .restart local v27    # "y":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mOffset:I

    int-to-float v6, v6

    mul-float v19, v6, v21

    .line 224
    .local v19, "d":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v6, :sswitch_data_0

    .line 238
    :goto_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mX:F

    float-to-int v14, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mY:F

    float-to-int v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mDrawHeight:I

    move/from16 v17, v0

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v17}, Lcom/lenovo/scg/camera/CameraScreenNail;->directDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    move/from16 v0, v26

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mShadowSize:I

    sub-int v14, v6, v7

    move/from16 v0, v27

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mShadowSize:I

    sub-int v15, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldW:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mShadowSize:I

    mul-int/lit8 v7, v7, 0x2

    add-int v16, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldH:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mShadowSize:I

    mul-int/lit8 v7, v7, 0x2

    add-int v17, v6, v7

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v17}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 240
    move/from16 v0, v26

    float-to-int v14, v0

    move/from16 v0, v27

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldW:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldH:I

    move/from16 v17, v0

    move-object/from16 v12, p3

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v17}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto/16 :goto_2

    .line 226
    :sswitch_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldX:I

    int-to-float v6, v6

    add-float v26, v6, v19

    .line 227
    goto :goto_3

    .line 229
    :sswitch_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldX:I

    int-to-float v6, v6

    sub-float v26, v6, v19

    .line 230
    goto :goto_3

    .line 232
    :sswitch_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldY:I

    int-to-float v6, v6

    sub-float v27, v6, v19

    .line 233
    goto/16 :goto_3

    .line 235
    :sswitch_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mHoldY:I

    int-to-float v6, v6

    add-float v27, v6, v19

    goto/16 :goto_3

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "displayRotation"    # I

    .prologue
    .line 111
    rsub-int v0, p1, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimOrientation:I

    .line 112
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/CaptureAnimManager;->mAnimStartTime:J

    .line 132
    return-void
.end method
