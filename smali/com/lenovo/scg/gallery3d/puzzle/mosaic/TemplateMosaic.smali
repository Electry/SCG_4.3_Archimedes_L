.class public Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;
.super Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
.source "TemplateMosaic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic$1;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private mBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

.field private mFrameBackGrouds:[Landroid/widget/ImageView;

.field private mFrameThumbnail1:Landroid/widget/ImageView;

.field private mFrameThumbnail2:Landroid/widget/ImageView;

.field private mFrameThumbnail3:Landroid/widget/ImageView;

.field private mFrameThumbnail4:Landroid/widget/ImageView;

.field private mFrameThumbnail5:Landroid/widget/ImageView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeSurfaceViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftRightBtn:Landroid/widget/ImageView;

.field private mMenuPanel:Landroid/widget/LinearLayout;

.field private mMosaicAreaLayout:Landroid/widget/RelativeLayout;

.field private mPuzzleTitle:Landroid/widget/TextView;

.field private mRoateBtn:Landroid/widget/ImageView;

.field private mRoateLeftBtn:Landroid/widget/ImageView;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

.field private mTemplateBackGrouds:[Landroid/widget/ImageView;

.field private mTemplateLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateMosaicLayout:Landroid/widget/RelativeLayout;

.field private mTemplateMosaicMenu:Landroid/widget/LinearLayout;

.field private mUpDownBtn:Landroid/widget/ImageView;

.field private object:Ljava/lang/Object;

.field private template0:Landroid/widget/ImageView;

.field private template1:Landroid/widget/ImageView;

.field private template2:Landroid/widget/ImageView;

.field private template3:Landroid/widget/ImageView;

.field private template4:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
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
    .local p2, "mSelectImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    const/4 v5, 0x5

    .line 88
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    .line 41
    new-array v4, v5, [Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    .line 81
    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->THREE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .line 83
    new-array v4, v5, [Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateBackGrouds:[Landroid/widget/ImageView;

    .line 85
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->object:Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->ctx:Landroid/content/Context;

    .line 90
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->ctx:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 92
    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v5, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v5, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    .line 121
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->object:Ljava/lang/Object;

    monitor-enter v5

    .line 97
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 98
    .local v3, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->readFileToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 99
    .local v1, "bitmapBytes":[B
    const/16 v4, 0x1f4

    const/16 v6, 0x190

    invoke-static {v1, v4, v6}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->compressBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDegreesRotated()I

    move-result v6

    invoke-static {v4, v6}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 101
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapBytes":[B
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 103
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmapBytes":[B
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 106
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapBytes":[B
    .end local v3    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v5, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private drawBackground(I)V
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v10, 0x0

    const/16 v7, 0xdac

    .line 769
    const/4 v5, 0x0

    .line 770
    .local v5, "espcial":Z
    const/4 v3, 0x0

    .line 771
    .local v3, "corner":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 772
    .local v2, "content":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 773
    .local v4, "edge":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v9, 0x7f100815

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 774
    .local v6, "puzzlelayout":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 794
    :goto_0
    :pswitch_0
    if-eqz v5, :cond_4

    .line 795
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    if-le v9, v7, :cond_3

    :goto_1
    invoke-static {v3, v4, v10, v8, v7}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->generatorBitmap2(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 797
    .local v0, "background":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 798
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 805
    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 806
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 808
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 809
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 811
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 812
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 814
    :cond_2
    return-void

    .line 778
    .end local v0    # "background":Landroid/graphics/Bitmap;
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :pswitch_1
    const/4 v5, 0x1

    .line 779
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020842

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 780
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020843

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 781
    goto :goto_0

    .line 783
    :pswitch_2
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020844

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 784
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020845

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 785
    goto :goto_0

    .line 787
    :pswitch_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020846

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 788
    goto/16 :goto_0

    .line 790
    :pswitch_4
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020847

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 791
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020848

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    .line 795
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    goto/16 :goto_1

    .line 800
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    if-le v9, v7, :cond_5

    :goto_3
    invoke-static {v10, v4, v2, v8, v7}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->generatorBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 802
    .restart local v0    # "background":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 803
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 800
    .end local v0    # "background":Landroid/graphics/Bitmap;
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_3

    .line 774
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initTemplateLayout(I)V
    .locals 9
    .param p1, "size"    # I

    .prologue
    const v8, 0x7f10081a

    const v7, 0x7f100819

    const v6, 0x7f100818

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->getFrameOrBackgroundRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 196
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mPuzzleTitle:Landroid/widget/TextView;

    const-string v2, "1/4"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 421
    :goto_1
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mPuzzleTitle:Landroid/widget/TextView;

    const-string v2, "1/5"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :pswitch_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->TWO:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .line 204
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040136

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040137

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040138

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040139

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 209
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 210
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSurfaceView(Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;)V

    .line 211
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 215
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template0:Landroid/widget/ImageView;

    const v2, 0x7f02089b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template1:Landroid/widget/ImageView;

    const v2, 0x7f02089c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template2:Landroid/widget/ImageView;

    const v2, 0x7f02089d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template3:Landroid/widget/ImageView;

    const v2, 0x7f02089e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 225
    .end local v0    # "i":I
    :pswitch_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->THREE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .line 226
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04013a

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04013b

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04013c

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04013d

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04013e

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 232
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 233
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSurfaceView(Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;)V

    .line 234
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 239
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template0:Landroid/widget/ImageView;

    const v2, 0x7f02089f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template1:Landroid/widget/ImageView;

    const v2, 0x7f0208a0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template2:Landroid/widget/ImageView;

    const v2, 0x7f0208a1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template3:Landroid/widget/ImageView;

    const v2, 0x7f0208a2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    const v2, 0x7f0208a3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 250
    .end local v0    # "i":I
    :pswitch_2
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->FOUR:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .line 251
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04013f

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040140

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040141

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040142

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040143

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 257
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 258
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSurfaceView(Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;)V

    .line 259
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081c

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 264
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 265
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template0:Landroid/widget/ImageView;

    const v2, 0x7f0208a4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template1:Landroid/widget/ImageView;

    const v2, 0x7f0208a5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template2:Landroid/widget/ImageView;

    const v2, 0x7f0208a6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template3:Landroid/widget/ImageView;

    const v2, 0x7f0208a7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    const v2, 0x7f0208a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 276
    .end local v0    # "i":I
    :pswitch_3
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->FIVE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .line 277
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040144

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040145

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040146

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040147

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040148

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 283
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 284
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSurfaceView(Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;)V

    .line 285
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081c

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081d

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 291
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 292
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 295
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template0:Landroid/widget/ImageView;

    const v2, 0x7f0208a9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template1:Landroid/widget/ImageView;

    const v2, 0x7f0208aa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template2:Landroid/widget/ImageView;

    const v2, 0x7f0208ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template3:Landroid/widget/ImageView;

    const v2, 0x7f0208ac

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    const v2, 0x7f0208ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 303
    .end local v0    # "i":I
    :pswitch_4
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->SIX:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .line 304
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040149

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04014a

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04014b

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04014c

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04014d

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 310
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 311
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSurfaceView(Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;)V

    .line 312
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081c

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081d

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081e

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 319
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 320
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 321
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 323
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template0:Landroid/widget/ImageView;

    const v2, 0x7f0208ae

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template1:Landroid/widget/ImageView;

    const v2, 0x7f0208af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template2:Landroid/widget/ImageView;

    const v2, 0x7f0208b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template3:Landroid/widget/ImageView;

    const v2, 0x7f0208b1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    const v2, 0x7f0208b2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 331
    .end local v0    # "i":I
    :pswitch_5
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->SEVEN:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .line 332
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04014e

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04014f

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040150

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040151

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040152

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 338
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 339
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSurfaceView(Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;)V

    .line 340
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081c

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081d

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081e

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081f

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 348
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 349
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 350
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 352
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template0:Landroid/widget/ImageView;

    const v2, 0x7f0208b3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template1:Landroid/widget/ImageView;

    const v2, 0x7f0208b4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template2:Landroid/widget/ImageView;

    const v2, 0x7f0208b5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template3:Landroid/widget/ImageView;

    const v2, 0x7f0208b6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    const v2, 0x7f0208b7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 360
    .end local v0    # "i":I
    :pswitch_6
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->EIGHT:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .line 361
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040153

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040154

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040155

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040156

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040157

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 367
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 368
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSurfaceView(Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;)V

    .line 369
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081c

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081d

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081e

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081f

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f100820

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 378
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 379
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 380
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 382
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template0:Landroid/widget/ImageView;

    const v2, 0x7f0208b8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template1:Landroid/widget/ImageView;

    const v2, 0x7f0208b9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template2:Landroid/widget/ImageView;

    const v2, 0x7f0208ba

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template3:Landroid/widget/ImageView;

    const v2, 0x7f0208bb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    const v2, 0x7f0208bc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 390
    .end local v0    # "i":I
    :pswitch_7
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->NINE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .line 391
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040158

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040159

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04015a

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04015b

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04015c

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 397
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 398
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSurfaceView(Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;)V

    .line 399
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081c

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081d

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081e

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10081f

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f100820

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f100821

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 409
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 410
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 411
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 413
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template0:Landroid/widget/ImageView;

    const v2, 0x7f0208bd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template1:Landroid/widget/ImageView;

    const v2, 0x7f0208be

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template2:Landroid/widget/ImageView;

    const v2, 0x7f0208bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template3:Landroid/widget/ImageView;

    const v2, 0x7f0208c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    const v2, 0x7f0208c1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 201
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private modifyPuzzle()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mPuzzleModifyListener:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mPuzzleModifyListener:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;->onModify(Z)V

    .line 689
    :cond_0
    return-void
.end method

.method private setCurrentSelect(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const v9, 0x7f10081d

    const v8, 0x7f10081c

    const v7, 0x7f10081a

    const v6, 0x7f100819

    const v5, 0x7f100818

    .line 562
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 563
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 564
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 566
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSurfaceView(Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;)V

    .line 567
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 568
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    .line 569
    .local v0, "TemplateView":Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->switchTmplRelease()V

    goto :goto_0

    .line 572
    .end local v0    # "TemplateView":Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 574
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v3, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic$1;->$SwitchMap$com$lenovo$scg$gallery3d$puzzle$mosaic$PhotoMosaic$ImageNum:[I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 676
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mCurrentImageNum:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->TWO:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    if-ne v3, v4, :cond_3

    .line 677
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mPuzzleTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 682
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 683
    return-void

    .line 576
    :pswitch_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 579
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 580
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 581
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 585
    .end local v1    # "i":I
    :pswitch_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 589
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 590
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 591
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 595
    .end local v1    # "i":I
    :pswitch_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 600
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 601
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 602
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 606
    .end local v1    # "i":I
    :pswitch_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 612
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 613
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 614
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 618
    .end local v1    # "i":I
    :pswitch_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f10081e

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 625
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 626
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 627
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 631
    .end local v1    # "i":I
    :pswitch_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f10081e

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f10081f

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 639
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 640
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 641
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 645
    .end local v1    # "i":I
    :pswitch_6
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f10081e

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f10081f

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f100820

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 654
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 655
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 656
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 660
    .end local v1    # "i":I
    :pswitch_7
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f10081e

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f10081f

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f100820

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f100821

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 670
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V

    .line 671
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 672
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmIndex(I)V

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 679
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mPuzzleTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private showFrameThumbnailBackground(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    return-void
.end method

.method private showTemplateThumbnailBackground(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 555
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateBackGrouds:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateBackGrouds:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateBackGrouds:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    return-void
.end method


# virtual methods
.method public getDrawView()Landroid/view/View;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getFrameOrBackgroundRes()I
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->getTempalteMosaicFrameRes()I

    move-result v0

    return v0
.end method

.method public getFrameOrBackgroundResIndex()I
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->getTempalteMosaicFrameIndex()I

    move-result v0

    return v0
.end method

.method public getViewIndex()I
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->getmIndex()I

    move-result v0

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initMosaic(Landroid/widget/RelativeLayout;)V
    .locals 9
    .param p1, "rootlayout"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, "backgroundTextView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0784

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mPuzzleTitle:Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mPuzzleTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100814

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicLayout:Landroid/widget/RelativeLayout;

    .line 136
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100815

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMenuPanel:Landroid/widget/LinearLayout;

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100800

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicMenu:Landroid/widget/LinearLayout;

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f100803

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRoateBtn:Landroid/widget/ImageView;

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f100804

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRoateLeftBtn:Landroid/widget/ImageView;

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f100805

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeftRightBtn:Landroid/widget/ImageView;

    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f100806

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mUpDownBtn:Landroid/widget/ImageView;

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRoateBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRoateLeftBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeftRightBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mUpDownBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template0:Landroid/widget/ImageView;

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template0:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template1:Landroid/widget/ImageView;

    .line 155
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template1:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template2:Landroid/widget/ImageView;

    .line 157
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template2:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template3:Landroid/widget/ImageView;

    .line 159
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template3:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    .line 161
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->template4:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail1:Landroid/widget/ImageView;

    .line 163
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail1:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail2:Landroid/widget/ImageView;

    .line 165
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail2:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail3:Landroid/widget/ImageView;

    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail3:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail4:Landroid/widget/ImageView;

    .line 169
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail4:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f1007ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail5:Landroid/widget/ImageView;

    .line 171
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail5:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail1:Landroid/widget/ImageView;

    const v2, 0x7f02085a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail2:Landroid/widget/ImageView;

    const v2, 0x7f02085b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail3:Landroid/widget/ImageView;

    const v2, 0x7f02085c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail4:Landroid/widget/ImageView;

    const v2, 0x7f02085d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameThumbnail5:Landroid/widget/ImageView;

    const v2, 0x7f02085e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateBackGrouds:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f1007eb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v4

    .line 178
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateBackGrouds:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f1007ed

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v5

    .line 179
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateBackGrouds:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f1007ef

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v6

    .line 180
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateBackGrouds:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f1007f1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v7

    .line 181
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateBackGrouds:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f1007f3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v8

    .line 182
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f1007f6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v4

    .line 183
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f1007f8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v5

    .line 184
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f1007fa

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v6

    .line 185
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f1007fc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v7

    .line 186
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mFrameBackGrouds:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f1007fe

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v8

    .line 187
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showFrameThumbnailBackground(I)V

    .line 188
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showTemplateThumbnailBackground(I)V

    .line 189
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->initTemplateLayout(I)V

    .line 190
    return-void
.end method

.method public obtainMosaicedPhoto()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 747
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 552
    :goto_0
    :pswitch_0
    return-void

    .line 472
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->rotatePhoto()V

    .line 477
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->ctx:Landroid/content/Context;

    const v1, 0x7f0f077a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 480
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->rotatePhotoLeft()V

    .line 485
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->ctx:Landroid/content/Context;

    const v1, 0x7f0f077a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 488
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->turnLR()V

    .line 493
    :goto_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->ctx:Landroid/content/Context;

    const v1, 0x7f0f077a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 496
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    if-eqz v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->turnUD()V

    .line 501
    :goto_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    goto :goto_0

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->ctx:Landroid/content/Context;

    const v1, 0x7f0f077a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 504
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSelect(I)V

    .line 505
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showTemplateThumbnailBackground(I)V

    .line 506
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    goto :goto_0

    .line 509
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSelect(I)V

    .line 510
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showTemplateThumbnailBackground(I)V

    .line 511
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    goto :goto_0

    .line 514
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSelect(I)V

    .line 515
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showTemplateThumbnailBackground(I)V

    .line 516
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    goto/16 :goto_0

    .line 519
    :pswitch_8
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSelect(I)V

    .line 520
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showTemplateThumbnailBackground(I)V

    .line 521
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    goto/16 :goto_0

    .line 524
    :pswitch_9
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSelect(I)V

    .line 525
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showTemplateThumbnailBackground(I)V

    .line 526
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    goto/16 :goto_0

    .line 529
    :pswitch_a
    const v0, 0x106000b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setFrameOrBackgroundRes(I)V

    .line 530
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showFrameThumbnailBackground(I)V

    goto/16 :goto_0

    .line 533
    :pswitch_b
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->drawBackground(I)V

    .line 534
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showFrameThumbnailBackground(I)V

    goto/16 :goto_0

    .line 537
    :pswitch_c
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->drawBackground(I)V

    .line 538
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showFrameThumbnailBackground(I)V

    goto/16 :goto_0

    .line 541
    :pswitch_d
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->drawBackground(I)V

    .line 542
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showFrameThumbnailBackground(I)V

    goto/16 :goto_0

    .line 545
    :pswitch_e
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->drawBackground(I)V

    .line 546
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->showFrameThumbnailBackground(I)V

    goto/16 :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x7f1007ec
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public releaseMoasicResource()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 693
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 694
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 695
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 696
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 698
    const/4 v1, 0x0

    .line 700
    const-string v3, "TemplateView"

    const-string/jumbo v4, "puzzle_template_mosaic release resource   release bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 704
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    .line 706
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 707
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    .line 708
    .local v0, "TemplateView":Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->destoryTemplateView()V

    goto :goto_1

    .line 710
    .end local v0    # "TemplateView":Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 711
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    .line 713
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v3, "TemplateView"

    const-string/jumbo v4, "puzzle_template_mosaic release resource"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void
.end method

.method public replaceImage(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;I)V
    .locals 3
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .param p2, "index"    # I

    .prologue
    .line 751
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 752
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x4

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 753
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 754
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 755
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 756
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 757
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mLeSurfaceViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 758
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    .line 759
    return-void
.end method

.method public resetPosition()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->resetPosition()V

    .line 457
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 726
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    .line 727
    return-void
.end method

.method public setCurrentSurfaceView(Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mSurfaceView:Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;

    .line 450
    return-void
.end method

.method public setFrameOrBackgroundRes(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 720
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->modifyPuzzle()V

    .line 721
    return-void
.end method

.method public setFrameOrBackgroundResIndex(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 731
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->setTemplateMosaicFrameIndex(I)V

    .line 732
    return-void
.end method

.method public setmBitmapList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "mBitmapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mBitmapList:Ljava/util/ArrayList;

    .line 446
    return-void
.end method

.method public switchMemu(Z)Z
    .locals 5
    .param p1, "showTemplateMosaicMenu"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x12c

    .line 424
    if-eqz p1, :cond_1

    .line 425
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 440
    :goto_0
    return v0

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMenuPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMenuPanel:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/puzzle/util/AnimaUtils;->exitAnimation(I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 430
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 431
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicMenu:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/puzzle/util/AnimaUtils;->entryAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMenuPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mMenuPanel:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/puzzle/util/AnimaUtils;->entryAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->mTemplateMosaicMenu:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/puzzle/util/AnimaUtils;->exitAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    move v0, v1

    .line 440
    goto :goto_0
.end method
