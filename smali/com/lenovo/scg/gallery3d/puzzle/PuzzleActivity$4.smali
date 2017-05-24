.class Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$4;
.super Ljava/lang/Thread;
.source "PuzzleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->onClick(Landroid/view/View;)V
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
    .line 542
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 546
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Puzzle_to_template_puzzle_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    new-instance v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$400(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$500(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    # setter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$302(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;)Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    .line 557
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$300(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->setmPuzzleModifyListener(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;)V

    .line 558
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$200(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 559
    return-void
.end method
