.class public Lcom/lenovo/scg/camera/ui/RotateImageView;
.super Lcom/lenovo/scg/camera/ui/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "RotateImageView"


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mInitOk:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private mUserDefineAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    .line 49
    iput v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 51
    iput v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mStartDegree:I

    .line 54
    iput v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mTargetDegree:I

    .line 57
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mClockwise:Z

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 59
    iput-wide v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 61
    iput-wide v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 65
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mUserDefineAnimation:Z

    .line 67
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mAnimation:Landroid/view/animation/Animation;

    .line 69
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mContext:Landroid/content/Context;

    .line 74
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mInitOk:Z

    .line 86
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 51
    iput v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mStartDegree:I

    .line 54
    iput v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mTargetDegree:I

    .line 57
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mClockwise:Z

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 59
    iput-wide v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 61
    iput-wide v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 65
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mUserDefineAnimation:Z

    .line 67
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mAnimation:Landroid/view/animation/Animation;

    .line 69
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mContext:Landroid/content/Context;

    .line 74
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mInitOk:Z

    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private releaseBitmap()V
    .locals 4

    .prologue
    .line 323
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 332
    :cond_0
    return-void

    .line 324
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 325
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 326
    .local v1, "dr":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v1, :cond_3

    .line 324
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 329
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method private setUserBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 294
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 296
    :cond_0
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->releaseBitmap()V

    .line 299
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 300
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 301
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 302
    const-string v5, "RotateImageView set visibility gone"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 307
    .local v4, "param":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v6

    sub-int v3, v5, v6

    .line 308
    .local v3, "miniThumbWidth":I
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v6

    sub-int v2, v5, v6

    .line 310
    .local v2, "miniThumbHeight":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 311
    .local v0, "bmpOld":Landroid/graphics/Bitmap;
    invoke-static {p1, v3, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 312
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 313
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v1, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 314
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 317
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 318
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public getDegree()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mTargetDegree:I

    return v0
.end method

.method public getDrawablePos(Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "pos"    # Landroid/graphics/Rect;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 191
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 194
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int v8, v10, v11

    .line 195
    .local v8, "w":I
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, v10, v11

    .line 197
    .local v3, "h":I
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v5

    .line 199
    .local v5, "left":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v7

    .line 200
    .local v7, "top":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v6

    .line 201
    .local v6, "right":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v0

    .line 202
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v5

    sub-int v9, v10, v6

    .line 203
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getHeight()I

    move-result v10

    sub-int/2addr v10, v7

    sub-int v4, v10, v0

    .line 204
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v10

    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_3

    if-lt v9, v8, :cond_2

    if-ge v4, v3, :cond_3

    .line 205
    :cond_2
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 206
    iput v6, p1, Landroid/graphics/Rect;->right:I

    .line 207
    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 208
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 210
    :cond_3
    div-int/lit8 v10, v9, 0x2

    div-int/lit8 v11, v8, 0x2

    sub-int/2addr v10, v11

    add-int/2addr v10, v5

    iput v10, p1, Landroid/graphics/Rect;->left:I

    .line 211
    iget v10, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v8

    iput v10, p1, Landroid/graphics/Rect;->right:I

    .line 212
    div-int/lit8 v10, v4, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int/2addr v10, v11

    add-int/2addr v10, v7

    iput v10, p1, Landroid/graphics/Rect;->top:I

    .line 213
    iget v10, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v3

    iput v10, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getThumb()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mInitOk:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 131
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_0

    .line 133
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 134
    .local v5, "bounds":Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v19, v21, v22

    .line 135
    .local v19, "w":I
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v10, v21, v22

    .line 137
    .local v10, "h":I
    if-eqz v19, :cond_0

    if-eqz v10, :cond_0

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 140
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    .line 141
    .local v16, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v22, v0

    cmp-long v21, v16, v22

    if-gez v21, :cond_7

    .line 142
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v22, v0

    sub-long v22, v16, v22

    move-wide/from16 v0, v22

    long-to-int v7, v0

    .line 143
    .local v7, "deltaTime":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mStartDegree:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mClockwise:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .end local v7    # "deltaTime":I
    :goto_1
    mul-int/lit16 v0, v7, 0x10e

    move/from16 v22, v0

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    add-int v6, v21, v22

    .line 144
    .local v6, "degree":I
    if-ltz v6, :cond_6

    rem-int/lit16 v6, v6, 0x168

    .line 145
    :goto_2
    move-object/from16 v0, p0

    iput v6, v0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->invalidate()V

    .line 152
    .end local v6    # "degree":I
    .end local v16    # "time":J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v12

    .line 153
    .local v12, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v18

    .line 154
    .local v18, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v14

    .line 155
    .local v14, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    .line 156
    .local v4, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getWidth()I

    move-result v21

    sub-int v21, v21, v12

    sub-int v20, v21, v14

    .line 157
    .local v20, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getHeight()I

    move-result v21

    sub-int v21, v21, v18

    sub-int v11, v21, v4

    .line 159
    .local v11, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v15

    .line 162
    .local v15, "saveCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v21

    sget-object v22, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    move/from16 v0, v20

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    if-ge v11, v10, :cond_4

    .line 163
    :cond_3
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    int-to-float v0, v11

    move/from16 v22, v0

    int-to-float v0, v10

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 164
    .local v13, "ratio":F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    int-to-float v0, v11

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 166
    .end local v13    # "ratio":F
    :cond_4
    div-int/lit8 v21, v20, 0x2

    add-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-int/lit8 v22, v11, 0x2

    add-int v22, v22, v18

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 169
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    neg-int v0, v10

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 143
    .end local v4    # "bottom":I
    .end local v11    # "height":I
    .end local v12    # "left":I
    .end local v14    # "right":I
    .end local v15    # "saveCount":I
    .end local v18    # "top":I
    .end local v20    # "width":I
    .restart local v7    # "deltaTime":I
    .restart local v16    # "time":J
    :cond_5
    neg-int v7, v7

    goto/16 :goto_1

    .line 144
    .end local v7    # "deltaTime":I
    .restart local v6    # "degree":I
    :cond_6
    rem-int/lit16 v0, v6, 0x168

    move/from16 v21, v0

    move/from16 v0, v21

    add-int/lit16 v6, v0, 0x168

    goto/16 :goto_2

    .line 148
    .end local v6    # "degree":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/ui/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_3

    .line 172
    .end local v16    # "time":J
    .restart local v4    # "bottom":I
    .restart local v11    # "height":I
    .restart local v12    # "left":I
    .restart local v14    # "right":I
    .restart local v15    # "saveCount":I
    .restart local v18    # "top":I
    .restart local v20    # "width":I
    :catch_0
    move-exception v9

    .line 173
    .local v9, "e":Ljava/lang/RuntimeException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "draw bitmap error: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_4
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 231
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mUserDefineAnimation:Z

    if-eqz v4, :cond_0

    .line 232
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setUserBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    :goto_0
    return-void

    .line 238
    :cond_0
    if-nez p1, :cond_1

    .line 239
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->releaseBitmap()V

    .line 243
    iput-object v5, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 244
    iput-object v5, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 245
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 250
    .local v3, "param":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 251
    .local v2, "miniThumbWidth":I
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v5

    sub-int v1, v4, v5

    .line 253
    .local v1, "miniThumbHeight":I
    invoke-static {p1, v2, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 255
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-nez v4, :cond_4

    .line 256
    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 257
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v9

    .line 258
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v9

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_3
    :goto_1
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 261
    :cond_4
    const/4 v0, 0x0

    .line 262
    .local v0, "bmpOld":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    if-eqz v4, :cond_5

    .line 263
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v9

    aput-object v5, v4, v8

    .line 268
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v9

    .line 269
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 270
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 275
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 276
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public setInitStatus(Z)V
    .locals 2
    .param p1, "initOk"    # Z

    .prologue
    const/4 v1, 0x0

    .line 351
    if-nez p1, :cond_0

    .line 352
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mInitOk:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 355
    iget v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mTargetDegree:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 356
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 357
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 359
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mInitOk:Z

    .line 360
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->invalidate()V

    .line 361
    return-void
.end method

.method public setIsUserDefineAnimationFlag(Z)V
    .locals 0
    .param p1, "bFlag"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mUserDefineAnimation:Z

    .line 288
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 96
    iput-boolean p2, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 98
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 99
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 120
    :goto_1
    return-void

    .line 98
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 101
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mTargetDegree:I

    .line 102
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz v1, :cond_5

    .line 103
    iget v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mStartDegree:I

    .line 104
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 106
    iget v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 107
    .local v0, "diff":I
    if-ltz v0, :cond_3

    .line 111
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 113
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mClockwise:Z

    .line 114
    iget-wide v2, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0x10e

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 119
    .end local v0    # "diff":I
    :goto_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->invalidate()V

    goto :goto_1

    .line 107
    .restart local v0    # "diff":I
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 113
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 116
    .end local v0    # "diff":I
    :cond_5
    iget v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mTargetDegree:I

    iput v1, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mCurrentDegree:I

    goto :goto_4
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mUserDefineAnimation:Z

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 340
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/lenovo/scg/camera/ui/TwoStateImageView;->setVisibility(I)V

    .line 346
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ui/TwoStateImageView;->setVisibility(I)V

    goto :goto_0
.end method
