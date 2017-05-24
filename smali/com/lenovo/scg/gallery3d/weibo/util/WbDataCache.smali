.class public Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
.super Ljava/lang/Object;
.source "WbDataCache.java"


# static fields
.field private static final BITMAP_CACHE_RELEASE_COUNT:I = 0x14

.field private static final MAX_CACHE_BITMAP_COUNT:I = 0xc8

.field private static final MAX_STATUS_CACHE_COUNT:I = 0x64

.field private static final MAX_VIEW_CACHE:I = 0x8

.field private static final STATUS_CACHE_RELEASE_COUNT:I = 0xa

.field private static mBitmapDefault:Landroid/graphics/Bitmap;

.field private static mBitmapDefaultCmtUser:Landroid/graphics/Bitmap;

.field private static mBitmapDefaultFailed:Landroid/graphics/Bitmap;

.field private static mBitmapDefaultHead:Landroid/graphics/Bitmap;

.field private static mInstance:Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

.field private static final mIsSoftBitmap:Z

.field private static final mIsSoftReference:Z


# instance fields
.field private MAX_HEAD_CACHE:I

.field private RELEASE_HEAD_COUNT:I

.field mAnimationFlag:Landroid/util/SparseBooleanArray;

.field private mArrHeadUrlName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArrSID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mArrUrlData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArrViewCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurViewPos:I

.field private mMapId2DataItem:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMapSID2Status:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMapStatusId2Comments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMapUrl2Head:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMapUrl2HeadBitmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mMapUrl2TimeBitmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mMapUrl2TimeSoftRefBitmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMapUrlName2Name:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMapUrlName2NameFile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMapUserId2Friend:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;",
            ">;"
        }
    .end annotation
.end field

.field mShieldSinUserIdArr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/net/NetThreadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    .line 32
    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefault:Landroid/graphics/Bitmap;

    .line 33
    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultFailed:Landroid/graphics/Bitmap;

    .line 34
    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultHead:Landroid/graphics/Bitmap;

    .line 35
    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultCmtUser:Landroid/graphics/Bitmap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapSID2Status:Ljava/util/HashMap;

    .line 44
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrSID:Ljava/util/ArrayList;

    .line 46
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    .line 48
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2Head:Ljava/util/HashMap;

    .line 50
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    .line 51
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->MAX_HEAD_CACHE:I

    .line 52
    const/16 v0, 0x32

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->RELEASE_HEAD_COUNT:I

    .line 54
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapId2DataItem:Ljava/util/HashMap;

    .line 59
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeSoftRefBitmap:Ljava/util/HashMap;

    .line 61
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeBitmap:Ljava/util/HashMap;

    .line 62
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    .line 70
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrlName2Name:Ljava/util/HashMap;

    .line 71
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrlName2NameFile:Ljava/util/HashMap;

    .line 76
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapStatusId2Comments:Ljava/util/HashMap;

    .line 81
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mTaskArr:Ljava/util/ArrayList;

    .line 85
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUserId2Friend:Ljava/util/HashMap;

    .line 90
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrViewCache:Ljava/util/ArrayList;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mCurViewPos:I

    .line 95
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mAnimationFlag:Landroid/util/SparseBooleanArray;

    .line 99
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mShieldSinUserIdArr:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapSID2Status:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrSID:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2Head:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapId2DataItem:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeSoftRefBitmap:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeBitmap:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrlName2Name:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrlName2NameFile:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapStatusId2Comments:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mTaskArr:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUserId2Friend:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrViewCache:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mAnimationFlag:Landroid/util/SparseBooleanArray;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mShieldSinUserIdArr:Ljava/util/HashMap;

    .line 132
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    .line 138
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    return-object v0
.end method

.method private readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V
    .locals 1
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;

    .prologue
    .line 348
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V

    .line 350
    return-void
.end method

.method public static safeReleaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 722
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 725
    :cond_0
    return-void
.end method


# virtual methods
.method public addNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V
    .locals 1
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mTaskArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    return-void
.end method

