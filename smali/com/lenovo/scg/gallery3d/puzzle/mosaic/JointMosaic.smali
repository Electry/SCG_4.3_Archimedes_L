.class public Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;
.super Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
.source "JointMosaic.java"


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

.field private mBackgroundRes:I

.field private mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCtx:Landroid/content/Context;

.field private mFrameBackGrouds:[Landroid/widget/ImageView;

.field private mFrameThumbnail1:Landroid/widget/ImageView;

.field private mFrameThumbnail2:Landroid/widget/ImageView;

.field private mFrameThumbnail3:Landroid/widget/ImageView;

.field private mFrameThumbnail4:Landroid/widget/ImageView;

.field private mFrameThumbnail5:Landroid/widget/ImageView;

.field private mImageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mJoinAreaLayout:Landroid/widget/LinearLayout;

.field private mJointMosaicLayout:Landroid/widget/ScrollView;

.field private mResult:Landroid/graphics/Bitmap;

.field private mRootLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "selectImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    const/16 v9, 0x9

    .line 66
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v6, 0x5

    new-array v6, v6, [Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    .line 61
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mCtx:Landroid/content/Context;

    .line 68
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mCtx:Landroid/content/Context;

    check-cast v6, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mActivity:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .line 70
    sget-object v6, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v7, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    sget-object v6, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v7, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    .line 136
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 74
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 75
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mCtx:Landroid/content/Context;

    check-cast v6, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 76
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    const/high16 v7, 0x40a00000    # 5.0f

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 77
    .local v1, "desWidth":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 78
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->readFileToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 79
    .local v0, "bitmapBytes":[B
    const/16 v6, 0x1f4

    const/16 v7, 0x2bc

    invoke-static {v0, v6, v7}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->compressBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 80
    .local v5, "tempbtmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-eqz v6, :cond_1

    if-nez v5, :cond_2

    .line 82
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mActivity:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDegreesRotated()I

    move-result v4

    .line 86
    .local v4, "mOrientation":I
    invoke-static {v5, v4}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 87
    if-nez v5, :cond_3

    .line 89
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mActivity:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 92
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static {v5, v1, v7}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 94
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    .end local v0    # "bitmapBytes":[B
    .end local v4    # "mOrientation":I
    .end local v5    # "tempbtmp":Landroid/graphics/Bitmap;
    :cond_5
    sget-object v6, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v7, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private drawBackground(I)V
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v10, 0x0

    const/16 v7, 0xdac

    .line 365
    const/4 v5, 0x0

    .line 366
    .local v5, "espcial":Z
    const/4 v3, 0x0

    .line 367
    .local v3, "corner":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 368
    .local v2, "content":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 369
    .local v4, "edge":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v9, 0x7f100809

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 370
    .local v6, "puzzlelayout":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 390
    :goto_0
    :pswitch_0
    if-eqz v5, :cond_4

    .line 391
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    if-le v9, v7, :cond_3

    :goto_1
    invoke-static {v3, v4, v10, v8, v7}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->generatorBitmap2(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 393
    .local v0, "background":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 394
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 402
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 404
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 405
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 407
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 408
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    :cond_2
    return-void

    .line 374
    .end local v0    # "background":Landroid/graphics/Bitmap;
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :pswitch_1
    const/4 v5, 0x1

    .line 375
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020842

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 376
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020843

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 377
    goto :goto_0

    .line 379
    :pswitch_2
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020844

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 380
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020845

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 381
    goto :goto_0

    .line 383
    :pswitch_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020846

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 384
    goto/16 :goto_0

    .line 386
    :pswitch_4
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020847

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 387
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020848

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    .line 391
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    goto/16 :goto_1

    .line 396
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    if-le v9, v7, :cond_5

    :goto_3
    invoke-static {v10, v4, v2, v8, v7}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->generatorBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 398
    .restart local v0    # "background":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 399
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 396
    .end local v0    # "background":Landroid/graphics/Bitmap;
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_3

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private modifyPuzzle()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mPuzzleModifyListener:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mPuzzleModifyListener:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;->onModify(Z)V

    .line 355
    :cond_0
    return-void
.end method

.method private showFrameThumbnailBackground(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    return-void
.end method


# virtual methods
.method public addOrDelete()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public getFrameOrBackgroundRes()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->getJointMosaicFrameRes()I

    move-result v0

    return v0
.end method

.method public getFrameOrBackgroundResIndex()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->getJointMosaicFrameIndex()I

    move-result v0

    return v0
.end method

.method public initMosaic(Landroid/widget/RelativeLayout;)V
    .locals 10
    .param p1, "rootlayout"    # Landroid/widget/RelativeLayout;

    .prologue
    const v5, 0x7f1007ea

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->getFrameOrBackgroundRes()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBackgroundRes:I

    .line 141
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 142
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 143
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007e6

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    .local v0, "backgroundTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0784

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007e9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007e8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007d6

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007f5

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f100808

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJointMosaicLayout:Landroid/widget/ScrollView;

    .line 152
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJointMosaicLayout:Landroid/widget/ScrollView;

    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 153
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJointMosaicLayout:Landroid/widget/ScrollView;

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 154
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f100809

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    .line 155
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->getFrameOrBackgroundRes()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 156
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f10080a

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f10080b

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f10080c

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f10080d

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f10080e

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f10080f

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f100810

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f100811

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f100812

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007f7

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail1:Landroid/widget/ImageView;

    .line 173
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail1:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007f9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail2:Landroid/widget/ImageView;

    .line 175
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail2:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007fb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail3:Landroid/widget/ImageView;

    .line 177
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail3:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007fd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail4:Landroid/widget/ImageView;

    .line 179
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail4:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007ff

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail5:Landroid/widget/ImageView;

    .line 181
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail5:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail1:Landroid/widget/ImageView;

    const v4, 0x7f02085a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail2:Landroid/widget/ImageView;

    const v4, 0x7f02085b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail3:Landroid/widget/ImageView;

    const v4, 0x7f02085c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail4:Landroid/widget/ImageView;

    const v4, 0x7f02085d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameThumbnail5:Landroid/widget/ImageView;

    const v4, 0x7f02085e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f1007f6

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v7

    .line 188
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f1007f8

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v8

    .line 189
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f1007fa

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 190
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f1007fc

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 191
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f1007fe

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v9

    .line 192
    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->showFrameThumbnailBackground(I)V

    .line 193
    return-void
.end method

.method public obtainMosaicedPhoto()Landroid/graphics/Bitmap;
    .locals 22

    .prologue
    .line 299
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v8, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v6, 0x0

    .line 301
    .local v6, "background":Landroid/graphics/Bitmap;
    const v18, 0x106000b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBackgroundRes:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    check-cast v18, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 306
    :cond_0
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 307
    .local v10, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mActivity:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 308
    iget v12, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 309
    .local v12, "height":I
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    .line 310
    .local v17, "width":I
    const/4 v4, 0x0

    .line 311
    .local v4, "allHeight":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_1

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    add-int v4, v4, v18

    .line 311
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 314
    :cond_1
    mul-int v18, v12, v17

    div-int v5, v18, v4

    .line 315
    .local v5, "allWidth":I
    const/4 v15, 0x0

    .line 316
    .local v15, "newAllHeight":I
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_2

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    add-int/lit8 v19, v5, -0x14

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 318
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    add-int/lit8 v18, v18, 0xa

    add-int v15, v15, v18

    .line 316
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 321
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    add-int/lit8 v15, v15, 0xa

    .line 322
    const/16 v16, 0x0

    .line 323
    .local v16, "tempBackground":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    .line 324
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5, v15}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 329
    :cond_3
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v5, v15, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mResult:Landroid/graphics/Bitmap;

    .line 330
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mResult:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 331
    .local v9, "canvas":Landroid/graphics/Canvas;
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 332
    if-eqz v16, :cond_4

    .line 333
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 335
    :cond_4
    const/16 v11, 0xa

    .line 336
    .local v11, "drawHeight":I
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_5

    .line 337
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    const/high16 v19, 0x41200000    # 10.0f

    int-to-float v0, v11

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 338
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    add-int/lit8 v18, v18, 0xa

    add-int v11, v11, v18

    .line 336
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 340
    :cond_5
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_6

    .line 341
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 343
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 344
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_7

    .line 345
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 348
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mResult:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    return-object v18
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    :pswitch_0
    return-void

    .line 211
    :pswitch_1
    const v0, 0x106000b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->setFrameOrBackgroundRes(I)V

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->showFrameThumbnailBackground(I)V

    goto :goto_0

    .line 215
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->drawBackground(I)V

    .line 216
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->showFrameThumbnailBackground(I)V

    goto :goto_0

    .line 219
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->drawBackground(I)V

    .line 220
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->showFrameThumbnailBackground(I)V

    goto :goto_0

    .line 223
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->drawBackground(I)V

    .line 224
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->showFrameThumbnailBackground(I)V

    goto :goto_0

    .line 227
    :pswitch_5
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->drawBackground(I)V

    .line 228
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->showFrameThumbnailBackground(I)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x7f1007f7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public releaseMoasicResource()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mResult:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mResult:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mResult:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 242
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 249
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 250
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBitmaps:Ljava/util/ArrayList;

    .line 251
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 253
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mImageViews:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public savePhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public selectFrame()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 271
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBackgroundRes:I

    .line 272
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->modifyPuzzle()V

    .line 273
    return-void
.end method

.method public setFrameOrBackgroundRes(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mJoinAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 264
    iput p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mBackgroundRes:I

    .line 265
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->modifyPuzzle()V

    .line 266
    return-void
.end method

.method public setFrameOrBackgroundResIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->setJointMosaicFrameIndex(I)V

    .line 285
    return-void
.end method

.method public setTileBackground(Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V
    .locals 1
    .param p1, "bd"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 277
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 279
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 280
    return-void
.end method
