.class public Lcom/lenovo/scg/photos/AlbumActivity;
.super Landroid/app/Activity;
.source "AlbumActivity.java"


# static fields
.field private static final LOW_STORAGE_THRESHOLD:J = 0x200000L

.field public static final REPLACE_IMAGE:Ljava/lang/String; = "replace"

.field public static final SELECT_PHOTO_KEY:Ljava/lang/String; = "photos"

.field public static final SELECT_PHOTO_KEY_NOT_SHOW_START:Ljava/lang/String; = "not_show_start"

.field private static final TAG:Ljava/lang/String; = "GalleryPicker"

.field private static final THUMB_SIZE:I = 0x8e

.field public static denty:F

.field public static isAddOrDelete:Z


# instance fields
.field private PUZZLE_ACTION:Ljava/lang/String;

.field private allItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;",
            ">;"
        }
    .end annotation
.end field

.field volatile mAbort:Z

.field private mAlbumGrid:Landroid/widget/GridView;

.field private mAlbumList:Landroid/widget/ListView;

.field private mAlbumListAdapter:Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;

.field private mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

.field private mAlbumTitle:Landroid/widget/TextView;

.field private mBackBtn:Landroid/widget/ImageView;

.field mCellOutline:Landroid/graphics/drawable/Drawable;

.field mDbObserver:Landroid/database/ContentObserver;

.field mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

.field mHandler:Landroid/os/Handler;

.field private mIfBootGif:Z

.field private mIsFromGif:Z

.field private mLastSelectImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mMissingImageThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mScanning:Z

.field private mSelectCount:Landroid/widget/TextView;

.field private mSelectImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

.field mSortAscending:Z

.field mUnmounted:Z

.field mWorkerThread:Ljava/lang/Thread;

.field private share_center_title_layout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/lenovo/scg/photos/AlbumActivity;->denty:F

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/photos/AlbumActivity;->isAddOrDelete:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 128
    iput-boolean v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAbort:Z

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mHandler:Landroid/os/Handler;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;

    .line 177
    iput-boolean v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSortAscending:Z

    .line 183
    iput-boolean v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mIfBootGif:Z

    .line 189
    const-string v0, "com.android.gallery.action.PUZZLE"

    iput-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->PUZZLE_ACTION:Ljava/lang/String;

    .line 207
    iput-boolean v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mIsFromGif:Z

    return-void
.end method

.method private abortWorker()V
    .locals 4

    .prologue
    .line 536
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mWorkerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 537
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->instance()Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->cancelThreadDecoding(Ljava/lang/Thread;Landroid/content/ContentResolver;)V

    .line 539
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAbort:Z

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mWorkerThread:Ljava/lang/Thread;

    .line 549
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    :cond_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "GalleryPicker"

    const-string v2, "join interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/photos/AlbumActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/AlbumActivity;->onReceiveMediaBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/photos/AlbumActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/photos/AlbumActivity;->rebake(ZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/photos/AlbumActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/photos/AlbumActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->checkLowStorageFinished()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/photos/AlbumActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/AlbumActivity;->checkScanningFinished(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/photos/AlbumActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->workerRun()V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumListAdapter:Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/photos/AlbumActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->dissMissProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/views/SelectedPhotoView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/photos/AlbumActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mIsFromGif:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->PUZZLE_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/photos/AlbumActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->back()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/photos/AlbumActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/photos/AlbumActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/photos/AlbumActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/AlbumActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method private back()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 515
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumTitle:Landroid/widget/TextView;

    const v1, 0x7f0f0779

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 519
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->release()V

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->finish()V

    goto :goto_0
.end method

