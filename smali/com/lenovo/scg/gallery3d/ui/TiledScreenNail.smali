.class public Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;
.super Ljava/lang/Object;
.source "TiledScreenNail.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/ScreenNail;


# static fields
.field private static final ANIMATION_DONE:J = -0x3L

.field private static final ANIMATION_NEEDED:J = -0x2L

.field private static final ANIMATION_NOT_NEEDED:J = -0x1L

.field private static final DURATION:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "TiledScreenNail"

.field private static mDrawPlaceholder:Z

.field private static mPlaceholderColor:I

.field private static sMaxSide:I


# instance fields
.field private mAnimationStartTime:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x280

    sput v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 77
    const v0, -0xddddde

    sput v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->setSize(II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 67
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 68
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    .line 69
    return-void
.end method

.method public static disableDrawPlaceholder()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    .line 158
    return-void
.end method

.method public static enableDrawPlaceholder()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    .line 162
    return-void
.end method

.method private getRatio()F
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 211
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    div-float v0, v1, v2

    .line 212
    .local v0, "r":F
    sub-float v1, v6, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method public static setMaxSide(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 224
    sput p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 225
    return-void
.end method

.method public static setPlaceholderColor(I)V
    .locals 0
    .param p0, "color"    # I

    .prologue
    .line 82
    sput p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    .line 83
    return-void
.end method

.method private setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 86
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 87
    :cond_0
    sget p1, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 88
    sget v1, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 p2, v1, 0x4

    .line 90
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    sget v2, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    int-to-float v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 91
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 92
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 93
    return-void
.end method


# virtual methods
.method public SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V
    .locals 0
    .param p1, "target"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    .prologue
    .line 232
    return-void
.end method

.method public combine(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 4
    .param p1, "other"    # Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .prologue
    const/4 v3, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 121
    .end local p0    # "this":Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;
    :goto_0
    return-object p0

    .line 102
    .restart local p0    # "this":Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;
    :cond_0
    instance-of v1, p1, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    if-nez v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->recycle()V

    move-object p0, p1

    .line 104
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 109
    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    .line 110
    .local v0, "newer":Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;
    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mWidth:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 111
    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mHeight:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 112
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_4

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->recycle()V

    .line 115
    :cond_3
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    .line 117
    iput-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 118
    iput-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    .line 120
    :cond_4
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->recycle()V

    goto :goto_0
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const-wide/16 v4, -0x2

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 168
    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 170
    :cond_1
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    if-eqz v0, :cond_2

    .line 171
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    sget v5, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 185
    :cond_2
    :goto_0
    return-void

    .line 176
    :cond_3
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 177
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 180
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    sget v2, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->getRatio()F

    move-result v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->drawMixed(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IFIIII)V

    goto :goto_0

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "dest"    # Landroid/graphics/RectF;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sget v5, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getFboDrawTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGaussBlurFboTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mHeight:I

    return v0
.end method

.method public getTexture()Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    return-object v0
.end method

.method public getTransformMatrix()[F
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 201
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 207
    :cond_1
    :goto_0
    return v0

    .line 202
    :cond_2
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 203
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 204
    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    goto :goto_0

    :cond_3
    move v0, v1

    .line 207
    goto :goto_0
.end method

.method public isShowingPlaceholder()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->recycle()V

    .line 148
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 152
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 154
    :cond_1
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->setSize(II)V

    goto :goto_0
.end method
