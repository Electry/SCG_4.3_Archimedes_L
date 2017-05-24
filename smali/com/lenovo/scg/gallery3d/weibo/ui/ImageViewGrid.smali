.class public Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;
.super Landroid/widget/LinearLayout;
.source "ImageViewGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;
    }
.end annotation


# static fields
.field private static final CACHE_COUNT:I = 0x1

.field public static final IMG_TYPE_GIF:I = 0x1

.field public static final IMG_TYPE_JPGE:I = 0x0

.field public static final PIC_TYPE_LARGE:I = 0x2

.field public static final PIC_TYPE_MIDDLE:I = 0x1

.field public static final PIC_TYPE_SMALL:I = 0x0

.field public static final mPicType:I = 0x1


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

.field private mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

.field private mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;

.field private mParentAdapter:Landroid/widget/BaseAdapter;

.field private mPosLast:I

.field private mllAllImage:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    .line 46
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    .line 47
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 48
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mParentAdapter:Landroid/widget/BaseAdapter;

    .line 49
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;

    .line 50
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mClickListener:Landroid/view/View$OnClickListener;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mPosLast:I

    .line 59
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .line 64
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 799
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

    .line 71
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    .line 46
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    .line 47
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 48
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mParentAdapter:Landroid/widget/BaseAdapter;

    .line 49
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;

    .line 50
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mClickListener:Landroid/view/View$OnClickListener;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mPosLast:I

    .line 59
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .line 64
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 799
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

    .line 76
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/widget/ImageView;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromNet(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mParentAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/widget/ImageView;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V
    .locals 20
    .param p1, "itemCur"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p2, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    if-nez p2, :cond_1

    .line 462
    :cond_0
    return-void

    .line 385
    :cond_1
    const/4 v8, 0x0

    .line 386
    .local v8, "nStart":I
    const/4 v7, 0x0

    .line 387
    .local v7, "nEnd":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mPosLast:I

    move/from16 v16, v0

    move/from16 v0, p3

    move/from16 v1, v16

    if-lt v0, v1, :cond_7

    .line 388
    add-int/lit8 v8, p3, 0x1

    .line 389
    add-int/lit8 v7, v8, 0x1

    .line 394
    :goto_0
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mPosLast:I

    .line 396
    if-gez v8, :cond_2

    const/4 v8, 0x0

    .line 397
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-le v8, v0, :cond_3

    .line 398
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v8, v16, -0x1

    .line 400
    :cond_3
    if-gez v7, :cond_4

    const/4 v7, 0x0

    .line 401
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-le v7, v0, :cond_5

    .line 402
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v7, v16, -0x1

    .line 404
    :cond_5
    const-string v16, "cache,start=%d end=%d"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    .line 406
    .local v3, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    move v4, v8

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_0

    .line 407
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 408
    .local v5, "itemCache":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    move-object/from16 v0, p1

    if-ne v5, v0, :cond_8

    .line 406
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 391
    .end local v3    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v4    # "i":I
    .end local v5    # "itemCache":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_7
    add-int/lit8 v7, p3, -0x1

    .line 392
    add-int/lit8 v8, v7, -0x1

    goto :goto_0

    .line 409
    .restart local v3    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .restart local v4    # "i":I
    .restart local v5    # "itemCache":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_8
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v13

    .line 410
    .local v13, "sName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v9

    .line 411
    .local v9, "picList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_b

    .line 412
    :cond_9
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v14

    .line 413
    .local v14, "sUrl":Ljava/lang/String;
    invoke-virtual {v3, v14, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 414
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 416
    :cond_a
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v13, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 419
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v14    # "sUrl":Ljava/lang/String;
    :cond_b
    const/16 v16, 0x1

    packed-switch v16, :pswitch_data_0

    goto :goto_2

    .line 421
    :pswitch_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    .line 422
    .local v12, "pics":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v6, v12, :cond_6

    .line 423
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;

    .line 424
    .local v10, "picUrl":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;
    iget-object v14, v10, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;->thumbnail_pic:Ljava/lang/String;

    .line 425
    .restart local v14    # "sUrl":Ljava/lang/String;
    invoke-virtual {v3, v14, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 426
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 428
    :cond_c
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v13, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 422
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 433
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "j":I
    .end local v10    # "picUrl":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;
    .end local v12    # "pics":I
    .end local v14    # "sUrl":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v11

    .line 434
    .local v11, "picUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    .line 435
    .local v15, "size":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    if-ge v6, v15, :cond_6

    .line 436
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v14

    .line 437
    .restart local v14    # "sUrl":Ljava/lang/String;
    invoke-virtual {v3, v14, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 438
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 440
    :cond_e
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v13, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 435
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 445
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "j":I
    .end local v11    # "picUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    .end local v14    # "sUrl":Ljava/lang/String;
    .end local v15    # "size":I
    :pswitch_2
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v11

    .line 446
    .restart local v11    # "picUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    .line 447
    .restart local v15    # "size":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    if-ge v6, v15, :cond_6

    .line 448
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v14

    .line 449
    .restart local v14    # "sUrl":Ljava/lang/String;
    invoke-virtual {v3, v14, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 450
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 452
    :cond_10
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v13, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 447
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hideAllChild(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "vGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 636
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 637
    .local v1, "nCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 638
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_0
    return-void
.end method

.method private isBusy()Z
    .locals 6

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "bBusy":Z
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 304
    :goto_0
    return v3

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getScrollState()I

    move-result v2

    .line 287
    .local v2, "nState":I
    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v3, v0

    .line 304
    goto :goto_0

    .line 289
    :pswitch_0
    const/4 v0, 0x0

    .line 290
    goto :goto_1

    .line 292
    :pswitch_1
    const/4 v0, 0x1

    .line 293
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getSpeed()D

    move-result-wide v4

    double-to-int v1, v4

    .line 294
    .local v1, "nSpeed":I
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    .line 295
    const/4 v0, 0x0

    goto :goto_1

    .line 299
    .end local v1    # "nSpeed":I
    :pswitch_2
    const/4 v0, 0x0

    .line 300
    goto :goto_1

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "childname"    # Ljava/lang/String;
    .param p3, "imgView"    # Landroid/widget/ImageView;

    .prologue
    .line 682
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->isFileLoading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    :goto_0
    return-void

    .line 687
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->setFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 708
    .local v0, "readPictureListener":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {v1, p2, p1, v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V

    goto :goto_0
.end method

.method private loadImageFromFileCache(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "childname"    # Ljava/lang/String;
    .param p3, "imgView"    # Landroid/widget/ImageView;

    .prologue
    .line 650
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->isFileLoading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->setFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    .local v0, "readPictureListener":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {v1, p2, p1, v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V

    goto :goto_0
.end method

.method private loadImageFromNet(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "childname"    # Ljava/lang/String;
    .param p3, "imgView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v6, 0x2

    .line 713
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    invoke-virtual {v3, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->isNetLoading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 795
    :goto_0
    return-void

    .line 717
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    invoke-virtual {v3, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->setNetLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v3, "local file is not exist, will load from net name=%s url=%s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v1

    .line 721
    .local v1, "netPool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v2

    .line 722
    .local v2, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->addNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    .line 724
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    invoke-virtual {v2, v3, p1, v6}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 725
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 794
    .local v0, "netListener":Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setDataItemDefault(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V
    .locals 17
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 147
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v7

    .line 148
    .local v7, "nCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_0

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    invoke-virtual {v13, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v6

    .line 153
    .local v6, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 155
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    .line 156
    .local v2, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    const v14, 0x7f1005ae

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 157
    .local v10, "rlOne":Landroid/widget/RelativeLayout;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    const v13, 0x7f1005b0

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 159
    .local v5, "imgData":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    .end local v2    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v4    # "i":I
    .end local v5    # "imgData":Landroid/widget/ImageView;
    .end local v6    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    .end local v7    # "nCnt":I
    .end local v10    # "rlOne":Landroid/widget/RelativeLayout;
    :cond_2
    :goto_1
    return-void

    .line 163
    .restart local v4    # "i":I
    .restart local v6    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    .restart local v7    # "nCnt":I
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 164
    .local v8, "pics":I
    const-string/jumbo v13, "pic count = %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    add-int/lit8 v14, v8, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 166
    .local v12, "v":Landroid/view/View;
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->updateImageGridDefault(Ljava/util/List;Landroid/view/View;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    const v14, 0x7f100613

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 171
    .local v9, "rlCount":Landroid/widget/RelativeLayout;
    if-eqz v9, :cond_2

    .line 172
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    const v13, 0x7f100615

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 174
    .local v11, "tvCnt":Landroid/widget/TextView;
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 178
    .end local v4    # "i":I
    .end local v6    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    .end local v7    # "nCnt":I
    .end local v8    # "pics":I
    .end local v9    # "rlCount":Landroid/widget/RelativeLayout;
    .end local v11    # "tvCnt":Landroid/widget/TextView;
    .end local v12    # "v":Landroid/view/View;
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "ImageViewGrid.setDataItem error: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private startItemAnimation(I)V
    .locals 2
    .param p1, "nPos"    # I

    .prologue
    .line 643
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    .line 644
    .local v0, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getAnimationFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->setAnimationFlag(I)V

    .line 646
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private updateImageGrid(Ljava/util/List;Landroid/view/View;)V
    .locals 19
    .param p2, "viewGrid"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-nez p2, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v10, p2

    .line 588
    check-cast v10, Landroid/widget/RelativeLayout;

    .line 589
    .local v10, "rlLayout":Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v4

    .line 590
    .local v4, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v14

    .line 591
    .local v14, "sName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    .line 592
    .local v9, "pics":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100616

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 593
    .local v11, "rlReloadHint":Landroid/widget/RelativeLayout;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 594
    const/4 v7, 0x0

    .line 595
    .local v7, "nFailed":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v9, :cond_4

    .line 596
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;

    .line 597
    .local v8, "picUrl":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;
    iget-object v15, v8, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;->thumbnail_pic:Ljava/lang/String;

    .line 598
    .local v15, "sUrl":Ljava/lang/String;
    invoke-virtual {v4, v15, v14}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 599
    .local v3, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 601
    .local v6, "imgPic":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    const v17, 0x7f100004

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 603
    const v17, 0x7f100005

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 606
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_3

    .line 607
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeFailedBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v3, v0, :cond_2

    .line 610
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 611
    const v17, 0x7f100617

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 613
    .local v16, "tvReload":Landroid/widget/TextView;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    add-int/lit8 v7, v7, 0x1

    .line 595
    .end local v16    # "tvReload":Landroid/widget/TextView;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 618
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 619
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 622
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "imgPic":Landroid/widget/ImageView;
    .end local v8    # "picUrl":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;
    .end local v15    # "sUrl":Ljava/lang/String;
    :cond_4
    if-lez v7, :cond_0

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f08e3

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 624
    .local v12, "sHint":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\u5f20"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 625
    .local v13, "sMsg":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 626
    const v17, 0x7f100617

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 627
    .restart local v16    # "tvReload":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 629
    new-instance v17, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private updateImageGridDefault(Ljava/util/List;Landroid/view/View;)V
    .locals 8
    .param p2, "viewGrid"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "listUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    if-nez p2, :cond_1

    .line 524
    :cond_0
    return-void

    :cond_1
    move-object v4, p2

    .line 513
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 514
    .local v4, "rlLayout":Landroid/widget/RelativeLayout;
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->hideAllChild(Landroid/view/ViewGroup;)V

    .line 515
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    .line 516
    .local v0, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 517
    .local v3, "pics":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    const v7, 0x7f100616

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 518
    .local v5, "rlReloadHint":Landroid/widget/RelativeLayout;
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 519
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 520
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 521
    .local v2, "imgPic":Landroid/widget/ImageView;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateImageGridLarge(Ljava/util/List;Landroid/view/View;)V
    .locals 19
    .param p2, "viewGrid"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "listUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    if-nez p2, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v10, p2

    .line 466
    check-cast v10, Landroid/widget/RelativeLayout;

    .line 467
    .local v10, "rlLayout":Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v4

    .line 468
    .local v4, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v14

    .line 469
    .local v14, "sName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    .line 470
    .local v9, "pics":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100616

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 471
    .local v11, "rlReloadHint":Landroid/widget/RelativeLayout;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 472
    const/4 v7, 0x0

    .line 473
    .local v7, "nFailed":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v9, :cond_4

    .line 474
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    .line 475
    .local v8, "picUrl":Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v15

    .line 476
    .local v15, "sUrl":Ljava/lang/String;
    invoke-virtual {v4, v15, v14}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 477
    .local v3, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 479
    .local v6, "imgPic":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    const v17, 0x7f100004

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 481
    const v17, 0x7f100005

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 484
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_3

    .line 485
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeFailedBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v3, v0, :cond_2

    .line 487
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 488
    const v17, 0x7f100617

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 490
    .local v16, "tvReload":Landroid/widget/TextView;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    add-int/lit8 v7, v7, 0x1

    .line 473
    .end local v16    # "tvReload":Landroid/widget/TextView;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 494
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 495
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 498
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "imgPic":Landroid/widget/ImageView;
    .end local v8    # "picUrl":Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
    .end local v15    # "sUrl":Ljava/lang/String;
    :cond_4
    if-lez v7, :cond_0

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f08e3

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 500
    .local v12, "sHint":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\u5f20"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 501
    .local v13, "sMsg":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 502
    const v17, 0x7f100617

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 503
    .restart local v16    # "tvReload":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 505
    new-instance v17, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private updateImageGridMid(Ljava/util/List;Landroid/view/View;I)V
    .locals 21
    .param p2, "viewGrid"    # Landroid/view/View;
    .param p3, "nPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;",
            ">;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "listUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    if-nez p2, :cond_0

    .line 584
    :goto_0
    return-void

    :cond_0
    move-object/from16 v12, p2

    .line 528
    check-cast v12, Landroid/widget/RelativeLayout;

    .line 529
    .local v12, "rlLayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->hideAllChild(Landroid/view/ViewGroup;)V

    .line 530
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v4

    .line 531
    .local v4, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v16

    .line 532
    .local v16, "sName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 533
    .local v11, "pics":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    const v20, 0x7f100616

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 534
    .local v13, "rlReloadHint":Landroid/widget/RelativeLayout;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 535
    const/4 v8, 0x0

    .line 536
    .local v8, "nFailed":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v11, :cond_4

    .line 537
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    .line 538
    .local v10, "picUrl":Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v17

    .line 539
    .local v17, "sUrl":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 541
    .local v3, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 542
    .local v7, "imgPic":Landroid/widget/ImageView;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    const v19, 0x7f100004

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 546
    const v19, 0x7f100005

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 549
    add-int v19, v5, v11

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 550
    .local v6, "imgGif":Landroid/widget/ImageView;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->getImgType(Ljava/lang/String;)I

    move-result v9

    .line 552
    .local v9, "nImgType":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_1

    .line 553
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v19

    if-nez v19, :cond_3

    .line 557
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeFailedBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_2

    .line 559
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 560
    const v19, 0x7f100617

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 562
    .local v18, "tvReload":Landroid/widget/TextView;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    add-int/lit8 v8, v8, 0x1

    .line 536
    .end local v18    # "tvReload":Landroid/widget/TextView;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 566
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 567
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 571
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "imgGif":Landroid/widget/ImageView;
    .end local v7    # "imgPic":Landroid/widget/ImageView;
    .end local v9    # "nImgType":I
    .end local v10    # "picUrl":Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
    .end local v17    # "sUrl":Ljava/lang/String;
    :cond_4
    if-lez v8, :cond_5

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0f08e3

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 573
    .local v14, "sHint":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\u5f20"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 574
    .local v15, "sMsg":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 575
    const v19, 0x7f100617

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 576
    .restart local v18    # "tvReload":Landroid/widget/TextView;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 578
    new-instance v19, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 581
    .end local v14    # "sHint":Ljava/lang/String;
    .end local v15    # "sMsg":Ljava/lang/String;
    .end local v18    # "tvReload":Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->startItemAnimation(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getImgType(Ljava/lang/String;)I
    .locals 2
    .param p1, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "sType":Ljava/lang/String;
    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x1

    .line 141
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v4, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;

    if-eqz v4, :cond_1

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "index":I
    const/4 v3, 0x0

    .line 117
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    const v4, 0x7f100004

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 118
    const v4, 0x7f100005

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;

    invoke-interface {v4, p0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;->onGridClick(Landroid/view/View;ILcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 126
    .end local v2    # "index":I
    .end local v3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_1
    return-void

    .line 119
    .restart local v2    # "index":I
    .restart local v3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ImageViewGrid onClick error"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 84
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->getChildCount()I

    move-result v1

    .line 86
    .local v1, "nCnt":I
    const-string/jumbo v3, "view count=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    if-gtz v1, :cond_0

    .line 88
    const-string/jumbo v3, "view not exist, will add"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 89
    const v3, 0x7f0400e6

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, "viewAll":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->addView(Landroid/view/View;)V

    .line 91
    const v3, 0x7f1005ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    .line 93
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 97
    .end local v2    # "viewAll":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    const v4, 0x7f050048

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 98
    return-void

    .line 95
    :cond_0
    const-string/jumbo v3, "view already exist, will not add"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prepareImage(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z
    .locals 14
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 309
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    .line 310
    .local v1, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    move-object v2, p1

    .line 311
    .local v2, "itemCache":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v8

    .line 312
    .local v8, "sName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v4

    .line 313
    .local v4, "picList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-gt v11, v12, :cond_4

    .line 314
    :cond_0
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->canAddTimePicMore()Z

    move-result v11

    if-nez v11, :cond_1

    move v11, v12

    .line 378
    :goto_0
    return v11

    .line 317
    :cond_1
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v9

    .line 318
    .local v9, "sUrl":Ljava/lang/String;
    invoke-virtual {v1, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 319
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 321
    :cond_2
    invoke-direct {p0, v9, v8, v13}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFileCache(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 378
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v9    # "sUrl":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v11, 0x0

    goto :goto_0

    .line 324
    :cond_4
    packed-switch v12, :pswitch_data_0

    goto :goto_1

    .line 326
    :pswitch_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 327
    .local v7, "pics":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v7, :cond_3

    .line 328
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->canAddTimePicMore()Z

    move-result v11

    if-nez v11, :cond_5

    move v11, v12

    .line 329
    goto :goto_0

    .line 331
    :cond_5
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;

    .line 332
    .local v5, "picUrl":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;
    iget-object v9, v5, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;->thumbnail_pic:Ljava/lang/String;

    .line 333
    .restart local v9    # "sUrl":Ljava/lang/String;
    invoke-virtual {v1, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 336
    :cond_6
    invoke-direct {p0, v9, v8, v13}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFileCache(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 327
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 341
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "j":I
    .end local v5    # "picUrl":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;
    .end local v7    # "pics":I
    .end local v9    # "sUrl":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v6

    .line 342
    .local v6, "picUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    .line 343
    .local v10, "size":I
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    if-ge v3, v10, :cond_3

    .line 345
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->canAddTimePicMore()Z

    move-result v11

    if-nez v11, :cond_8

    move v11, v12

    .line 346
    goto :goto_0

    .line 349
    :cond_8
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v9

    .line 350
    .restart local v9    # "sUrl":Ljava/lang/String;
    invoke-virtual {v1, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 353
    :cond_9
    invoke-direct {p0, v9, v8, v13}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFileCache(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 343
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 358
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "j":I
    .end local v6    # "picUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    .end local v9    # "sUrl":Ljava/lang/String;
    .end local v10    # "size":I
    :pswitch_2
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v6

    .line 359
    .restart local v6    # "picUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    .line 360
    .restart local v10    # "size":I
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_4
    if-ge v3, v10, :cond_3

    .line 362
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->canAddTimePicMore()Z

    move-result v11

    if-nez v11, :cond_b

    move v11, v12

    .line 363
    goto/16 :goto_0

    .line 366
    :cond_b
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v9

    .line 367
    .restart local v9    # "sUrl":Ljava/lang/String;
    invoke-virtual {v1, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 370
    :cond_c
    invoke-direct {p0, v9, v8, v13}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFileCache(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 360
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDataItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 185
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setDataItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V

    .line 186
    return-void
.end method

.method public setDataItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V
    .locals 27
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    const v23, 0x7f100006

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->getTag(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->isBusy()Z

    move-result v5

    .line 192
    .local v5, "bBusy":Z
    if-eqz v5, :cond_1

    .line 193
    invoke-direct/range {p0 .. p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setDataItemDefault(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 199
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v13

    .line 200
    .local v13, "nCnt":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v13, :cond_2

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 200
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 204
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v12

    .line 205
    .local v12, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 207
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v7

    .line 209
    .local v7, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v21

    .line 210
    .local v21, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v18

    .line 212
    .local v18, "sName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    const v24, 0x7f1005ae

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 213
    .local v17, "rlOne":Landroid/widget/RelativeLayout;
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 214
    const v23, 0x7f1005b0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 215
    .local v10, "imgData":Landroid/widget/ImageView;
    const v23, 0x7f100004

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 216
    const v23, 0x7f100005

    move/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v23, 0x7f1005b1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 220
    .local v11, "imgGif":Landroid/widget/ImageView;
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->getImgType(Ljava/lang/String;)I

    move-result v14

    .line 222
    .local v14, "nImgType":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v14, v0, :cond_4

    .line 223
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :cond_4
    const v23, 0x7f1005b2

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 227
    .local v20, "tvFailed":Landroid/widget/TextView;
    const/16 v23, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 230
    .local v6, "bmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-nez v23, :cond_6

    .line 231
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeFailedBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    if-ne v6, v0, :cond_5

    .line 233
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    new-instance v23, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v18

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 277
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v9    # "i":I
    .end local v10    # "imgData":Landroid/widget/ImageView;
    .end local v11    # "imgGif":Landroid/widget/ImageView;
    .end local v12    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    .end local v13    # "nCnt":I
    .end local v14    # "nImgType":I
    .end local v17    # "rlOne":Landroid/widget/RelativeLayout;
    .end local v18    # "sName":Ljava/lang/String;
    .end local v20    # "tvFailed":Landroid/widget/TextView;
    .end local v21    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 278
    .local v8, "e":Ljava/lang/Exception;
    const-string v23, "ImageViewGrid.setDataItem error: %s"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v8}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 237
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .restart local v9    # "i":I
    .restart local v10    # "imgData":Landroid/widget/ImageView;
    .restart local v11    # "imgGif":Landroid/widget/ImageView;
    .restart local v12    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    .restart local v13    # "nCnt":I
    .restart local v14    # "nImgType":I
    .restart local v17    # "rlOne":Landroid/widget/RelativeLayout;
    .restart local v18    # "sName":Ljava/lang/String;
    .restart local v20    # "tvFailed":Landroid/widget/TextView;
    .restart local v21    # "uri":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->startItemAnimation(I)V

    goto/16 :goto_0

    .line 240
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 246
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v10    # "imgData":Landroid/widget/ImageView;
    .end local v11    # "imgGif":Landroid/widget/ImageView;
    .end local v14    # "nImgType":I
    .end local v17    # "rlOne":Landroid/widget/RelativeLayout;
    .end local v18    # "sName":Ljava/lang/String;
    .end local v20    # "tvFailed":Landroid/widget/TextView;
    .end local v21    # "uri":Ljava/lang/String;
    :cond_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    .line 247
    .local v15, "pics":I
    const-string/jumbo v23, "pic count = %d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    add-int/lit8 v24, v15, -0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 249
    .local v22, "v":Landroid/view/View;
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 251
    const/16 v23, 0x1

    packed-switch v23, :pswitch_data_0

    .line 265
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mllAllImage:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    const v24, 0x7f100613

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 266
    .local v16, "rlCount":Landroid/widget/RelativeLayout;
    if-eqz v16, :cond_0

    .line 267
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 268
    const v23, 0x7f100615

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 269
    .local v19, "tvCnt":Landroid/widget/TextView;
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 253
    .end local v16    # "rlCount":Landroid/widget/RelativeLayout;
    .end local v19    # "tvCnt":Landroid/widget/TextView;
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->updateImageGrid(Ljava/util/List;Landroid/view/View;)V

    goto :goto_2

    .line 256
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->updateImageGridMid(Ljava/util/List;Landroid/view/View;I)V

    goto :goto_2

    .line 259
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->updateImageGridLarge(Ljava/util/List;Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mClickListener:Landroid/view/View$OnClickListener;

    .line 105
    return-void
.end method

.method public setOnGridClickListener(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;

    .line 130
    return-void
.end method

.method public setParentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mParentAdapter:Landroid/widget/BaseAdapter;

    .line 134
    return-void
.end method
