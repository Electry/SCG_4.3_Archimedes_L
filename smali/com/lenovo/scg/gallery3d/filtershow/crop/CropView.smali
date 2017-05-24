.class public Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;
.super Landroid/view/View;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "CropView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCropIndicator:Landroid/graphics/drawable/Drawable;

.field private mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

.field private mDashOffLength:F

.field private mDashOnLength:F

.field private mDirty:Z

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMatrixInverse:Landroid/graphics/Matrix;

.field private mDoSpot:Z

.field private mImageBounds:Landroid/graphics/RectF;

.field private final mIndicatorSizeHeight:I

.field private final mIndicatorSizeWidth:I

.field private mMargin:I

.field private mMinSideSize:I

.field private mMovingBlock:Z

.field private mOverlayShadowColor:I

.field private mOverlayWPShadowColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevX:F

.field private mPrevY:F

.field private mRotation:I

.field private mScreenBounds:Landroid/graphics/RectF;

.field private mScreenCropBounds:Landroid/graphics/RectF;

.field private mScreenImageBounds:Landroid/graphics/RectF;

.field private mShadow:Landroid/graphics/drawable/NinePatchDrawable;

.field private mShadowBounds:Landroid/graphics/Rect;

.field private mShadowMargin:I

.field private mSpotX:F

.field private mSpotY:F

.field private mState:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

.field private mTouchTolerance:I

.field private mWPMarkerColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 44
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 46
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    .line 48
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPaint:Landroid/graphics/Paint;

    .line 58
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    .line 68
    iput v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mRotation:I

    .line 70
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mMovingBlock:Z

    .line 72
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 74
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 76
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDirty:Z

    .line 78
    iput v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPrevX:F

    .line 80
    iput v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPrevY:F

    .line 82
    iput v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mSpotX:F

    .line 84
    iput v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mSpotY:F

    .line 86
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDoSpot:Z

    .line 88
    const/16 v1, 0xf

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadowMargin:I

    .line 90
    const/16 v1, 0x20

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mMargin:I

    .line 92
    const/high16 v1, -0x31000000

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mOverlayShadowColor:I

    .line 94
    const/high16 v1, 0x5f000000

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mOverlayWPShadowColor:I

    .line 96
    const v1, 0x7fffffff

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mWPMarkerColor:I

    .line 98
    const/16 v1, 0x5a

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mMinSideSize:I

    .line 100
    const/16 v1, 0x28

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mTouchTolerance:I

    .line 102
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDashOnLength:F

    .line 104
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDashOffLength:F

    .line 110
    sget-object v1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;->NONE:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mState:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    .local v0, "rsc":Landroid/content/res/Resources;
    const v1, 0x7f020631

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    .line 118
    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropIndicator:Landroid/graphics/drawable/Drawable;

    .line 120
    const v1, 0x7f09053b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mIndicatorSizeWidth:I

    .line 121
    const v1, 0x7f09053c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mIndicatorSizeHeight:I

    .line 123
    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadowMargin:I

    .line 124
    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mMargin:I

    .line 125
    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mMinSideSize:I

    .line 126
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mTouchTolerance:I

    .line 127
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mOverlayShadowColor:I

    .line 128
    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mOverlayWPShadowColor:I

    .line 129
    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mWPMarkerColor:I

    .line 130
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDashOnLength:F

    .line 131
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDashOffLength:F

    .line 132
    return-void
.end method

.method private bitCycleLeft(III)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "times"    # I
    .param p3, "d"    # I

    .prologue
    .line 278
    const/4 v5, 0x1

    shl-int/2addr v5, p3

    add-int/lit8 v2, v5, -0x1

    .line 279
    .local v2, "mask":I
    and-int v3, p1, v2

    .line 280
    .local v3, "mout":I
    rem-int/2addr p2, p3

    .line 281
    sub-int v5, p3, p2

    shr-int v0, v3, v5

    .line 282
    .local v0, "hi":I
    shl-int v5, v3, p2

    and-int v1, v5, v2

    .line 283
    .local v1, "low":I
    xor-int/lit8 v5, v2, -0x1

    and-int v4, p1, v5

    .line 284
    .local v4, "ret":I
    or-int/2addr v4, v1

    .line 285
    or-int/2addr v4, v0

    .line 286
    return v4
