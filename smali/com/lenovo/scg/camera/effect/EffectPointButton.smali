.class public Lcom/lenovo/scg/camera/effect/EffectPointButton;
.super Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
.source "EffectPointButton.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDuration:I

.field private mFourthPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

.field private mHorAnimMove:F

.field private mHorTopPointLeftMargin:F

.field private mHorTopPointTopMargin:F

.field private mHorizonalLeftPointLeftMargin:F

.field private mHorizonalLeftPointTopMargin:F

.field private mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

.field private mParent:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

.field private mPointRadius:F

.field private mPointSplitMoveX:F

.field private mPointSplitMoveY:F

.field private mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

.field private mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

.field private mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

.field private mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

.field private mSedToFirstDisy:F

.field private mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

.field private mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

.field private mSplitDuration:I

.field private mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

.field private mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

.field private mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

.field private mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

.field private mThirdToFirstDisy:F

.field private mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mVertAnimMove:F

.field private mVertTopPointLeftMargin:F

.field private mVertTopPointTopMargin:F

.field private mVerticalLeftPointLeftMargin:F

.field private mVerticalLeftPointTopMargin:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "EffectPointButton"

    sput-object v0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/GLView;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/lenovo/scg/gallery3d/ui/GLView;
    .param p3, "orientation"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;-><init>(Landroid/content/Context;)V

    .line 76
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    .line 78
    const/16 v0, 0x46

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitDuration:I

    .line 87
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 88
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 89
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 91
    check-cast p2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .end local p2    # "parent":Lcom/lenovo/scg/gallery3d/ui/GLView;
    iput-object p2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mParent:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .line 92
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->initValues()V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->initPointView(I)V

    .line 94
    return-void
.end method

.method private getDimensOfResource(I)F
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private startHideAnimation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 195
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 197
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 202
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    goto :goto_0
.end method

.method private startMergePointsAnimation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 294
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveY:F

    neg-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->start()V

    .line 297
    return-void
.end method

.method private startSedHideAnimation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 208
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 210
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 214
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    goto :goto_0
.end method

.method private startSedMergePointsAnimation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveX:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 301
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveX:F

    neg-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->start()V

    .line 304
    return-void
.end method