.method private checkBucketIds(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;>;"
    const/4 v11, 0x1

    .line 557
    iget-boolean v7, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mScanning:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mUnmounted:Z

    if-nez v7, :cond_1

    .line 558
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;->ALL:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v7, v8, v11, v9, v10}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;IILjava/lang/String;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v0

    .line 565
    .local v0, "allImages":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :goto_0
    iget-boolean v7, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAbort:Z

    if-eqz v7, :cond_2

    .line 566
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->close()V

    .line 599
    :cond_0
    return-void

    .line 562
    .end local v0    # "allImages":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeEmptyImageList()Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v0

    .restart local v0    # "allImages":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    goto :goto_0

    .line 570
    :cond_2
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v2

    .line 571
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->close()V

    .line 572
    iget-boolean v7, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAbort:Z

    if-nez v7, :cond_0

    .line 575
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 576
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 577
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 582
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {p0, v11, v5, v7}, Lcom/lenovo/scg/photos/AlbumActivity;->createImageList(ILjava/lang/String;Landroid/content/ContentResolver;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v6

    .line 584
    .local v6, "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    iget-boolean v7, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAbort:Z

    if-nez v7, :cond_0

    .line 587
    new-instance v4, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    const/4 v8, 0x5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, v8, v5, v7, v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;)V

    .line 589
    .local v4, "item":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v7, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/lenovo/scg/photos/AlbumActivity$8;

    invoke-direct {v8, p0}, Lcom/lenovo/scg/photos/AlbumActivity$8;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private checkLowStorage()V
    .locals 8

    .prologue
    .line 633
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->hasStorage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 634
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, "storageDirectory":Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 637
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 639
    .local v0, "remaining":J
    const-wide/32 v4, 0x200000

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 640
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/lenovo/scg/photos/AlbumActivity$9;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/photos/AlbumActivity$9;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 651
    .end local v0    # "remaining":J
    .end local v2    # "stat":Landroid/os/StatFs;
    .end local v3    # "storageDirectory":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkLowStorageFinished()V
    .locals 0

    .prologue
    .line 656
    return-void
.end method

.method private checkScanning()V
    .locals 4

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 661
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 662
    .local v1, "scanning":Z
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/lenovo/scg/photos/AlbumActivity$10;

    invoke-direct {v3, p0, v1}, Lcom/lenovo/scg/photos/AlbumActivity$10;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    return-void
.end method

.method private checkScanningFinished(Z)V
    .locals 0
    .param p1, "scanning"    # Z

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/AlbumActivity;->updateScanningDialog(Z)V

    .line 675
    return-void
.end method

