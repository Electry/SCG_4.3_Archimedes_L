.class Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$5;
.super Lcom/lenovo/scg/gallery3d/ui/SlotView$SimpleListener;
.source "CameraBrowsePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public lockOrientation()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$1600(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 677
    return-void
.end method

.method public onDown(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 651
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$1300(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V

    .line 652
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onLongTap(I)V

    .line 667
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 661
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onSingleTapUp(I)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$1500(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V

    .line 662
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 656
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$1400(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Z)V

    .line 657
    return-void
.end method

.method public onUpdateBar(I)V
    .locals 1
    .param p1, "curCount"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onUpdateBar(I)V

    .line 672
    return-void
.end method

.method public unlockOrientation()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$1600(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 682
    return-void
.end method
