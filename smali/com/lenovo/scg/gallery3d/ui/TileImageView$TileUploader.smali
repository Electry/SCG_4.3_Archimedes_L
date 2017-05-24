.class Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)V
    .locals 2

    .prologue
    .line 601
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView;Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "renderRequested"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 609
    if-eqz p2, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v4

    .line 610
    :cond_1
    const/4 v1, 0x1

    .line 611
    .local v1, "quota":I
    const/4 v2, 0x0

    .line 612
    .local v2, "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :cond_2
    :goto_1
    if-lez v1, :cond_3

    .line 613
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    monitor-enter v6

    .line 614
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$300(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v2

    .line 615
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    if-eqz v2, :cond_3

    iget v3, v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    if-eq v3, v7, :cond_5

    .line 627
    :cond_3
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 628
    :cond_4
    if-nez v2, :cond_0

    move v4, v5

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 619
    :cond_5
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 620
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->isLoaded()Z

    move-result v0

    .line 621
    .local v0, "hasBeenLoaded":Z
    iget v3, v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    if-ne v3, v7, :cond_7

    move v3, v4

    :goto_2
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 622
    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->updateContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 623
    if-nez v0, :cond_6

    invoke-virtual {v2, p1, v5, v5}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 624
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 625
    goto :goto_1

    :cond_7
    move v3, v5

    .line 621
    goto :goto_2
.end method
