.class Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;
.super Ljava/lang/Thread;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/views/TiledImageRenderer;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/photos/views/TiledImageRenderer;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/photos/views/TiledImageRenderer;Lcom/lenovo/scg/photos/views/TiledImageRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer;
    .param p2, "x1"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$1;

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;-><init>(Lcom/lenovo/scg/photos/views/TiledImageRenderer;)V

    return-void
.end method

.method private waitForTile()Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 749
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    # getter for: Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->access$700(Lcom/lenovo/scg/photos/views/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 751
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    # getter for: Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;
    invoke-static {v1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->access$800(Lcom/lenovo/scg/photos/views/TiledImageRenderer;)Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 752
    .local v0, "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    .line 753
    monitor-exit v2

    return-object v0

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    # getter for: Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->access$700(Lcom/lenovo/scg/photos/views/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 757
    .end local v0    # "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public finishAndWait()V
    .locals 3

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;->interrupt()V

    .line 742
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "TiledImageRenderer"

    const-string v2, "Interrupted while waiting for TileDecoder thread to finish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 763
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 764
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;->waitForTile()Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 765
    .local v0, "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    # invokes: Lcom/lenovo/scg/photos/views/TiledImageRenderer;->decodeTile(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)Z
    invoke-static {v1, v0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->access$900(Lcom/lenovo/scg/photos/views/TiledImageRenderer;Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    # invokes: Lcom/lenovo/scg/photos/views/TiledImageRenderer;->queueForUpload(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->access$1000(Lcom/lenovo/scg/photos/views/TiledImageRenderer;Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 769
    .end local v0    # "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    :catch_0
    move-exception v1

    .line 770
    :cond_1
    return-void
.end method
