.class public Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "LocalTimeAlbumSet.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;
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

.field private static final TAG:Ljava/lang/String; = "LocalTimeAlbumSet"

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
    .line 48
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->PATH_ALL:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 50
    const-string v0, "/local/image"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->PATH_IMAGE:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 52
    const-string v0, "/local/video"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->PATH_VIDEO:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mWatchUris:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 77
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 78
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mHandler:Landroid/os/Handler;

    .line 80
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->getTypeFromPath(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mType:I

    .line 81
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    .line 82
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f06a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mName:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$1;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->setUpdateListener(Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings$UpdateListener;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;)Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mType:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/DataManager;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p4, "x4"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->getLocalAlbum(Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method private getLocalAlbum(Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 8
    .param p1, "manager"    # Lcom/lenovo/scg/gallery3d/data/DataManager;
    .param p2, "type"    # I
    .param p3, "parent"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p4, "timeEntry"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    .prologue
    .line 233
    sget-object v4, Lcom/lenovo/scg/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 234
    :try_start_0
    iget v3, p4, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->timeId:I

    invoke-virtual {p3, v3}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    .line 235
    .local v2, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {p1, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->peekMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v1

    .line 236
    .local v1, "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-eqz v1, :cond_0

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .end local v1    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    monitor-exit v4

    .line 245
    :goto_0
    return-object v1

    .line 237
    .restart local v1    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 248
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    .end local v1    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .end local v2    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 239
    .restart local v1    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .restart local v2    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;

    .end local v1    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, p4, v5}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;Z)V

    monitor-exit v4

    goto :goto_0

    .line 241
    .restart local v1    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :pswitch_2
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;

    .end local v1    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, p4, v5}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;Z)V

    monitor-exit v4

    goto :goto_0

    .line 244
    .restart local v1    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :pswitch_3
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 245
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;

    .end local v1    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v5, 0x0

    const/4 v6, 0x2

    sget-object v7, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->PATH_IMAGE:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-direct {p0, p1, v6, v7, p4}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->getLocalAlbum(Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    sget-object v7, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->PATH_VIDEO:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-direct {p0, p1, v6, v7, p4}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->getLocalAlbum(Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v6

    aput-object v6, v3, v5

    iget v5, p4, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->timeId:I

    invoke-direct {v1, v2, v0, v3, v5}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getTypeFromPath(Lcom/lenovo/scg/gallery3d/data/Path;)I
    .locals 3
    .param p0, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "name":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v1

    return v1
.end method


# virtual methods
.method fakeChange()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->fakeChange()V

    .line 298
    return-void
.end method

.method public forceChange()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->fakeChange()V

    .line 302
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTimeEntryCount(Ljava/util/ArrayList;Z)V
    .locals 24
    .param p2, "isImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "timeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 159
    .local v18, "start":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 170
    .local v4, "mResolver":Landroid/content/ContentResolver;
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    .line 171
    .local v6, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v17, "case "

    aput-object v17, v6, v9

    .line 172
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v15, v9, :cond_1

    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v20, v6, v17

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, " when datetaken > "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v0, v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v17

    .line 174
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v0, v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v9, v20, v22

    if-lez v9, :cond_0

    .line 175
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v20, v6, v17

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, " and datetaken <= "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v0, v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v17

    .line 177
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v20, v6, v17

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, " then "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iget v9, v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->timeId:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v17

    .line 172
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 180
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v20, v6, v17

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, " end as timegroup"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v17

    .line 181
    const/4 v9, 0x1

    const-string v17, "count(*)"

    aput-object v17, v6, v9

    .line 187
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getFolderFilterSelection()Ljava/lang/String;

    move-result-object v14

    .line 188
    .local v14, "folderFilterSelection":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getFolderFilterSelection()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v17, " ) group by ("

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "selection":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v17, " timegroup"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 194
    const-string v9, "LocalTimeAlbumSet"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getTimeEntryCount, selection:"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v8, 0x0

    .line 208
    .local v8, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v9, "wwf5"

    const-string v17, "mResolver.query1"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-eqz p2, :cond_4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 210
    .local v5, "uri":Landroid/net/Uri;
    :goto_2
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 211
    .local v11, "cursor":Landroid/database/Cursor;
    const-string/jumbo v9, "wwf5"

    const-string v17, "mResolver.query2"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 213
    const/4 v9, 0x1

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 214
    .local v10, "count":I
    const/4 v9, 0x0

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 215
    .local v16, "name":I
    const/4 v15, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v15, v9, :cond_2

    .line 216
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iget v9, v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->timeId:I

    move/from16 v0, v16

    if-ne v9, v0, :cond_6

    .line 217
    if-eqz p2, :cond_5

    .line 218
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iput v10, v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->imageCount:I

    goto :goto_3

    .line 191
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "count":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v16    # "name":I
    :cond_3
    const-string v7, "1 ) group by ("

    .restart local v7    # "selection":Ljava/lang/String;
    goto/16 :goto_1

    .line 209
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 220
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v10    # "count":I
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "name":I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iput v10, v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->videoCount:I

    goto :goto_3

    .line 215
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 227
    .end local v10    # "count":I
    .end local v16    # "name":I
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 229
    .local v12, "end":J
    const-string/jumbo v9, "wwf5"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getTimeEntryCount = "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sub-long v20, v12, v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public getTimeEntryImageCount(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "timeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->getTimeEntryCount(Ljava/util/ArrayList;Z)V

    .line 151
    return-void
.end method

.method public getTimeEntryVideoCount(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "timeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->getTimeEntryCount(Ljava/util/ArrayList;Z)V

    .line 155
    return-void
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mIsLoading:Z
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
    .line 282
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mLoadTask:Lcom/lenovo/scg/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 293
    :goto_0
    monitor-exit p0

    return-void

    .line 283
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mIsLoading:Z

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$2;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()J
    .locals 5

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "wwf5"

    const-string/jumbo v3, "reload start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mLoadTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mLoadTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 265
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mIsLoading:Z

    .line 266
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$1;)V

    invoke-virtual {v2, v3, p0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mLoadTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 269
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 270
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 271
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    .line 272
    .local v0, "album":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 262
    .end local v0    # "album":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 274
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mDataVersion:J

    .line 276
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v2, "wwf5"

    const-string/jumbo v3, "reload end"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2
.end method