.end method

.method private clearDisplay()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 217
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 218
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->invalidate()V

    .line 219
    return-void
.end method

.method private decode(IF)I
    .locals 3
    .param p1, "movingEdges"    # I
    .param p2, "rotation"    # F

    .prologue
    const/4 v2, 0x4

    .line 293
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->constrainedRotation(F)I

    move-result v0

    .line 294
    .local v0, "rot":I
    sparse-switch v0, :sswitch_data_0

    .line 302
    .end local p1    # "movingEdges":I
    :goto_0
    return p1

    .line 296
    .restart local p1    # "movingEdges":I
    :sswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 298
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 300
    :sswitch_2
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 294
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    const-string v0, "CropView"

    const-string v1, "crop reset called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;->NONE:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mState:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    .line 210
    iput v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mRotation:I

    .line 211
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mMovingBlock:Z

    .line 212
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->clearDisplay()V

    .line 213
    return-void
.end method


# virtual methods
.method public applyAspect(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 247
    cmpg-float v1, p1, v2

    if-lez v1, :cond_0

    cmpg-float v1, p2, v2

    if-gtz v1, :cond_1

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad arguments to applyAspect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mRotation:I

    if-gez v1, :cond_4

    iget v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mRotation:I

    neg-int v1, v1

    :goto_0
    rem-int/lit16 v1, v1, 0xb4

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2

    .line 252
    move v0, p1

    .line 253
    .local v0, "tmp":F
    move p1, p2

    .line 254
    move p2, v0

    .line 256
    .end local v0    # "tmp":F
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->setInnerAspectRatio(FF)Z

    move-result v1

    if-nez v1, :cond_3

    .line 257
    const-string v1, "CropView"

    const-string v2, "failed to set aspect ratio"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->invalidate()V

    .line 260
    return-void

    .line 251
    :cond_4
    iget v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mRotation:I

    goto :goto_0
.end method

.method public applyFreeAspect()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->unsetAspectRatio()V

    .line 227
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->invalidate()V

    .line 228
    return-void
.end method

.method public applyOriginalAspect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 231
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 232
    .local v1, "outer":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 233
    .local v2, "w":F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 234
    .local v0, "h":F
    cmpl-float v3, v2, v4

    if-lez v3, :cond_0

    cmpl-float v3, v0, v4

    if-lez v3, :cond_0

    .line 235
    invoke-virtual {p0, v2, v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->applyAspect(FF)V

    .line 236
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v3, v1, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string v3, "CropView"

    const-string v4, "failed to set aspect ratio original"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public applySquareAspect()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 243
    invoke-virtual {p0, v0, v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->applyAspect(FF)V

    .line 244
    return-void
.end method

.method protected configChanged()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDirty:Z

    .line 223
    return-void
.end method

.method public getCrop()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 4
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "newCropBounds"    # Landroid/graphics/RectF;
    .param p3, "newPhotoBounds"    # Landroid/graphics/RectF;
    .param p4, "rotation"    # I

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    .line 136
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    if-eqz v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 138
    .local v1, "crop":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 139
    .local v0, "containing":Landroid/graphics/RectF;
    if-ne v1, p2, :cond_0

    if-ne v0, p3, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mRotation:I

    if-eq v2, p4, :cond_1

    .line 140
    :cond_0
    iput p4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mRotation:I

    .line 141
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v2, p2, p3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 142
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->clearDisplay()V

    .line 149
    .end local v0    # "containing":Landroid/graphics/RectF;
    .end local v1    # "crop":Landroid/graphics/RectF;
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iput p4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mRotation:I

    .line 146
    new-instance v2, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    const/4 v3, 0x0

    invoke-direct {v2, p3, p2, v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    .line 147
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->clearDisplay()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDirty:Z

    if-eqz v0, :cond_2

    .line 312
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDirty:Z

    .line 313
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->clearDisplay()V

    .line 316
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 317
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mMargin:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 322
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    if-nez v0, :cond_3

    .line 323
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->reset()V

    .line 324
    new-instance v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v8}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    if-nez v0, :cond_7

    .line 329
    :cond_4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 331
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mRotation:I

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->setImageToScreenMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 332
    const-string v0, "CropView"

    const-string v1, "failed to get screen matrix"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 336
    :cond_5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 339
    const-string v0, "CropView"

    const-string v1, "could not invert display matrix"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    goto/16 :goto_0

    .line 344
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mMinSideSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->setMinInnerSideSize(F)V

    .line 345
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mTouchTolerance:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->setTouchTolerance(F)V

    .line 348
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadowMargin:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    float-to-int v13, v0

    .line 353
    .local v13, "margin":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v13

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v13

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v13

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v13

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 355
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 356
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    .end local v13    # "margin":I
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->getInnerBounds(Landroid/graphics/RectF;)V

    .line 364
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 368
    .local v5, "p":Landroid/graphics/Paint;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mOverlayShadowColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    invoke-static {p1, v5, v0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 373
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawCropRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 374
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDoSpot:Z

    if-nez v0, :cond_9

    .line 375
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 388
    :goto_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropIndicator:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mIndicatorSizeWidth:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mIndicatorSizeHeight:I

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->isFixedAspect()Z

    move-result v11

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->getSelectState()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mRotation:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->decode(IF)I

    move-result v12

    move-object v6, p1

    invoke-static/range {v6 .. v12}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IILandroid/graphics/RectF;ZI)V

    goto/16 :goto_0

    .line 377
    :cond_9
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 378
    .local v4, "wpPaint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mWPMarkerColor:I

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 380
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 381
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDashOnLength:F

    aput v2, v1, v8

    const/4 v2, 0x1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDashOnLength:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDashOffLength:F

    add-float/2addr v3, v6

    aput v3, v1, v2

    invoke-direct {v0, v1, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 382
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mOverlayWPShadowColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mSpotX:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mSpotY:F

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawWallpaperSelectionFrame(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 162
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 163
    .local v4, "y":F
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    if-nez v5, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v8

    .line 166
    :cond_1
    const/4 v5, 0x2

    new-array v2, v5, [F

    aput v3, v2, v7

    aput v4, v2, v8

    .line 167
    .local v2, "touchPoint":[F
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 168
    aget v3, v2, v7

    .line 169
    aget v4, v2, v8

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 202
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->invalidate()V

    goto :goto_0

    .line 172
    :pswitch_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mState:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    sget-object v6, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;->NONE:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    if-ne v5, v6, :cond_2

    .line 173
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v5, v3, v4}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->selectEdge(FF)Z

    move-result v5

    if-nez v5, :cond_3

    .line 174
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->selectEdge(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mMovingBlock:Z

    .line 176
    :cond_3
    iput v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPrevX:F

    .line 177
    iput v4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPrevY:F

    .line 178
    sget-object v5, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;->MOVE:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mState:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    goto :goto_1

    .line 182
    :pswitch_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mState:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    sget-object v6, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;->MOVE:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    if-ne v5, v6, :cond_2

    .line 183
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->selectEdge(I)Z

    .line 184
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mMovingBlock:Z

    .line 185
    iput v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPrevX:F

    .line 186
    iput v4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPrevY:F

    .line 187
    sget-object v5, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;->NONE:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mState:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    goto :goto_1

    .line 191
    :pswitch_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mState:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    sget-object v6, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;->MOVE:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView$Mode;

    if-ne v5, v6, :cond_2

    .line 192
    iget v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPrevX:F

    sub-float v0, v3, v5

    .line 193
    .local v0, "dx":F
    iget v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPrevY:F

    sub-float v1, v4, v5

    .line 194
    .local v1, "dy":F
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v5, v0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropObject;->moveCurrentSelection(FF)Z

    .line 195
    iput v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPrevX:F

    .line 196
    iput v4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mPrevY:F

    goto :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setWallpaperSpotlight(FF)V
    .locals 2
    .param p1, "spotlightX"    # F
    .param p2, "spotlightY"    # F

    .prologue
    const/4 v1, 0x0

    .line 263
    iput p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mSpotX:F

    .line 264
    iput p2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mSpotY:F

    .line 265
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mSpotX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mSpotY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDoSpot:Z

    .line 268
    :cond_0
    return-void
.end method

.method public unsetWallpaperSpotlight()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->mDoSpot:Z

    .line 272
    return-void
.end method
