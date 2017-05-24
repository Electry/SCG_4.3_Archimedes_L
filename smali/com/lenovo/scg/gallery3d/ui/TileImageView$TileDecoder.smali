.class Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mNotifier:Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)V
    .locals 1

    .prologue
    .line 803
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;->mNotifier:Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView;Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 817
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 818
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;->mNotifier:Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 819
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    monitor-enter v2

    .line 822
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$800(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    .line 823
    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 824
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 826
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    if-eqz v0, :cond_0

    .line 828
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->decodeTile(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->queueForUpload(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 826
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 830
    .end local v0    # "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method