.method private checkThumbBitmap(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;>;"
    const/16 v7, 0x8e

    .line 679
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    .line 680
    .local v3, "item":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-direct {p0, v7, v7, v4}, Lcom/lenovo/scg/photos/AlbumActivity;->makeMiniThumbBitmap(IILcom/lenovo/scg/gallery3d/boxcontrol/IImageList;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 683
    .local v0, "b":Landroid/graphics/Bitmap;
    const-string v4, "GalleryPicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-boolean v4, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAbort:Z

    if-eqz v4, :cond_1

    .line 686
    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 702
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "item":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    :cond_0
    return-void

    .line 692
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v3    # "item":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    :cond_1
    move-object v1, v3

    .line 693
    .local v1, "finalItem":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/lenovo/scg/photos/AlbumActivity$11;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/photos/AlbumActivity$11;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 700
    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->setThumbBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private createImageList(ILjava/lang/String;Landroid/content/ContentResolver;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .locals 3
    .param p1, "mediaTypes"    # I
    .param p2, "bucketId"    # Ljava/lang/String;
    .param p3, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 706
    sget-object v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;->ALL:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    const/4 v2, 0x2

    invoke-static {p3, v1, p1, v2, p2}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;IILjava/lang/String;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v0

    .line 709
    .local v0, "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    return-object v0
.end method

.method private dissMissProgressDialog()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 446
    :cond_0
    return-void
.end method

.method private init(Z)V
    .locals 8
    .param p1, "isReplaceImage"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 250
    if-eqz p1, :cond_0

    .line 251
    const v2, 0x7f1007cf

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_0
    const v2, 0x7f1007d0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectCount:Landroid/widget/TextView;

    .line 255
    const v2, 0x7f1007cb

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumTitle:Landroid/widget/TextView;

    .line 256
    iget-boolean v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mIsFromGif:Z

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectCount:Landroid/widget/TextView;

    const v5, 0x7f0f076f

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/photos/AlbumActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "not_show_start"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 267
    .local v0, "notShowStartBtn":Z
    const v2, 0x7f1007cc

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 268
    .local v1, "startImageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    new-instance v2, Lcom/lenovo/scg/photos/AlbumActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/scg/photos/AlbumActivity$3;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    const v2, 0x7f100133

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    .line 310
    const v2, 0x7f1007ca

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mBackBtn:Landroid/widget/ImageView;

    .line 311
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mBackBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/lenovo/scg/photos/AlbumActivity$4;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/photos/AlbumActivity$4;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v2, 0x7f1007cd

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumList:Landroid/widget/ListView;

    .line 319
    new-instance v2, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumListAdapter:Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;

    .line 320
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumListAdapter:Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    const v2, 0x7f1007ce

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumGrid:Landroid/widget/GridView;

    .line 322
    new-instance v2, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    .line 323
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->setAdapterView(Landroid/view/View;)V

    .line 324
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->setmIsReplaceImage(Z)V

    .line 325
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    iget-boolean v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mIsFromGif:Z

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->setFromGif(Z)V

    .line 326
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    iget-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->setmOnDeleteListener(Lcom/lenovo/scg/photos/views/SelectedPhotoView$OnDeleteListener;)V

    .line 328
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    new-instance v3, Lcom/lenovo/scg/photos/AlbumActivity$5;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/photos/AlbumActivity$5;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->setmOnDeleteListener(Lcom/lenovo/scg/photos/views/SelectedPhotoView$OnDeleteListener;)V

    .line 346
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    iget-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->notifyDataChange(Ljava/util/ArrayList;)V

    .line 347
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->setmSelectPhotoView(Lcom/lenovo/scg/photos/views/SelectedPhotoView;)V

    .line 348
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    new-instance v3, Lcom/lenovo/scg/photos/AlbumActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/lenovo/scg/photos/AlbumActivity$6;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;Z)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->setmOnPhotoSelectedChangeListener(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$OnPhotoSelectedChangeListener;)V

    .line 380
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumList:Landroid/widget/ListView;

    new-instance v3, Lcom/lenovo/scg/photos/AlbumActivity$7;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/photos/AlbumActivity$7;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 394
    return-void

    .line 261
    .end local v0    # "notShowStartBtn":Z
    .end local v1    # "startImageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectCount:Landroid/widget/TextView;

    const v5, 0x7f0f076e

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/photos/AlbumActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .restart local v0    # "notShowStartBtn":Z
    .restart local v1    # "startImageView":Landroid/widget/ImageView;
    :cond_2
    move v2, v4

    .line 268
    goto/16 :goto_1
.end method

.method private loadDrawableIfNeeded()V
    .locals 2

    .prologue
    .line 717
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 724
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 721
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f020894

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    .line 723
    const v1, 0x108001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mCellOutline:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private makeMiniThumbBitmap(IILcom/lenovo/scg/gallery3d/boxcontrol/IImageList;)Landroid/graphics/Bitmap;
    .locals 29
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "images"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .prologue
    .line 728
    invoke-interface/range {p3 .. p3}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v24

    .line 734
    .local v24, "count":I
    const/16 v27, 0x1

    .line 735
    .local v27, "padding":I
    move/from16 v10, p1

    .line 736
    .local v10, "imageWidth":I
    move/from16 v11, p2

    .line 737
    .local v11, "imageHeight":I
    const/16 v19, 0x0

    .line 738
    .local v19, "offsetWidth":I
    const/16 v20, 0x0

    .line 740
    .local v20, "offsetHeight":I
    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    .line 741
    .local v26, "p":Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 743
    .local v22, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 744
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 747
    .local v8, "m":Landroid/graphics/Matrix;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 748
    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 751
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/photos/AlbumActivity;->loadDrawableIfNeeded()V

    .line 754
    const/4 v3, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/photos/AlbumActivity;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/photos/AlbumActivity;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 758
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 759
    .local v7, "pdpaint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 760
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 761
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 763
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 764
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 766
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ge v0, v3, :cond_0

    .line 767
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/photos/AlbumActivity;->mAbort:Z

    if-eqz v3, :cond_1

    .line 768
    const/16 v22, 0x0

    .line 819
    .end local v22    # "b":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-object v22

    .line 771
    .restart local v22    # "b":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v9, 0x0

    .line 772
    .local v9, "temp":Landroid/graphics/Bitmap;
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v25

    .line 773
    .local v25, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    :goto_2
    const-string v3, "GalleryPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeMiniThumbBitmap, image = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    if-eqz v3, :cond_3

    move-object/from16 v3, v25

    .line 777
    check-cast v3, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->thumbBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 778
    .local v23, "bm":Landroid/graphics/Bitmap;
    if-nez v23, :cond_3

    .line 779
    const/16 v22, 0x0

    goto :goto_1

    .line 772
    .end local v23    # "bm":Landroid/graphics/Bitmap;
    .end local v25    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    :cond_2
    const/16 v25, 0x0

    goto :goto_2

    .line 784
    .restart local v25    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    :cond_3
    if-eqz v25, :cond_4

    .line 785
    invoke-interface/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 789
    :cond_4
    if-nez v9, :cond_5

    .line 790
    const/16 v22, 0x0

    goto :goto_1

    .line 794
    :cond_5
    const-string v3, "GalleryPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeMiniThumbBitmap, temp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    if-eqz v9, :cond_6

    .line 796
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 800
    :cond_6
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 802
    .local v12, "thumb":Landroid/graphics/Bitmap;
    new-instance v28, Landroid/graphics/Canvas;

    move-object/from16 v0, v28

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 803
    .local v28, "tempCanvas":Landroid/graphics/Canvas;
    if-eqz v9, :cond_7

    .line 804
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 809
    :cond_7
    const/16 v16, 0x1

    const/16 v18, 0x1

    move-object v13, v2

    move-object v14, v7

    move v15, v10

    move/from16 v17, v11

    invoke-static/range {v12 .. v21}, Lcom/lenovo/scg/photos/AlbumActivity;->placeImage(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIIII)V

    .line 812
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 814
    if-eqz v9, :cond_8

    .line 815
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 766
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0
.end method

.method private onReceiveMediaBroadcast(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 824
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 830
    invoke-direct {p0, v3, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->rebake(ZZ)V

    goto :goto_0

    .line 831
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 832
    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/photos/AlbumActivity;->rebake(ZZ)V

    goto :goto_0

    .line 833
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 834
    invoke-direct {p0, v2, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->rebake(ZZ)V

    goto :goto_0

    .line 835
    :cond_4
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    invoke-direct {p0, v3, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->rebake(ZZ)V

    goto :goto_0
.end method

.method private static placeImage(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIIII)V
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "imageWidth"    # I
    .param p4, "widthPadding"    # I
    .param p5, "imageHeight"    # I
    .param p6, "heightPadding"    # I
    .param p7, "offsetX"    # I
    .param p8, "offsetY"    # I
    .param p9, "pos"    # I

    .prologue
    .line 115
    div-int/lit8 v1, p9, 0x2

    .line 116
    .local v1, "row":I
    mul-int/lit8 v4, v1, 0x2

    sub-int v0, p9, v4

    .line 118
    .local v0, "col":I
    add-int v4, p3, p4

    mul-int/2addr v4, v0

    sub-int v2, v4, p7

    .line 119
    .local v2, "xPos":I
    add-int v4, p5, p6

    mul-int/2addr v4, v1

    sub-int v3, v4, p8

    .line 121
    .local v3, "yPos":I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, p0, v4, v5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    return-void
.end method

.method private rebake(ZZ)V
    .locals 1
    .param p1, "unmounted"    # Z
    .param p2, "scanning"    # Z

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mUnmounted:Z

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mScanning:Z

    if-ne p2, v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->abortWorker()V

    .line 846
    iput-boolean p1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mUnmounted:Z

    .line 847
    iput-boolean p2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mScanning:Z

    .line 848
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mScanning:Z

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/AlbumActivity;->updateScanningDialog(Z)V

    .line 849
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mUnmounted:Z

    if-nez v0, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->startWorker()V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 433
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0f078f

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/photos/AlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 439
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 440
    return-void
.end method

.method private startWorker()V
    .locals 2

    .prologue
    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAbort:Z

    .line 857
    new-instance v0, Lcom/lenovo/scg/photos/AlbumActivity$12;

    const-string v1, "Puzle_GalleryPicker Worker"

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/photos/AlbumActivity$12;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mWorkerThread:Ljava/lang/Thread;

    .line 864
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->instance()Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->allowThreadDecoding(Ljava/lang/Thread;)V

    .line 865
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 866
    return-void
.end method

.method private unloadDrawable()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 869
    iput-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    .line 870
    iput-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mCellOutline:Landroid/graphics/drawable/Drawable;

    .line 871
    return-void
.end method

.method private workerRun()V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 885
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->checkScanning()V

    .line 886
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAbort:Z

    if-eqz v0, :cond_2

    .line 913
    :cond_1
    :goto_0
    return-void

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/photos/AlbumActivity;->checkBucketIds(Ljava/util/ArrayList;)V

    .line 894
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAbort:Z

    if-nez v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/photos/AlbumActivity;->checkThumbBitmap(Ljava/util/ArrayList;)V

    .line 898
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAbort:Z

    if-nez v0, :cond_1

    .line 901
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->checkLowStorage()V

    .line 902
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/scg/photos/AlbumActivity$13;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/photos/AlbumActivity$13;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public getErrorBitmap(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .prologue
    .line 194
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->isImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mMissingImageThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020895

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mMissingImageThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mMissingImageThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 204
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 398
    if-ne p2, v1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->finish()V

    .line 400
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 401
    iput-boolean v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mIfBootGif:Z

    .line 402
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 403
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->back()V

    .line 512
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 212
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->requestWindowFeature(I)Z

    .line 213
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 214
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 215
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/lenovo/scg/photos/AlbumActivity;->denty:F

    .line 216
    const v2, 0x7f040130

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->setContentView(I)V

    .line 217
    const v2, 0x7f1007c9

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->share_center_title_layout:Landroid/widget/RelativeLayout;

    .line 218
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "photos"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mLastSelectImages:Ljava/util/ArrayList;

    .line 220
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "replace"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 222
    .local v1, "isReplaceImage":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromGif"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mIsFromGif:Z

    .line 223
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mLastSelectImages:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mLastSelectImages:Ljava/util/ArrayList;

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mLastSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    new-instance v2, Lcom/lenovo/scg/photos/AlbumActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/photos/AlbumActivity$1;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;)V

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v2, Lcom/lenovo/scg/photos/AlbumActivity$2;

    iget-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/photos/AlbumActivity$2;-><init>(Lcom/lenovo/scg/photos/AlbumActivity;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mDbObserver:Landroid/database/ContentObserver;

    .line 243
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->ensureOSXCompatibleFolder()V

    .line 244
    invoke-direct {p0, v1}, Lcom/lenovo/scg/photos/AlbumActivity;->init(Z)V

    .line 245
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->showProgressDialog()V

    .line 246
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 247
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 462
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    invoke-virtual {v2}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->destroy()V

    .line 464
    iput-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 467
    iput-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;

    .line 468
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mLastSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 469
    iput-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mLastSelectImages:Ljava/util/ArrayList;

    .line 470
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 471
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    .line 472
    .local v1, "item":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 473
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 474
    iput-object v3, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 477
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 478
    iput-object v3, p0, Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;

    .line 480
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->release()V

    .line 481
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 482
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 505
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 506
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->exitPictureQualityMode()V

    .line 507
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 486
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 487
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->enterPictureQualityMode()V

    .line 488
    iget-boolean v4, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mIfBootGif:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumActivity;->share_center_title_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v3, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    invoke-virtual {v4}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 491
    .local v2, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 493
    .end local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.GIFPREVIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, "gifIntent":Landroid/content/Intent;
    const-string/jumbo v4, "pathList"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 496
    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/lenovo/scg/photos/AlbumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 497
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mIfBootGif:Z

    .line 499
    .end local v0    # "gifIntent":Landroid/content/Intent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->requestFocus()Z

    .line 500
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->requestFocus()Z

    .line 501
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 407
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 410
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 411
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/photos/AlbumActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    iput-boolean v5, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mUnmounted:Z

    .line 427
    iput-boolean v5, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mScanning:Z

    .line 428
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->startWorker()V

    .line 430
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 450
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 452
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->abortWorker()V

    .line 453
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/AlbumActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 456
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumActivity;->unloadDrawable()V

    .line 458
    return-void
.end method

.method public updateScanningDialog(Z)V
    .locals 0
    .param p1, "scanning"    # Z

    .prologue
    .line 533
    return-void
.end method
