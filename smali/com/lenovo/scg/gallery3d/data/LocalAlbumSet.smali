.class public Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
        "Lcom/lenovo/scg/gallery3d/util/FutureListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final PATH_ALL:Lcom/lenovo/scg/gallery3d/data/Path;

.field public static final PATH_IMAGE:Lcom/lenovo/scg/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcom/lenovo/scg/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "LocalAlbumSet"

.field private static final THREAD_POOL_NAME_LOCALALBUMSET_ALBUMSLOADER:Ljava/lang/String; = "pool_localalbumset_albumsloader"

.field private static final mWatchUris:[Landroid/net/Uri;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private final mHandler:Landroid/os/Handler;

.field private mInitLoad:Z

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 46
    const-string v0, "/local/image"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 48
    const-string v0, "/local/video"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mWatchUris:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 78
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mInitLoad:Z

    .line 79
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->getTypeFromPath(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mType:I

    .line 82
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    .line 83
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f06a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mType:I

    return v0
.end method

.method static synthetic access$200([Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;I)I
    .locals 1
    .param p0, "x0"    # [Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->findBucket([Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300([Ljava/lang/Object;II)V
    .locals 0
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;ILjava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/DataManager;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;ILjava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method private static circularShiftRight([Ljava/lang/Object;II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    aget-object v1, p0, p2

    .line 253
    .local v1, "temp":Ljava/lang/Object;, "TT;"
    move v0, p2

    .local v0, "k":I
    :goto_0
    if-le v0, p1, :cond_0

    .line 254
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v0

    .line 253
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 256
    :cond_0
    aput-object v1, p0, p1

    .line 257
    return-void
.end method

.method private static findBucket([Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;I)I
    .locals 3
    .param p0, "entries"    # [Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;
    .param p1, "bucketId"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 122
    aget-object v2, p0, v0

    iget v2, v2, Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v2, p1, :cond_0

    .line 124
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 121
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getLocalAlbum(Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;ILjava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 14
    .param p1, "manager"    # Lcom/lenovo/scg/gallery3d/data/DataManager;
    .param p2, "type"    # I
    .param p3, "parent"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p4, "id"    # I
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v11, Lcom/lenovo/scg/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 176
    :try_start_0
    invoke-virtual/range {p3 .. p4}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    .line 177
    .local v2, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {p1, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->peekMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v10

    .line 178
    .local v10, "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-eqz v10, :cond_0

    check-cast v10, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .end local v10    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    monitor-exit v11

    move-object v1, v10

    .line 186
    :goto_0
    return-object v1

    .line 179
    .restart local v10    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 189
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    .end local v2    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v10    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 181
    .restart local v2    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    .restart local v10    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v11

    goto :goto_0

    .line 183
    :pswitch_2
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    const/4 v5, 0x0

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v11

    goto :goto_0

    .line 185
    :pswitch_3
    sget-object v9, Lcom/lenovo/scg/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 186
    .local v9, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;

    const/4 v3, 0x2

    new-array v12, v3, [Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v13, 0x0

    const/4 v5, 0x2

    sget-object v6, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object v3, p0

    move-object v4, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;ILjava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    aput-object v3, v12, v13

    const/4 v13, 0x1

    const/4 v5, 0x4

    sget-object v6, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object v3, p0

    move-object v4, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;ILjava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    aput-object v3, v12, v13

    move/from16 v0, p4

    invoke-direct {v1, v2, v9, v12, v0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getTypeFromPath(Lcom/lenovo/scg/gallery3d/data/Path;)I
    .locals 3
    .param p0, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "name":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v1

    return v1
.end method


# virtual methods
.method fakeChange()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->fakeChange()V

    .line 240
    return-void
.end method

.method public forceChange()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->fakeChange()V

    .line 245
    return-void
.end method

.method public getBucketEntry()[Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;
    .locals 3

    .prologue
    .line 260
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mType:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/BucketHelper;->loadBucketEntries(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isInitLoad()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mInitLoad:Z

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/lenovo/scg/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 235
    :goto_0
    monitor-exit p0

    return-void

    .line 225
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mIsLoading:Z

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$1;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()J
    .locals 5

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 205
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mIsLoading:Z

    .line 206
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$1;)V

    invoke-virtual {v2, v3, p0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 209
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 210
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 211
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 212
    .local v0, "album":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 203
    .end local v0    # "album":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 214
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mDataVersion:J

    .line 215
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mInitLoad:Z

    if-nez v2, :cond_3

    .line 216
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mInitLoad:Z

    .line 219
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2
.end method
