.class Lcom/lenovo/scg/photos/AlbumActivity$10;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/photos/AlbumActivity;->checkScanning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/AlbumActivity;

.field final synthetic val$scanning:Z


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/AlbumActivity;Z)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/lenovo/scg/photos/AlbumActivity$10;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    iput-boolean p2, p0, Lcom/lenovo/scg/photos/AlbumActivity$10;->val$scanning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 666
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Puzzle_checkscanning_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$10;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    iget-boolean v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$10;->val$scanning:Z

    # invokes: Lcom/lenovo/scg/photos/AlbumActivity;->checkScanningFinished(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1400(Lcom/lenovo/scg/photos/AlbumActivity;Z)V

    .line 668
    return-void
.end method
