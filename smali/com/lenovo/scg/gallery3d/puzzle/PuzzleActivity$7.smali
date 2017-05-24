.class Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$7;
.super Ljava/lang/Object;
.source "PuzzleActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->saveMosaicImage()V
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
    .line 682
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/net/Uri;)V
    .locals 2
    .param p1, "result"    # Landroid/net/Uri;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$200(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 686
    return-void
.end method
