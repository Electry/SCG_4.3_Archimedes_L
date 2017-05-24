.class public Lcom/lenovo/scg/gallery3d/ui/SlideshowView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;
    }
.end annotation


# static fields
.field private static final MOVE_SPEED:F = 0.2f

.field private static final SCALE_SPEED:F = 0.2f

.field private static final SLIDESHOW_DURATION:I = 0xdac

.field private static final TAG:Ljava/lang/String; = "SlideshowView"

.field private static final TRANSITION_DURATION:I = 0x3e8


# instance fields
.field private mCurrentAnimation:Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

.field private mCurrentRotation:I

.field private mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

.field private mPrevAnimation:Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

.field private mPrevRotation:I

.field private mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

.field private mRandom:Ljava/util/Random;

.field private final mTransitionAnimation:Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 54
    new-instance v0, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;-><init>(FFI)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;

    .line 56
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    .line 121
    return-void
.end method


# virtual methods
.method public next(Landroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->start()V

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

    .line 69
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevRotation:I

    .line 71
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    .line 72
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 73
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/SlideshowView;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;->start()V

    .line 80
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->invalidate()V

    .line 81
    return-void

    .line 76
    :cond_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/SlideshowView;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 86
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 90
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 92
    :cond_1
    return-void
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 10
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 96
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    .line 97
    .local v2, "animTime":J
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;

    invoke-virtual {v5, v2, v3}, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->calculate(J)Z

    move-result v1

    .line 98
    .local v1, "requestRender":Z
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-nez v5, :cond_3

    move v0, v4

    .line 100
    .local v0, "alpha":F
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v5, :cond_0

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_0

    .line 101
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v5, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;->calculate(J)Z

    move-result v5

    or-int/2addr v1, v5

    .line 102
    invoke-interface {p1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 103
    sub-float v5, v4, v0

    invoke-interface {p1, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 104
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 105
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevRotation:I

    int-to-float v5, v5

    invoke-interface {p1, v5, v8, v8, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 106
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 107
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 109
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v5, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;->calculate(J)Z

    move-result v5

    or-int/2addr v1, v5

    .line 111
    invoke-interface {p1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 112
    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 113
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 114
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    int-to-float v5, v5

    invoke-interface {p1, v5, v8, v8, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 115
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, p1, v5, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 116
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 118
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->invalidate()V

    .line 119
    :cond_2
    return-void

    .line 98
    .end local v0    # "alpha":F
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->get()F

    move-result v0

    goto :goto_0
.end method
