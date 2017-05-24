.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendDetailWbAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;,
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ViewCache;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH_IMAGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "panhui4_FriendDetailWbAdapter"

.field public static mHeaderForWbList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;


# instance fields
.field private mAdapterHandler:Landroid/os/Handler;

.field private mArrShowItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mHandlerDelWb:Landroid/os/Handler;

.field private mHeader:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

.field private mIconRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mImageListener:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsLoading:Z

.field private mIsMe:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mResManager2:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

.field private mSlidingWindow:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mHeaderForWbList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scrollListener"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIsMe:Z

    .line 97
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mHeader:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .line 662
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    .line 727
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mHandlerDelWb:Landroid/os/Handler;

    .line 1004
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$5;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mImageListener:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    .line 1017
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$6;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mAdapterHandler:Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIconRecords:Ljava/util/Map;

    .line 120
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->createResourceManager(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mResManager2:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02066c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 123
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-DD HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mFormat:Ljava/text/SimpleDateFormat;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mHandlerDelWb:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mHeader:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mAdapterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->refreshIcon(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;)V

    return-void
.end method

.method private cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 6
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 652
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 653
    .local v2, "posNow":I
    add-int/lit8 v3, v2, -0x2

    .line 654
    .local v3, "posStart":I
    add-int/lit8 v1, v2, 0x2

    .line 655
    .local v1, "posEnd":I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    .line 656
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v1, v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 657
    :cond_1
    move v0, v3

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 658
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_2
    return-void
.end method

.method private canClearTimePic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z
    .locals 14
    .param p1, "srcItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 263
    sget-object v10, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    if-nez v10, :cond_0

    move v10, v11

    .line 305
    :goto_0
    return v10

    .line 265
    :cond_0
    sget-object v10, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 266
    .local v9, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v9, :cond_4

    .line 267
    sget-object v10, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 268
    .local v0, "dstItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v4

    .line 269
    .local v4, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v11, :cond_2

    .line 271
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 272
    .local v6, "pics":I
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v3

    .line 273
    .local v3, "listDstUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v5

    .line 274
    .local v5, "listSrcUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ne v10, v13, :cond_3

    .line 276
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 277
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;

    iget-object v7, v10, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;->thumbnail_pic:Ljava/lang/String;

    .line 278
    .local v7, "sDstUrl":Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, "sSrcUrl":Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    .line 292
    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v12

    .line 293
    goto :goto_0

    .line 281
    :pswitch_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v8

    .line 283
    goto :goto_3

    .line 285
    :pswitch_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v7

    .line 286
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v8

    .line 287
    goto :goto_3

    .line 276
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 298
    .end local v2    # "j":I
    .end local v3    # "listDstUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    .end local v5    # "listSrcUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    .end local v6    # "pics":I
    .end local v7    # "sDstUrl":Ljava/lang/String;
    .end local v8    # "sSrcUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v7

    .line 299
    .restart local v7    # "sDstUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v8

    .line 300
    .restart local v8    # "sSrcUrl":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v12

    .line 301
    goto/16 :goto_0

    .line 266
    .end local v7    # "sDstUrl":Ljava/lang/String;
    .end local v8    # "sSrcUrl":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .end local v0    # "dstItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v4    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    :cond_4
    move v10, v11

    .line 305
    goto/16 :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private cleanComment()V
    .locals 12

    .prologue
    .line 139
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 140
    .local v10, "size":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    .line 141
    .local v2, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_3

    .line 142
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 143
    .local v4, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->canClearHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 141
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "sName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "sUrl":Ljava/lang/String;
    invoke-virtual {v2, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearCacheHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    .line 149
    .local v6, "lStatusId":J
    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeStatusComments(J)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    move-result-object v0

    .line 150
    .local v0, "ci":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    if-eqz v0, :cond_0

    .line 152
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    .line 154
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_2

    .line 155
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 156
    .local v1, "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v8

    .line 157
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v9

    .line 158
    invoke-virtual {v2, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearCacheHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 161
    .end local v1    # "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_2
    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearTimeStatusComments(J)V

    goto :goto_1

    .line 164
    .end local v0    # "ci":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    .end local v4    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "j":I
    .end local v6    # "lStatusId":J
    .end local v8    # "sName":Ljava/lang/String;
    .end local v9    # "sUrl":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private cleanTimePic()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 167
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    .line 168
    .local v0, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 169
    .local v9, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_3

    .line 170
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 171
    .local v2, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->canClearTimePic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 169
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v4

    .line 173
    .local v4, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v11, :cond_2

    .line 174
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 175
    .local v6, "pics":I
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "sName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v5

    .line 177
    .local v5, "listUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v6, :cond_0

    .line 178
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;

    iget-object v8, v10, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;->thumbnail_pic:Ljava/lang/String;

    .line 179
    .local v8, "sUrl":Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    .line 189
    :goto_3
    invoke-virtual {v0, v8, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearTimeBitmap(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 181
    :pswitch_0
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v8

    .line 182
    goto :goto_3

    .line 184
    :pswitch_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v8

    .line 185
    goto :goto_3

    .line 192
    .end local v3    # "j":I
    .end local v5    # "listUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    .end local v6    # "pics":I
    .end local v7    # "sName":Ljava/lang/String;
    .end local v8    # "sUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v7

    .line 193
    .restart local v7    # "sName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v8

    .line 194
    .restart local v8    # "sUrl":Ljava/lang/String;
    invoke-virtual {v0, v8, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearTimeBitmap(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 197
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v4    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    .end local v7    # "sName":Ljava/lang/String;
    .end local v8    # "sUrl":Ljava/lang/String;
    :cond_3
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIntentForComment(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 481
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 482
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 483
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 484
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 485
    return-void
.end method

.method private getIntentForRepost(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 489
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 490
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 491
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string/jumbo v1, "name"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 494
    return-void
.end method

.method private getIntentForSingleImage(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 474
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 476
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 478
    return-void
.end method

.method private getIntentForSingleImage(JLjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 462
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 463
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 464
    const-string/jumbo v1, "url_mid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 466
    return-void
.end method

.method private refreshIcon(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;)V
    .locals 6
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;

    .prologue
    .line 977
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mListView:Landroid/widget/ListView;

    if-nez v4, :cond_1

    .line 978
    const-string/jumbo v4, "panhui4_FriendDetailWbAdapter"

    const-string/jumbo v5, "refreshIcon, mListView=null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_0
    return-void

    .line 982
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIconRecords:Ljava/util/Map;

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;->url:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 983
    .local v1, "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    if-eqz v1, :cond_0

    .line 985
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 986
    .local v0, "data":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 987
    .local v3, "v":Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 988
    iget-object v4, p1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private saveIconRecords(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 994
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIconRecords:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 995
    .local v0, "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    if-nez v0, :cond_0

    .line 996
    new-instance v0, Ljava/util/Vector;

    .end local v0    # "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 997
    .restart local v0    # "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIconRecords:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1000
    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_1
    return-void
.end method


# virtual methods
.method public canClearHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z
    .locals 14
    .param p1, "srcItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    const/4 v10, 0x0

    .line 310
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    .line 311
    .local v2, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, "sSrcName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 314
    .local v8, "size":I
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    .line 315
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 318
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_5

    .line 319
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 320
    .local v3, "dstItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "sDstName":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 338
    .end local v3    # "dstItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v6    # "sDstName":Ljava/lang/String;
    :cond_1
    :goto_1
    return v10

    .line 325
    .restart local v3    # "dstItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v6    # "sDstName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeStatusComments(J)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    move-result-object v0

    .line 326
    .local v0, "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    if-nez v0, :cond_4

    .line 318
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 327
    :cond_4
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    if-eqz v11, :cond_3

    .line 328
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 329
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 330
    .local v1, "cmtSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_3

    .line 331
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 332
    .local v9, "userItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 330
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 338
    .end local v0    # "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    .end local v1    # "cmtSize":I
    .end local v3    # "dstItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "j":I
    .end local v6    # "sDstName":Ljava/lang/String;
    .end local v9    # "userItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_5
    const/4 v10, 0x1

    goto :goto_1
.end method

.method public clean()V
    .locals 18

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIconRecords:Ljava/util/Map;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIconRecords:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIconRecords:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->clear()V

    .line 203
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mResManager2:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mResManager2:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->release()V

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 208
    .local v15, "size":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v4

    .line 209
    .local v4, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v15, :cond_5

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 212
    .local v6, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, "sName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v14

    .line 215
    .local v14, "sUrl":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v8

    .line 216
    .local v8, "lStatusId":J
    invoke-virtual {v4, v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeStatusComments(J)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    move-result-object v2

    .line 217
    .local v2, "ci":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    if-nez v2, :cond_3

    .line 209
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 219
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget-object v0, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_2

    .line 220
    iget-object v0, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 221
    .local v3, "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->canClearHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 219
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 222
    :cond_4
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v13

    .line 223
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v14

    .line 224
    invoke-virtual {v4, v14, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearCacheHead(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 229
    .end local v2    # "ci":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    .end local v3    # "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v6    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v7    # "j":I
    .end local v8    # "lStatusId":J
    .end local v13    # "sName":Ljava/lang/String;
    .end local v14    # "sUrl":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 230
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v15, :cond_9

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 232
    .restart local v6    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->canClearTimePic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 230
    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 233
    :cond_7
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v10

    .line 234
    .local v10, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v10, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 235
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .line 236
    .local v12, "pics":I
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v13

    .line 237
    .restart local v13    # "sName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v11

    .line 238
    .local v11, "listUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_5
    if-ge v7, v12, :cond_6

    .line 240
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;->thumbnail_pic:Ljava/lang/String;

    .line 241
    .restart local v14    # "sUrl":Ljava/lang/String;
    const/16 v16, 0x1

    packed-switch v16, :pswitch_data_0

    .line 251
    :goto_6
    invoke-virtual {v4, v14, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearTimeBitmap(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 243
    :pswitch_0
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v14

    .line 244
    goto :goto_6

    .line 246
    :pswitch_1
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v14

    .line 247
    goto :goto_6

    .line 254
    .end local v7    # "j":I
    .end local v11    # "listUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    .end local v12    # "pics":I
    .end local v13    # "sName":Ljava/lang/String;
    .end local v14    # "sUrl":Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v13

    .line 255
    .restart local v13    # "sName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v14

    .line 256
    .restart local v14    # "sUrl":Ljava/lang/String;
    invoke-virtual {v4, v14, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearTimeBitmap(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 259
    .end local v6    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v10    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    .end local v13    # "sName":Ljava/lang/String;
    .end local v14    # "sUrl":Ljava/lang/String;
    :cond_9
    return-void

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 431
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImageManager()Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mResManager2:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    return-object v0
.end method

.method public getItem(I)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 452
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->getItem(I)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 457
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 843
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 844
    .local v3, "nSize":I
    if-gtz v3, :cond_0

    .line 845
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0401a9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 846
    const v5, 0x7f100a13

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 847
    .local v4, "v":Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p2

    .line 871
    .end local v4    # "v":Landroid/view/View;
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_0
    return-object v0

    .line 850
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    .line 851
    .local v2, "itemView":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    if-eqz p2, :cond_1

    instance-of v5, p2, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    if-nez v5, :cond_3

    .line 852
    :cond_1
    const-string v5, "abc"

    const-string/jumbo v6, "will inflate new layout !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheView(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    move-result-object v2

    .line 855
    move-object p2, v2

    .line 856
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setParentAdapter(Landroid/widget/BaseAdapter;)V

    .line 858
    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIsMe:Z

    if-eqz v5, :cond_2

    .line 859
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setLayoutType(I)V

    .line 864
    :goto_1
    iget-object v5, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    invoke-virtual {v5, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setOnGridClickListener(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;)V

    .line 865
    const v5, 0x7f100006

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setTag(ILjava/lang/Object;)V

    .line 869
    :goto_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 870
    .local v1, "dataItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v5, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setDataItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V

    move-object v0, p2

    .line 871
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 861
    .end local v0    # "convertView":Landroid/view/View;
    .end local v1    # "dataItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setLayoutType(I)V

    goto :goto_1

    :cond_3
    move-object v2, p2

    .line 867
    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    goto :goto_2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 838
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 348
    const-string/jumbo v0, "panhui4_FriendDetailWbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmpty, mIsLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIsLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0

    .line 352
    :cond_0
    const-string/jumbo v0, "panhui4_FriendDetailWbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmpty, superEmpty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 511
    :sswitch_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_friendlist"

    const-string v3, "action_weibo_sina_friendlist_click_repost_btn"

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v3, v5, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 521
    .local v8, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 523
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putCacheDataItem(JLcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 525
    new-instance v9, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    .local v9, "mIntent":Landroid/content/Intent;
    const-string/jumbo v0, "weibo_uid"

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v12

    invoke-virtual {v9, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 527
    const-string/jumbo v0, "weibo_isreply"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 528
    const-string/jumbo v0, "screen_name"

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 537
    .end local v8    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v9    # "mIntent":Landroid/content/Intent;
    :sswitch_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_friendlist"

    const-string v3, "action_weibo_sina_friendlist_click_comment_btn"

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v3, v5, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 542
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 547
    .restart local v8    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 549
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putCacheDataItem(JLcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 551
    new-instance v9, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 552
    .restart local v9    # "mIntent":Landroid/content/Intent;
    const-string/jumbo v0, "weibo_uid"

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v12

    invoke-virtual {v9, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 553
    const-string/jumbo v0, "weibo_isreply"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 554
    const-string/jumbo v0, "screen_name"

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 562
    .end local v8    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v9    # "mIntent":Landroid/content/Intent;
    :sswitch_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_friendlist"

    const-string v3, "action_weibo_sina_friendlist_clickfriendcommentall_btn"

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v3, v5, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 567
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const/high16 v0, 0x7f100000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 572
    .restart local v8    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-eqz v8, :cond_0

    .line 573
    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 574
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 576
    const-string/jumbo v0, "uid"

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v12

    invoke-virtual {v7, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 577
    const-string/jumbo v0, "url_mid"

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string v0, "check_all_reply"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 580
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 584
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :sswitch_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_friendlist"

    const-string v3, "action_weibo_sina_friendlist_click_weiboimage"

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v3, v5, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 589
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const-string/jumbo v0, "panhui4_FriendDetailWbAdapter"

    const-string/jumbo v1, "onClick, image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 597
    .restart local v8    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->getIntentForSingleImage(J)V

    goto/16 :goto_0

    .line 601
    .end local v8    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :sswitch_4
    const-string/jumbo v0, "panhui4_FriendDetailWbAdapter"

    const-string/jumbo v1, "onClick, attitudes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_friendlist"

    const-string v3, "action_weibo_sina_friendlist_click_good_btn"

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v3, v5, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 611
    :sswitch_5
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_friendlist"

    const-string v3, "action_weibo_sina_friendlist_click_delete_btn"

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v3, v5, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 616
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 621
    .restart local v8    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    new-instance v10, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;

    invoke-direct {v10, p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 622
    .local v10, "td":Ljava/lang/Thread;
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    .line 623
    new-instance v6, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$1;

    invoke-direct {v6, p0, v10}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;Ljava/lang/Thread;)V

    .line 630
    .local v6, "okRunnable":Ljava/lang/Runnable;
    new-instance v4, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$2;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)V

    .line 638
    .local v4, "cancelRunnable":Ljava/lang/Runnable;
    const/4 v2, 0x0

    .line 639
    .local v2, "confirmMsg":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f110000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 642
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    const v11, 0x104000a

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 498
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000a9 -> :sswitch_3
        0x7f100a26 -> :sswitch_4
        0x7f100a27 -> :sswitch_0
        0x7f100a69 -> :sswitch_2
        0x7f100a78 -> :sswitch_0
        0x7f100a7d -> :sswitch_1
        0x7f100a87 -> :sswitch_0
        0x7f100a8c -> :sswitch_1
        0x7f100a8f -> :sswitch_5
    .end sparse-switch
.end method

.method public onContentChanged(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;)V
    .locals 10
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;

    .prologue
    .line 775
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    if-nez v5, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 780
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mItems:Ljava/util/ArrayList;

    .line 783
    :cond_2
    const/4 v3, 0x0

    .line 784
    .local v3, "isExist":Z
    const/4 v1, 0x0

    .line 785
    .local v1, "entryTmp":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 786
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 787
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;

    .line 788
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    if-nez v0, :cond_4

    .line 786
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 792
    :cond_4
    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-wide v6, v5, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->s_uid:J

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-wide v8, v5, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->s_uid:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 794
    const/4 v3, 0x1

    .line 795
    move-object v1, v0

    .line 801
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    :cond_5
    if-nez v3, :cond_6

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->bm:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    .line 802
    const-string/jumbo v5, "panhui4_FriendDetailWbAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onContentChanged, add item, s_uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-wide v8, v7, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->s_uid:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->pos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 805
    :cond_6
    if-eqz v3, :cond_0

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->bm:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 806
    const-string/jumbo v5, "panhui4_FriendDetailWbAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onContentChanged, remove item, s_uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-wide v8, v7, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->s_uid:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->pos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onGridClick(Landroid/view/View;ILcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "dataItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 1034
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v4

    .line 1039
    .local v4, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1041
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    .line 1042
    .local v1, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v6

    .line 1043
    .local v6, "uri":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v5

    .line 1044
    .local v5, "sName":Ljava/lang/String;
    invoke-virtual {v1, v6, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1045
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v0, v7, :cond_0

    .line 1051
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v5    # "sName":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_3
    move-object v3, p3

    .line 1052
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    sget-object v7, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 1056
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v7

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putCacheDataItem(JLcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 1058
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1059
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    const-class v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1060
    const-string/jumbo v7, "uid"

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v8

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1061
    const-string/jumbo v7, "url_mid"

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    const-string/jumbo v7, "select_id"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1064
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSizeChanged(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 762
    return-void
.end method

.method public onVisibleRangleChanged(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 813
    add-int/lit8 v1, p1, -0x2

    .line 814
    .local v1, "start":I
    if-gez v1, :cond_0

    .line 815
    const/4 v1, 0x0

    .line 817
    :cond_0
    move v0, p1

    .line 819
    .local v0, "end":I
    if-ne v1, v0, :cond_1

    .line 826
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mSlidingWindow:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    invoke-virtual {v2, v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->setActiveWindow(II)V

    goto :goto_0
.end method

.method public setIsMe(Z)V
    .locals 0
    .param p1, "isMe"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIsMe:Z

    .line 132
    return-void
.end method

.method public setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIds:Ljava/util/ArrayList;

    .line 361
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listview"    # Landroid/widget/ListView;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mListView:Landroid/widget/ListView;

    .line 443
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mIsLoading:Z

    .line 344
    return-void
.end method

.method public setSlidingWindow(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)V
    .locals 1
    .param p1, "slidingwindow"    # Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mSlidingWindow:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    if-nez v0, :cond_0

    .line 436
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mSlidingWindow:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mSlidingWindow:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->setListener(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;)V

    .line 439
    :cond_0
    return-void
.end method

.method public setWbHeader(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)V
    .locals 0
    .param p1, "header"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mHeader:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .line 128
    return-void
.end method

.method public setmArrShowItem(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "arrShowItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v15

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearAnimationFlag(I)V

    .line 368
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-gtz v15, :cond_0

    .line 371
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 372
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 373
    .local v12, "mapStatusId2Exist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 374
    .local v14, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v14, :cond_8

    .line 375
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 376
    .local v3, "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    if-ltz v15, :cond_2

    .line 374
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    :cond_2
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    .line 380
    .local v10, "lStatusId":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_1

    .line 381
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    .end local v2    # "i":I
    .end local v3    # "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v10    # "lStatusId":J
    .end local v12    # "mapStatusId2Exist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v14    # "size":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->cleanComment()V

    .line 387
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 388
    .restart local v14    # "size":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v14, :cond_6

    .line 389
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 390
    .restart local v3    # "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    .line 392
    .local v6, "lNewId":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 393
    .local v13, "oldSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v13, :cond_4

    .line 394
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 395
    .local v4, "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v8

    .line 396
    .local v8, "lOldId":J
    cmp-long v15, v8, v6

    if-nez v15, :cond_5

    .line 397
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 388
    .end local v4    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v8    # "lOldId":J
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 393
    .restart local v4    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v8    # "lOldId":J
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 403
    .end local v3    # "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v4    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "j":I
    .end local v6    # "lNewId":J
    .end local v8    # "lOldId":J
    .end local v13    # "oldSize":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->cleanTimePic()V

    .line 405
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 406
    .restart local v12    # "mapStatusId2Exist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 407
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 408
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v14, :cond_8

    .line 409
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 410
    .restart local v3    # "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    .line 411
    .restart local v10    # "lStatusId":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_7

    .line 412
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 424
    .end local v3    # "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v10    # "lStatusId":J
    :cond_8
    return-void
.end method

.method public updateCommentCount(JI)V
    .locals 7
    .param p1, "lStatusId"    # J
    .param p3, "nCount"    # I

    .prologue
    .line 1068
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1069
    .local v2, "nSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1070
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1071
    .local v1, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    .line 1073
    invoke-virtual {v1, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCommentsCount(I)V

    .line 1074
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->notifyDataSetChanged()V

    .line 1079
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_0
    return-void

    .line 1069
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateRepostCount(JI)V
    .locals 7
    .param p1, "lStatusId"    # J
    .param p3, "nCount"    # I

    .prologue
    .line 1082
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1083
    .local v2, "nSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1084
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1085
    .local v1, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    .line 1087
    invoke-virtual {v1, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRepostsCount(I)V

    .line 1088
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->notifyDataSetChanged()V

    .line 1093
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_0
    return-void

    .line 1083
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
