.class public Lcom/lenovo/scg/gallery3d/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/StitchingChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/DataManager$1;,
        Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;,
        Lcom/lenovo/scg/gallery3d/data/DataManager$DeleteListener;,
        Lcom/lenovo/scg/gallery3d/data/DataManager$DateTakenComparator;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_PICTURE:Ljava/lang/String; = "com.lenovo.scg.action.DELETE_PICTURE"

.field public static final INCLUDE_ALL:I = 0x3

.field public static final INCLUDE_IMAGE:I = 0x1

.field public static final INCLUDE_LOCAL_ALL_ONLY:I = 0x7

.field public static final INCLUDE_LOCAL_IMAGE_ONLY:I = 0x5

.field public static final INCLUDE_LOCAL_ONLY:I = 0x4

.field public static final INCLUDE_LOCAL_VIDEO_ONLY:I = 0x6

.field public static final INCLUDE_VIDEO:I = 0x2

.field public static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "DataManager"

.field private static final TOP_IMAGE_SET_PATH:Ljava/lang/String; = "/combo/{/local/image,/picasa/image}"

.field public static final TOP_LOCAL_FILE_SET_PATH:Ljava/lang/String; = "/local/all"

.field private static final TOP_LOCAL_IMAGE_SET_PATH:Ljava/lang/String; = "/local/image"

.field public static final TOP_LOCAL_LANDSCAPE_PATH:Ljava/lang/String; = "/cluster/{/combo/{/local/all}}/landscape"

.field public static final TOP_LOCAL_LANDSCAPE_SET_PATH:Ljava/lang/String; = "/cluster/{/combo/{/local/all}}/landscape"

.field public static final TOP_LOCAL_PORTRAIT_SET_PATH:Ljava/lang/String; = "/cluster/{/combo/{/local/all}}/face_group"

.field private static final TOP_LOCAL_SET_PATH:Ljava/lang/String; = "/local/all"

.field public static final TOP_LOCAL_TIME_ALL:Ljava/lang/String; = "/local/time"

.field public static final TOP_LOCAL_TIME_SET_PATH:Ljava/lang/String; = "/cluster/{/combo/{/local/all}}/time"

.field private static final TOP_LOCAL_VIDEO_SET_PATH:Ljava/lang/String; = "/local/video"

.field private static final TOP_SET_PATH:Ljava/lang/String; = "/combo/{/local/all,/picasa/all}"

.field private static final TOP_VIDEO_SET_PATH:Ljava/lang/String; = "/combo/{/local/video,/picasa/video}"

.field public static final sDateTakenComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveCount:I

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field private mDeleteListener:Lcom/lenovo/scg/gallery3d/data/DataManager$DeleteListener;