.method private startSedShowAnimation(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 267
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    iget v4, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 269
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    iget v4, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 273
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    goto :goto_0
.end method

.method private startSedSplitPointsAnimation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveX:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 240
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveX:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->start()V

    .line 243
    return-void
.end method

.method private startShowAnimation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 255
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 257
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    .line 264
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 261
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    goto :goto_0
.end method

.method private startSplitPointsAnimation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 233
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveY:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->start()V

    .line 236
    return-void
.end method

.method private startThirdHideAnimation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 220
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 222
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 226
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    goto :goto_0
.end method

.method private startThirdMergePointsAnimation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveX:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 309
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveX:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->start()V

    .line 312
    return-void
.end method

.method private startThirdShowAnimation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 279
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 281
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    neg-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 285
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    neg-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    goto :goto_0
.end method

.method private startThirdSplitPointsAnimation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveX:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 247
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveX:F

    neg-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->start()V

    .line 250
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->destoryEffect()V

    .line 550
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->destoryEffect()V

    .line 555
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->destoryEffect()V

    .line 560
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 563
    :cond_2
    return-void
.end method

.method public initPointView(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const v5, 0x7f02011c

    const v4, 0x7f02011b

    const v1, 0x7f02011a

    .line 123
    rem-int/lit16 v0, p1, 0xb4

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 145
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0
.end method

.method public initValues()V
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f0902f4

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertAnimMove:F

    .line 98
    const v0, 0x7f0902f5

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorAnimMove:F

    .line 99
    const v0, 0x7f0902f6

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    .line 100
    const v0, 0x7f0902f9

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    .line 101
    const v0, 0x7f0902fa

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    .line 102
    const v0, 0x7f0902f7

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveX:F

    .line 103
    const v0, 0x7f0902f8

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointSplitMoveY:F

    .line 108
    const v0, 0x7f090304

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointLeftMargin:F

    .line 109
    const v0, 0x7f090305

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointTopMargin:F

    .line 111
    const v0, 0x7f090306

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointLeftMargin:F

    .line 112
    const v0, 0x7f090307

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointTopMargin:F

    .line 114
    const v0, 0x7f090308

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorizonalLeftPointLeftMargin:F

    .line 115
    const v0, 0x7f090309

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorizonalLeftPointTopMargin:F

    .line 117
    const v0, 0x7f09030b

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVerticalLeftPointLeftMargin:F

    .line 118
    const v0, 0x7f09030a

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVerticalLeftPointTopMargin:F

    .line 119
    return-void
.end method

.method public layoutForPointView(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/high16 v3, 0x41500000    # 13.0f

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mParent:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getIsEnableSel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    rem-int/lit16 v0, p1, 0xb4

    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "sss init buttons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 179
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVertTopPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 164
    :cond_1
    rem-int/lit16 v0, p1, 0xb4

    if-eqz v0, :cond_2

    .line 165
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "sss init buttons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorizonalLeftPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorizonalLeftPointTopMargin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorizonalLeftPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorizonalLeftPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorizonalLeftPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHorizonalLeftPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVerticalLeftPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedToFirstDisy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVerticalLeftPointTopMargin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVerticalLeftPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVerticalLeftPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVerticalLeftPointLeftMargin:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdToFirstDisy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mVerticalLeftPointTopMargin:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mPointRadius:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v6, 0x0

    .line 318
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->update()V

    .line 319
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 320
    .local v0, "animTime":J
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 322
    :cond_2
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start hide Animation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start hide Animation  111"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 326
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->calculate(J)Z

    .line 327
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 328
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 329
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 331
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 332
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start hide Animation  222"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 334
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->calculate(J)Z

    .line 335
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 336
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 337
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 340
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 341
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start hide Animation  333"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 343
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->calculate(J)Z

    .line 344
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 345
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 346
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 545
    :cond_5
    :goto_0
    return-void

    .line 350
    :cond_6
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_b

    .line 352
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-nez v3, :cond_8

    .line 353
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    .line 354
    .local v2, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start splitAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startSplitPointsAnimation(I)V

    .line 356
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startSedSplitPointsAnimation(I)V

    .line 357
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startThirdSplitPointsAnimation(I)V

    .line 359
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do splitAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do splitAnimation 000 mTopView centerX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "centerY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getCenterY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v2    # "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    :cond_8
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 364
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 365
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 367
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 368
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do splitAnimation  111"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 370
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->calculate(J)Z

    .line 371
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 372
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 373
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 376
    :cond_9
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 377
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do splitAnimation  222"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 379
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->calculate(J)Z

    .line 380
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 381
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 382
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 384
    :cond_a
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 385
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do splitAnimation  333"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 387
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->calculate(J)Z

    .line 388
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 389
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 390
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 393
    :cond_b
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 395
    :cond_e
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 396
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do splitAnimation  111"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 398
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->calculate(J)Z

    .line 399
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 400
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 401
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 404
    :cond_f
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 405
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do splitAnimation  222"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 407
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->calculate(J)Z

    .line 408
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 409
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 410
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 412
    :cond_10
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 413
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do splitAnimation  333"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 415
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->calculate(J)Z

    .line 416
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 417
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 418
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 420
    :cond_11
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 422
    :cond_14
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do mergeAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 424
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do mergeAnimation  111"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 426
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->calculate(J)Z

    .line 427
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 428
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 429
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 432
    :cond_15
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 433
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do mergeAnimation  222"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 435
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->calculate(J)Z

    .line 436
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 437
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 438
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 441
    :cond_16
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 442
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do mergeAnimation  333"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 444
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 445
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->calculate(J)Z

    .line 446
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 447
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 448
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 450
    :cond_17
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 453
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-nez v3, :cond_19

    .line 454
    :cond_18
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start startShowAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    .line 456
    .restart local v2    # "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startShowAnimation(I)V

    .line 457
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startSedShowAnimation(I)V

    .line 458
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startThirdShowAnimation(I)V

    .line 459
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mParent:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->startEffectShowAnimation()V

    .line 462
    .end local v2    # "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    :cond_19
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    .line 463
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    .line 464
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    .line 466
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 467
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do showAnimation  111"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 469
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->calculate(J)Z

    .line 470
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 471
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 472
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 475
    :cond_1a
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 476
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do showAnimation  222"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 478
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->calculate(J)Z

    .line 479
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 480
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 481
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 484
    :cond_1b
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 485
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do showAnimation  333"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 487
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->calculate(J)Z

    .line 488
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 489
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 490
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 493
    :cond_1c
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1d
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1e
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 495
    :cond_1f
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 496
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do showAnimation  111"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 498
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->calculate(J)Z

    .line 499
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 500
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 501
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 504
    :cond_20
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 505
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do showAnimation  222"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 507
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->calculate(J)Z

    .line 508
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 509
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 510
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 513
    :cond_21
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 514
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string v4, "do showAnimation  333"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 516
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->calculate(J)Z

    .line 517
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 518
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 519
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 522
    :cond_22
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "no Animation "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSplitAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    .line 524
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    .line 525
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdSplitAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    .line 527
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 528
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 529
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 531
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mMergeAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    .line 532
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    .line 533
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdMergeAnim:Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;

    .line 535
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 536
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 537
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdShowAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 539
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 540
    sget-object v3, Lcom/lenovo/scg/camera/effect/EffectPointButton;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "topView centerx ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "centerY ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mTopPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getCenterY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mSedPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 542
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectPointButton;->mThirdPointView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    goto/16 :goto_0
.end method

.method public startHidePointsAnim(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startHideAnimation(I)V

    .line 183
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startSedHideAnimation(I)V

    .line 184
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startThirdHideAnimation(I)V

    .line 185
    return-void
.end method

.method public startMergePointsAnim(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startMergePointsAnimation(I)V

    .line 189
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startSedMergePointsAnimation(I)V

    .line 190
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startThirdMergePointsAnimation(I)V

    .line 191
    return-void
.end method
