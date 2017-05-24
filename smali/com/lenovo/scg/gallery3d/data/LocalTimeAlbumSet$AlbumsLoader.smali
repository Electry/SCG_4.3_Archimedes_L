.class Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSet.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;
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
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 10
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
    const/4 v9, 0x0

    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    const-string/jumbo v8, "pool_localalbumset_albumsloader"

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v7, "wwf5"

    const-string v8, "AlbumsLoader start"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x0

    .line 145
    :goto_0
    return-object v1

    .line 125
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    # getter for: Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->access$100(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    .line 127
    .local v2, "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->getInstance()Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->getTimeEntry()Ljava/util/ArrayList;

    move-result-object v5

    .line 128
    .local v5, "timeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 129
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iput v9, v7, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->imageCount:I

    .line 130
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iput v9, v7, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->videoCount:I

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    :cond_1
    const-string/jumbo v7, "wwf5"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "timeEntries.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    invoke-virtual {v7, v5}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->getTimeEntryImageCount(Ljava/util/ArrayList;)V

    .line 134
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    invoke-virtual {v7, v5}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->getTimeEntryVideoCount(Ljava/util/ArrayList;)V

    .line 135
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    .line 136
    .local v6, "timeEntry":Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;
    iget v7, v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->imageCount:I

    if-gtz v7, :cond_3

    iget v7, v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->videoCount:I

    if-lez v7, :cond_2

    .line 139
    :cond_3
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    # getter for: Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mType:I
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->access$200(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;)I

    move-result v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$AlbumsLoader;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    iget-object v9, v9, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    # invokes: Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->getLocalAlbum(Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v7, v2, v8, v9, v6}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->access$300(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;Lcom/lenovo/scg/gallery3d/data/DataManager;ILcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    .line 140
    .local v0, "album":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    iget v7, v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->imageCount:I

    iget v8, v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->videoCount:I

    invoke-virtual {v0, v7, v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->setMediaItemCount(II)V

    .line 141
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 143
    .end local v0    # "album":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v6    # "timeEntry":Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;
    :cond_4
    const-string/jumbo v7, "wwf5"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "albums.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string/jumbo v7, "wwf5"

    const-string v8, "AlbumsLoader end"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