.method public cacheLayout(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 729
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrViewCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 730
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mCurViewPos:I

    .line 732
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 733
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    .line 734
    const v3, 0x7f0401b1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    .line 735
    .local v2, "itemView":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrViewCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    .end local v2    # "itemView":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    :cond_0
    return-void
.end method

.method public canAddTimePicMore()Z
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelAllTask()V
    .locals 6

    .prologue
    .line 652
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mTaskArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 653
    .local v1, "size":I
    const-string v3, "ct"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "will cancel net task, size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 655
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mTaskArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    .line 656
    .local v2, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    if-eqz v2, :cond_0

    .line 657
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->cancelTask()V

    .line 654
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    .end local v2    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mTaskArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 661
    return-void
.end method

.method public clearAll()V
    .locals 6

    .prologue
    .line 688
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 689
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 690
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 691
    .local v3, "sKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 692
    .local v0, "bmpHead":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->safeReleaseBitmap(Landroid/graphics/Bitmap;)V

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 694
    .end local v0    # "bmpHead":Landroid/graphics/Bitmap;
    .end local v3    # "sKey":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 695
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 698
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 699
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    .line 700
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 701
    .restart local v3    # "sKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeBitmap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 702
    .local v1, "bmpPic":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultFailed:Landroid/graphics/Bitmap;

    if-eq v1, v5, :cond_1

    .line 703
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->safeReleaseBitmap(Landroid/graphics/Bitmap;)V

    .line 699
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 706
    .end local v1    # "bmpPic":Landroid/graphics/Bitmap;
    .end local v3    # "sKey":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 707
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeBitmap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 710
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapStatusId2Comments:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 714
    return-void
.end method

.method public clearAnimationFlag(I)V
    .locals 1
    .param p1, "nPos"    # I

    .prologue
    .line 761
    if-gez p1, :cond_0

    .line 762
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mAnimationFlag:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mAnimationFlag:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0
.end method

.method public clearCacheFriend(J)V
    .locals 3
    .param p1, "lUserId"    # J

    .prologue
    .line 672
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUserId2Friend:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    return-void
.end method

.method public clearCacheFriendAll()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUserId2Friend:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 676
    return-void
.end method

.method public clearCacheHead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sName"    # Ljava/lang/String;

    .prologue
    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "sKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 444
    .local v0, "bmpHead":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 448
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 450
    .local v1, "nPos":I
    if-ltz v1, :cond_1

    .line 451
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 456
    :cond_1
    return-void
.end method

.method public clearFriend()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUserId2Friend:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 719
    return-void
.end method

.method public clearTimeBitmap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sName"    # Ljava/lang/String;

    .prologue
    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "sKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeBitmap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 551
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 552
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultFailed:Landroid/graphics/Bitmap;

    if-eq v0, v3, :cond_0

    .line 553
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 556
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeBitmap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 558
    .local v1, "nPos":I
    if-ltz v1, :cond_1

    .line 559
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 564
    :cond_1
    return-void
.end method

.method public clearTimeStatusComments(J)V
    .locals 3
    .param p1, "lStatusId"    # J

    .prologue
    .line 636
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapStatusId2Comments:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    return-void
.end method

.method public clearUserHead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sName"    # Ljava/lang/String;

    .prologue
    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "sKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 363
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    return-void
.end method

.method public delNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V
    .locals 2
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    .prologue
    .line 646
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mTaskArr:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 647
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 648
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mTaskArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 650
    :cond_0
    return-void
.end method

.method public getAnimationFlag(I)Z
    .locals 1
    .param p1, "nPos"    # I

    .prologue
    .line 755
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mAnimationFlag:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public getCacheDataItem(J)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .locals 3
    .param p1, "lStatusId"    # J

    .prologue
    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapId2DataItem:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    return-object v0
.end method

.method public getCacheFriend(J)Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;
    .locals 3
    .param p1, "lUserId"    # J

    .prologue
    .line 669
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUserId2Friend:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;

    return-object v0
.end method

.method public getCacheHead(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sName"    # Ljava/lang/String;

    .prologue
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "sKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getCacheView(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 739
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mCurViewPos:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrViewCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 740
    const-string v1, "cache view overflow,will recreate !!!"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->cacheLayout(Landroid/content/Context;)V

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrViewCache:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mCurViewPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    .line 745
    .local v0, "view":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mCurViewPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mCurViewPos:I

    .line 747
    const-string v1, "abc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache view count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mCurViewPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-object v0
.end method

.method public getDefaultCmtUserBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultCmtUser:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0209d1

    invoke-static {v1, v2}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultCmtUser:Landroid/graphics/Bitmap;

    .line 239
    :cond_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultCmtUser:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-object v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getDefaultCmtUserBitmap error: %s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultHeadBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultHead:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0209e1

    invoke-static {v1, v2}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultHead:Landroid/graphics/Bitmap;

    .line 224
    :cond_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultHead:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getDefaultHeadBitmap error: %s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultTimeBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    :try_start_0
    sget-object v13, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefault:Landroid/graphics/Bitmap;

    if-nez v13, :cond_0

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02077a

    invoke-static {v13, v14}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "bmpFailedIcon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090414

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v12, v13

    .line 150
    .local v12, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090415

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v4, v13

    .line 152
    .local v4, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090416

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v5, v13

    .line 154
    .local v5, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090417

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v10, v13

    .line 157
    .local v10, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0757

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "sHint":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0901e0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 159
    .local v6, "leftHint":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0901e1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 160
    .local v11, "topHint":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0901e2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 162
    .local v9, "sizeHint":I
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v4, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 163
    .local v1, "bmpFull":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 164
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 165
    .local v7, "p":Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 166
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    const v13, -0xbbbbbc

    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 168
    int-to-float v13, v5

    int-to-float v14, v10

    invoke-virtual {v2, v0, v13, v14, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 170
    int-to-float v13, v9

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    const/4 v13, -0x1

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    int-to-float v13, v6

    int-to-float v14, v11

    invoke-virtual {v2, v8, v13, v14, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 173
    sput-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefault:Landroid/graphics/Bitmap;

    .line 175
    .end local v0    # "bmpFailedIcon":Landroid/graphics/Bitmap;
    .end local v1    # "bmpFull":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "height":I
    .end local v5    # "left":I
    .end local v6    # "leftHint":I
    .end local v7    # "p":Landroid/graphics/Paint;
    .end local v8    # "sHint":Ljava/lang/String;
    .end local v9    # "sizeHint":I
    .end local v10    # "top":I
    .end local v11    # "topHint":I
    .end local v12    # "width":I
    :cond_0
    sget-object v13, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefault:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v13

    .line 176
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "getDefaultTimeBitmap error: %s "

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public getDefaultTimeFailedBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 185
    :try_start_0
    sget-object v10, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultFailed:Landroid/graphics/Bitmap;

    if-nez v10, :cond_0

    .line 186
    const/4 v10, 0x0

    sput-object v10, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultFailed:Landroid/graphics/Bitmap;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0206df

    invoke-static {v10, v11}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    .local v0, "bmpFailedIcon":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090414

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v8, v10

    .line 191
    .local v8, "width":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090415

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    .line 193
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090418

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    .line 195
    .local v5, "left":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090419

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 198
    .local v7, "top":I
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    .local v1, "bmpFull":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 202
    .local v6, "p":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    const v10, -0xbbbbbc

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 204
    int-to-float v10, v5

    int-to-float v11, v7

    invoke-virtual {v2, v0, v10, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 206
    sput-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultFailed:Landroid/graphics/Bitmap;

    .line 208
    .end local v0    # "bmpFailedIcon":Landroid/graphics/Bitmap;
    .end local v1    # "bmpFull":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "height":I
    .end local v5    # "left":I
    .end local v6    # "p":Landroid/graphics/Paint;
    .end local v7    # "top":I
    .end local v8    # "width":I
    :cond_0
    sget-object v9, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mBitmapDefaultFailed:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-object v9

    .line 209
    :catch_0
    move-exception v3

    .line 210
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "getDefaultTimeFailedBitmap error: %s "

    new-array v11, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getStatusCacheData(J)Ljava/lang/Object;
    .locals 3
    .param p1, "lSID"    # J

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 277
    .local v0, "data":Ljava/lang/Object;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapSID2Status:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    return-object v0
.end method

.method public getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sName"    # Ljava/lang/String;

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "sKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 530
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public getTimeStatusComments(J)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    .locals 3
    .param p1, "lStatusId"    # J

    .prologue
    .line 632
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapStatusId2Comments:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    return-object v0
.end method

.method public getUserHead(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "sKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 307
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 308
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string/jumbo v2, "read head bitmap from local file,url=%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_1

    .line 318
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v2, "read head bitmap from local file,url=%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    :cond_1
    return-object v0
.end method

.method public getUserHeadAync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "sKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 334
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V

    .line 338
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V

    .line 342
    :cond_1
    return-object v0
.end method

.method public isFileLoading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "sKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrlName2NameFile:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 601
    const/4 v1, 0x0

    .line 603
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNetLoading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "sKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrlName2Name:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 573
    const/4 v1, 0x0

    .line 575
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isShieldUser(J)Z
    .locals 3
    .param p1, "lUserId"    # J

    .prologue
    .line 779
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mShieldSinUserIdArr:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 780
    .local v0, "objId":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 781
    const/4 v1, 0x0

    .line 783
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public putCacheDataItem(JLcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 3
    .param p1, "lStatusId"    # J
    .param p3, "dataItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapId2DataItem:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    return-void
.end method

.method public putCacheFriend(JLcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;)V
    .locals 3
    .param p1, "lUserId"    # J
    .param p3, "item"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUserId2Friend:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-void
.end method

.method public putCacheHead(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "bmpHead"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 382
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 383
    .local v4, "size":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->MAX_HEAD_CACHE:I

    if-le v4, v5, :cond_3

    .line 384
    const-string/jumbo v5, "will release head picture cache"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 385
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->RELEASE_HEAD_COUNT:I

    if-ge v1, v5, :cond_1

    .line 386
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 387
    .local v3, "sOldKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 388
    .local v0, "bmpOld":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 389
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 391
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "bmpOld":Landroid/graphics/Bitmap;
    .end local v3    # "sOldKey":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->RELEASE_HEAD_COUNT:I

    if-ge v1, v5, :cond_2

    .line 394
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 396
    :cond_2
    const-string v5, "after release head cache,count=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    .end local v1    # "i":I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "sKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 402
    .restart local v0    # "bmpOld":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 403
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    :goto_2
    return-void

    .line 406
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrHeadUrlName:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public putStatusCacheData(JLjava/lang/Object;)V
    .locals 7
    .param p1, "lSID"    # J
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0xa

    const/4 v6, 0x0

    .line 253
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrSID:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 254
    .local v2, "size":I
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x64

    if-le v3, v4, :cond_2

    .line 255
    const-string/jumbo v3, "will release time picture cache"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 257
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrSID:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 258
    .local v1, "lRemoveSID":Ljava/lang/Long;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapSID2Status:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "lRemoveSID":Ljava/lang/Long;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 261
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrSID:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_1
    const-string/jumbo v3, "release time picture cache end"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 265
    .end local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrSID:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapSID2Status:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string/jumbo v3, "put cache data sid=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public putTimeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v7, 0x14

    const/4 v8, 0x0

    .line 474
    if-nez p3, :cond_0

    .line 508
    :goto_0
    return-void

    .line 487
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "sKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 489
    .local v4, "size":I
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xc8

    if-le v5, v6, :cond_4

    .line 490
    const-string/jumbo v5, "will release Time picture"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 491
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_2

    .line 492
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 493
    .local v3, "sUrlToBeRemove":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeBitmap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 494
    .local v0, "bmpDel":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 495
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 497
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeBitmap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    .end local v0    # "bmpDel":Landroid/graphics/Bitmap;
    .end local v3    # "sUrlToBeRemove":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_3

    .line 500
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 502
    :cond_3
    const-string v5, "after release,count=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    .end local v1    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mArrUrlData:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2TimeBitmap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putTimeStatusComments(JLcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;)V
    .locals 3
    .param p1, "lStatusId"    # J
    .param p3, "item"    # Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapStatusId2Comments:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-void
.end method

.method public putUserHead(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bmpHead"    # Landroid/graphics/Bitmap;
    .param p2, "sUrl"    # Ljava/lang/String;
    .param p3, "sName"    # Ljava/lang/String;

    .prologue
    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "sKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 291
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putUserHeadSimple(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrl2HeadBitmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    return-void
.end method

.method public resetFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "sKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrlName2NameFile:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    return-void
.end method

.method public resetNetLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "sKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrlName2Name:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    return-void
.end method

.method public setAnimationFlag(I)V
    .locals 2
    .param p1, "nPos"    # I

    .prologue
    .line 758
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mAnimationFlag:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 759
    return-void
.end method

.method public setFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "sKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrlName2NameFile:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    return-void
.end method

.method public setNetLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "sKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mMapUrlName2Name:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    return-void
.end method

.method public updateSinaUserIds(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 770
    .local p1, "arrUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mShieldSinUserIdArr:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 771
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 772
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 773
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 774
    .local v1, "id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->mShieldSinUserIdArr:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    .end local v1    # "id":Ljava/lang/Long;
    :cond_0
    return-void
.end method
