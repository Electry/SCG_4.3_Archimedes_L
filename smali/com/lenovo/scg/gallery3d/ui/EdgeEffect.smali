.class public Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field private static final MAX_GLOW_HEIGHT:F = 4.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x7

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final MIN_WIDTH:I

.field private mDuration:F

.field private final mEdge:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->MIN_WIDTH:I

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    .line 174
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    const v1, 0x7f020788

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdge:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    .line 175
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    const v1, 0x7f020789

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlow:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mMinWidth:I

    .line 178
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 179
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a0000    # 1000.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 383
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    .line 384
    .local v4, "time":J
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mStartTime:J

    sub-long v6, v4, v6

    long-to-float v3, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mDuration:F

    div-float/2addr v3, v6

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 386
    .local v2, "t":F
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 388
    .local v1, "interp":F
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    .line 389
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    .line 390
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    .line 391
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    .line 393
    const v3, 0x3f7fbe77    # 0.999f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    .line 394
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 396
    :pswitch_0
    iput v11, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    .line 397
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 398
    iput v10, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mDuration:F

    .line 400
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 401
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 402
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 403
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 406
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 407
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 408
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 409
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 412
    :pswitch_1
    const/4 v3, 0x4

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    .line 413
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 414
    iput v10, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mDuration:F

    .line 416
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 417
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 418
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 419
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 422
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 423
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 424
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 425
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 430
    :pswitch_2
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v3, v6

    div-float v0, v9, v3

    .line 431
    .local v0, "factor":F
    :goto_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v3, v6

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    .line 432
    iput v11, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    goto :goto_0

    .line 430
    .end local v0    # "factor":F
    :cond_1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    .line 435
    :pswitch_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z
    .locals 12
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->update()V

    .line 347
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdge:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 348
    .local v1, "edgeHeight":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdge:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 349
    .local v3, "edgeWidth":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlow:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 350
    .local v5, "glowHeight":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlow:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 352
    .local v7, "glowWidth":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlow:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->setAlpha(I)V

    .line 354
    int-to-float v8, v5

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v9

    int-to-float v9, v5

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v4, v8

    .line 355
    .local v4, "glowBottom":I
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_0

    .line 357
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x2

    .line 358
    .local v6, "glowLeft":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlow:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mWidth:I

    sub-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v4}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    .line 364
    .end local v6    # "glowLeft":I
    :goto_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlow:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8, p1}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 366
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdge:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->setAlpha(I)V

    .line 368
    int-to-float v8, v1

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 369
    .local v0, "edgeBottom":I
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_1

    .line 371
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 372
    .local v2, "edgeLeft":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdge:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mWidth:I

    sub-int/2addr v10, v2

    invoke-virtual {v8, v2, v9, v10, v0}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    .line 377
    .end local v2    # "edgeLeft":I
    :goto_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdge:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8, p1}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 379
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    return v8

    .line 361
    .end local v0    # "edgeBottom":I
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlow:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v4}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 375
    .restart local v0    # "edgeBottom":I
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdge:Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v0}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 379
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    .line 210
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .param p1, "velocity"    # I

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 304
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    .line 305
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 307
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 308
    const v0, 0x3dcccccd    # 0.1f

    int-to-float v1, p1

    const v2, 0x3cf5c28f    # 0.03f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mDuration:F

    .line 312
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 313
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    .line 316
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 317
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 321
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 323
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 329
    const v0, 0x3ccccccd    # 0.025f

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe00000    # 1.75f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    .line 331
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 332
    return-void
.end method

.method public onPull(F)V
    .locals 11
    .param p1, "deltaDistance"    # F

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x0

    .line 225
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    .line 226
    .local v2, "now":J
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 260
    :goto_0
    return-void

    .line 229
    :cond_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    if-eq v4, v10, :cond_1

    .line 230
    iput v6, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    .line 232
    :cond_1
    iput v10, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    .line 234
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 235
    const/high16 v4, 0x43270000    # 167.0f

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mDuration:F

    .line 237
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mPullDistance:F

    .line 238
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 240
    .local v0, "distance":F
    const v4, 0x3f19999a    # 0.6f

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    .line 241
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    .line 243
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    .line 245
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 246
    .local v1, "glowChange":F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 247
    neg-float v1, v1

    .line 249
    :cond_2
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    .line 250
    iput v7, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    .line 254
    :cond_3
    const/high16 v4, 0x40800000    # 4.0f

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    .line 256
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 257
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 258
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 259
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mPullDistance:F

    .line 271
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mState:I

    .line 276
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 277
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 278
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 279
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 281
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 282
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 283
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 284
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    .line 286
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 287
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mWidth:I

    .line 189
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->mHeight:I

    .line 190
    return-void
.end method
