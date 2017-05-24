.class Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$2;
.super Ljava/lang/Thread;
.source "PuzzleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Puzzle_select_puzzle_mode_thread2"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$000(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    move-result-object v1

    # invokes: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->selectMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$100(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;)V

    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$200(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    return-void
.end method
