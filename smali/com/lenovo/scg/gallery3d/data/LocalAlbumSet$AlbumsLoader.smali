.class Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$1;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v3, "pool_localalbumset_albumsloader"

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "wwf5"

    const-string v3, "AlbumsLoader start"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    # getter for: Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->access$000(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    # getter for: Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mType:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->access$100(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/data/BucketHelper;->loadBucketEntries(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;

    move-result-object v10

    .line 141
    .local v10, "entries":[Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v8, 0x0

    .line 170
    :goto_0
    return-object v8

    .line 143
    :cond_0
    const/4 v15, 0x0

    .line 146
    .local v15, "offset":I
    sget v1, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    # invokes: Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->findBucket([Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;I)I
    invoke-static {v10, v1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->access$200([Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;I)I

    move-result v13

    .line 147
    .local v13, "index":I
    const/4 v1, -0x1

    if-eq v13, v1, :cond_1

    .line 148
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    # invokes: Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V
    invoke-static {v10, v15, v13}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->access$300([Ljava/lang/Object;II)V

    move/from16 v15, v16

    .line 150
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_1
    sget v1, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    # invokes: Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->findBucket([Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;I)I
    invoke-static {v10, v1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->access$200([Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;I)I

    move-result v13

    .line 151
    const/4 v1, -0x1

    if-eq v13, v1, :cond_2

    .line 152
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    # invokes: Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V
    invoke-static {v10, v15, v13}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->access$300([Ljava/lang/Object;II)V

    move/from16 v15, v16

    .line 155
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v8, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    # getter for: Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->access$000(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    .line 157
    .local v2, "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    move-object v9, v10

    .local v9, "arr$":[Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v14, :cond_3

    aget-object v11, v9, v12

    .line 158
    .local v11, "entry":Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    # getter for: Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mType:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->access$100(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    iget v5, v11, Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v6, v11, Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    # invokes: Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;ILjava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->access$400(Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;ILjava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v7

    .line 167
    .local v7, "album":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 169
    .end local v7    # "album":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v11    # "entry":Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;
    :cond_3
    const-string/jumbo v1, "wwf5"

    const-string v3, "AlbumsLoader end"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