.field private mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/gallery3d/data/MediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    .line 117
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/DataManager$DateTakenComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/data/DataManager$DateTakenComparator;-><init>(Lcom/lenovo/scg/gallery3d/data/DataManager$1;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 2
    .param p1, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mActiveCount:I

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    .line 152
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    .line 154
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/data/DataManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 77
    .local v0, "app":Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addSource(Lcom/lenovo/scg/gallery3d/data/MediaSource;)V
    .locals 2
    .param p1, "source"    # Lcom/lenovo/scg/gallery3d/data/MediaSource;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaSource;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public broadcastLocalDeletion()V
    .locals 3

    .prologue
    .line 378
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 380
    .local v1, "manager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lenovo.scg.action.DELETE_PICTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 382
    return-void
.end method

.method public declared-synchronized delete(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mDeleteListener:Lcom/lenovo/scg/gallery3d/data/DataManager$DeleteListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mDeleteListener:Lcom/lenovo/scg/gallery3d/data/DataManager$DeleteListener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager$DeleteListener;->onDelete(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 316
    if-nez p1, :cond_0

    move-object v1, v3

    .line 321
    :goto_0
    return-object v1

    .line 317
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/MediaSource;

    .line 318
    .local v2, "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/gallery3d/data/MediaSource;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    .line 319
    .local v1, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v2    # "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    :cond_2
    move-object v1, v3

    .line 321
    goto :goto_0
.end method

.method public getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 3
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSource;

    .line 326
    .local v0, "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/data/MediaSource;->getDefaultSetOf(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .locals 9
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    const/4 v4, 0x0

    .line 215
    sget-object v5, Lcom/lenovo/scg/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 216
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/Path;->getObject()Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    .line 217
    .local v0, "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    monitor-exit v5

    .line 231
    .end local v0    # "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :goto_0
    return-object v0

    .line 218
    .restart local v0    # "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/MediaSource;

    .line 219
    .local v2, "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    if-nez v2, :cond_1

    .line 220
    const-string v6, "DataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot find media source for path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    goto :goto_0

    .line 224
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/data/MediaSource;->createMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v1

    .line 225
    .local v1, "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-nez v1, :cond_2

    .line 226
    const-string v6, "DataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot create media object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :cond_2
    :try_start_2
    monitor-exit v5

    move-object v0, v1

    goto :goto_0

    .line 229
    .end local v1    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :catch_0
    move-exception v3

    .line 230
    .local v3, "t":Ljava/lang/Throwable;
    const-string v6, "DataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception in creating media object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 233
    .end local v0    # "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .end local v2    # "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public getMediaObject(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSet(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getMediaSetsFromString(Ljava/lang/String;)[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 5
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "seq":[Ljava/lang/String;
    array-length v1, v2

    .line 251
    .local v1, "n":I
    new-array v3, v1, [Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 252
    .local v3, "sets":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 253
    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-object v3
.end method

.method public getMediaType(Lcom/lenovo/scg/gallery3d/data/Path;)I
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    return v0
.end method

.method public getPanoramaSupport(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "callback"    # Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getPanoramaSupport(Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 294
    return-void
.end method

.method public getSupportedOperations(Lcom/lenovo/scg/gallery3d/data/Path;)I
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    return v0
.end method

.method public getTopSetPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "typeBits"    # I

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 193
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 181
    :pswitch_1
    const-string v0, "/combo/{/local/image,/picasa/image}"

    .line 191
    :goto_0
    return-object v0

    .line 183
    :pswitch_2
    const-string v0, "/combo/{/local/video,/picasa/video}"

    goto :goto_0

    .line 185
    :pswitch_3
    const-string v0, "/combo/{/local/all,/picasa/all}"

    goto :goto_0

    .line 187
    :pswitch_4
    const-string v0, "/local/image"

    goto :goto_0

    .line 189
    :pswitch_5
    const-string v0, "/local/video"

    goto :goto_0

    .line 191
    :pswitch_6
    const-string v0, "/local/all"

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTotalTargetCacheSize()J
    .locals 6

    .prologue
    .line 341
    const-wide/16 v2, 0x0

    .line 342
    .local v2, "sum":J
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaSource;

    .line 343
    .local v1, "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSource;->getTotalTargetCacheSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 344
    goto :goto_0

    .line 345
    .end local v1    # "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    :cond_0
    return-wide v2
.end method

.method public getTotalUsedCacheSize()J
    .locals 6

    .prologue
    .line 331
    const-wide/16 v2, 0x0

    .line 332
    .local v2, "sum":J
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaSource;

    .line 333
    .local v1, "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSource;->getTotalUsedCacheSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 334
    goto :goto_0

    .line 335
    .end local v1    # "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    :cond_0
    return-wide v2
.end method

.method public declared-synchronized initializeSourceMap()V
    .locals 5

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 175
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    :try_start_1
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/LocalSource;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/data/LocalSource;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->addSource(Lcom/lenovo/scg/gallery3d/data/MediaSource;)V

    .line 161
    new-instance v2, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->addSource(Lcom/lenovo/scg/gallery3d/data/MediaSource;)V

    .line 162
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/ComboSource;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/data/ComboSource;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->addSource(Lcom/lenovo/scg/gallery3d/data/MediaSource;)V

    .line 163
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/ClusterSource;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/data/ClusterSource;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->addSource(Lcom/lenovo/scg/gallery3d/data/MediaSource;)V

    .line 164
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/FilterSource;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/data/FilterSource;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->addSource(Lcom/lenovo/scg/gallery3d/data/MediaSource;)V

    .line 165
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/SecureSource;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/data/SecureSource;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->addSource(Lcom/lenovo/scg/gallery3d/data/MediaSource;)V

    .line 166
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/UriSource;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/data/UriSource;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->addSource(Lcom/lenovo/scg/gallery3d/data/MediaSource;)V

    .line 167
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/SnailSource;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/data/SnailSource;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->addSource(Lcom/lenovo/scg/gallery3d/data/MediaSource;)V

    .line 169
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mActiveCount:I

    if-lez v2, :cond_0

    .line 170
    const-string/jumbo v2, "wanmf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaSource source : mSourceMap.values()--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mActiveCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaSource;

    .line 172
    .local v1, "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSource;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;I)V
    .locals 11
    .param p2, "consumer"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;
    .param p3, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 268
    .local v5, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 269
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 270
    .local v6, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "prefix":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 272
    .local v1, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;"
    if-nez v1, :cond_0

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .restart local v1    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    new-instance v9, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;

    add-int v10, v2, p3

    invoke-direct {v9, v6, v10}, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;"
    .end local v6    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 281
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 282
    .restart local v7    # "prefix":Ljava/lang/String;
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/data/MediaSource;

    .line 283
    .local v8, "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v8, v9, p2}, Lcom/lenovo/scg/gallery3d/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;)V

    goto :goto_1

    .line 285
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;>;"
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v8    # "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    :cond_2
    return-void
.end method

.method public onStitchingProgress(Landroid/net/Uri;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "progress"    # I

    .prologue
    .line 423
    return-void
.end method

.method public onStitchingQueued(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 407
    return-void
.end method

.method public onStitchingResult(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 411
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    .line 412
    .local v1, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    .line 414
    .local v0, "mediaObject":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->clearCachedPanoramaSupport()V

    .line 418
    .end local v0    # "mediaObject":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 370
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mActiveCount:I

    if-nez v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaSource;

    .line 372
    .local v1, "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSource;->pause()V

    goto :goto_0

    .line 375
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    :cond_0
    return-void
.end method

.method public peekMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/Path;->getObject()Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifier"    # Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "broker":Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 351
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;

    move-object v1, v0

    .line 352
    if-nez v1, :cond_0

    .line 353
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;-><init>(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .end local v1    # "broker":Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;
    .local v2, "broker":Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 355
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 357
    .end local v2    # "broker":Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;
    .restart local v1    # "broker":Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    invoke-virtual {v1, p2}, Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;->registerNotifier(Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;)V

    .line 359
    return-void

    .line 357
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1    # "broker":Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;
    .restart local v2    # "broker":Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "broker":Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;
    .restart local v1    # "broker":Lcom/lenovo/scg/gallery3d/data/DataManager$NotifyBroker;
    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 362
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mActiveCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 363
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaSource;

    .line 364
    .local v1, "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSource;->resume()V

    goto :goto_0

    .line 367
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "source":Lcom/lenovo/scg/gallery3d/data/MediaSource;
    :cond_0
    return-void
.end method

.method public rotate(Lcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "degrees"    # I

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->rotate(I)V

    .line 305
    return-void
.end method

.method public declared-synchronized setDeleteListener(Lcom/lenovo/scg/gallery3d/data/DataManager$DeleteListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/data/DataManager$DeleteListener;

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/DataManager;->mDeleteListener:Lcom/lenovo/scg/gallery3d/data/DataManager$DeleteListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
