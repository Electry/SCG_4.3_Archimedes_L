.class public Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;
.super Landroid/widget/ImageView;
.source "MatchWidthImageView.java"


# instance fields
.field private deviceWidth:I

.field private dstRect:Landroid/graphics/Rect;

.field private height:I

.field private imageMaxHeight:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDetector:Landroid/view/GestureDetector;

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mNinePatch:Landroid/graphics/NinePatch;

.field private mNinePathBmp:Landroid/graphics/Bitmap;

.field private mNineRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private offsetSize:I

.field private scall:F

.field private srcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->scall:F

    .line 36
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->height:I

    .line 38
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->imageMaxHeight:I

    .line 40
    const/16 v0, 0x78

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->offsetSize:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    .line 35
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->scall:F

    .line 36
    iput v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->height:I

    .line 38
    iput v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->imageMaxHeight:I

    .line 40
    const/16 v3, 0x78

    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->offsetSize:I

    .line 56
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 61
    .local v1, "size":Landroid/graphics/Point;
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 62
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 63
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 64
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    .line 67
    iget v3, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->imageMaxHeight:I

    .line 69
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    .line 70
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->srcRect:Landroid/graphics/Rect;

    .line 72
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mNineRect:Landroid/graphics/Rect;

    .line 74
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020a1c

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mNinePathBmp:Landroid/graphics/Bitmap;

    .line 75
    new-instance v3, Landroid/graphics/NinePatch;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mNinePathBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mNinePathBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mNinePatch:Landroid/graphics/NinePatch;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->scall:F

    .line 36
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->height:I

    .line 38
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->imageMaxHeight:I

    .line 40
    const/16 v0, 0x78

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->offsetSize:I

    .line 81
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mNineRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mNinePatch:Landroid/graphics/NinePatch;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mNineRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 204
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 209
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->srcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MatchWidthImageView onDraw error:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 98
    invoke-super/range {p0 .. p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v13, :cond_0

    .line 190
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->scall:F

    .line 106
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->scall:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->height:I

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->getMinimumHeight()I

    move-result v2

    .line 110
    .local v2, "minHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->srcRect:Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->height:I

    if-gt v13, v2, :cond_3

    .line 114
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setMeasuredDimension(II)V

    .line 116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sub-int v15, v2, v15

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    add-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    add-int v17, v17, v2

    div-int/lit8 v17, v17, 0x2

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->offsetSize:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    if-ge v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->offsetSize:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    if-gt v2, v13, :cond_2

    .line 120
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-double v14, v13

    const-wide v16, 0x3ff4cccccccccccdL    # 1.3

    div-double v14, v14, v16

    double-to-int v4, v14

    .line 121
    .local v4, "scalBmpW":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-double v14, v13

    const-wide v16, 0x3ff4cccccccccccdL    # 1.3

    div-double v14, v14, v16

    double-to-int v3, v14

    .line 122
    .local v3, "scalBmpH":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    sub-int/2addr v14, v4

    div-int/lit8 v14, v14, 0x2

    sub-int v15, v2, v3

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move/from16 v16, v0

    add-int v16, v16, v4

    div-int/lit8 v16, v16, 0x2

    add-int v17, v2, v3

    div-int/lit8 v17, v17, 0x2

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    .end local v3    # "scalBmpH":I
    .end local v4    # "scalBmpW":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mNineRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->offsetSize:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->offsetSize:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->offsetSize:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->offsetSize:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 129
    const v13, 0x7f0209f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 130
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->height:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->imageMaxHeight:I

    if-lt v13, v14, :cond_4

    .line 133
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->imageMaxHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v5, v13, v14

    .line 135
    .local v5, "scallMatchHeight":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v5

    float-to-int v12, v13

    .line 137
    .local v12, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->imageMaxHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setMeasuredDimension(II)V

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    sub-int/2addr v14, v12

    div-int/lit8 v14, v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move/from16 v16, v0

    add-int v16, v16, v12

    div-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->imageMaxHeight:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 141
    const v13, 0x7f0209f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 145
    .end local v5    # "scallMatchHeight":F
    .end local v12    # "width":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->scall:F

    float-to-int v13, v13

    const/4 v14, 0x4

    if-lt v13, v14, :cond_7

    .line 147
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    div-int/lit8 v14, v14, 0x5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v9, v13, v14

    .line 149
    .local v9, "smallScalValue":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v9

    float-to-int v7, v13

    .line 150
    .local v7, "smallHeght":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    div-int/lit8 v6, v13, 0x5

    .line 152
    .local v6, "smalWidth":I
    if-gt v7, v2, :cond_6

    .line 153
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setMeasuredDimension(II)V

    .line 156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    sub-int/2addr v14, v6

    div-int/lit8 v14, v14, 0x2

    sub-int v15, v2, v7

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move/from16 v16, v0

    add-int v16, v16, v6

    div-int/lit8 v16, v16, 0x2

    add-int v17, v2, v7

    div-int/lit8 v17, v17, 0x2

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    sub-int v13, v2, v7

    const/16 v14, 0xf0

    if-gt v13, v14, :cond_5

    .line 161
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v14, v2, -0xf0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v10, v13, v14

    .line 163
    .local v10, "smallScallHeight":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    float-to-int v11, v13

    .line 164
    .local v11, "smallWidth2":I
    add-int/lit16 v8, v2, -0xf0

    .line 166
    .local v8, "smallHeight2":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    sub-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x2

    sub-int v15, v2, v8

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move/from16 v16, v0

    add-int v16, v16, v11

    div-int/lit8 v16, v16, 0x2

    add-int v17, v2, v8

    div-int/lit8 v17, v17, 0x2

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    .end local v8    # "smallHeight2":I
    .end local v10    # "smallScallHeight":F
    .end local v11    # "smallWidth2":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mNineRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int/lit8 v14, v14, -0x78

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    add-int/lit8 v15, v15, -0x78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x78

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    :goto_1
    const v13, 0x7f0209f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 175
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setMeasuredDimension(II)V

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    add-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 184
    .end local v6    # "smalWidth":I
    .end local v7    # "smallHeght":I
    .end local v9    # "smallScalValue":F
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->deviceWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->height:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setMeasuredDimension(II)V

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->dstRect:Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->getWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->height:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->invalidate()V

    .line 93
    return-void
.end method
