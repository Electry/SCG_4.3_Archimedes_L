.class Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/PhotoView;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    .line 500
    return-void
.end method

.method public isHoldingDelete()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHoldingDown()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(II)V
    .locals 1
    .param p1, "velocity"    # I
    .param p2, "direction"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mEdgeView:Lcom/lenovo/scg/gallery3d/ui/EdgeView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/EdgeView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->onAbsorb(II)V

    .line 535
    return-void
.end method

.method public onPull(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "direction"    # I

    .prologue
    .line 514
    const-string v0, "PhotoView"

    const-string/jumbo v1, "onPull"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const v1, 0x7f0f089c

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->showToast(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)V

    .line 524
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mEdgeView:Lcom/lenovo/scg/gallery3d/ui/EdgeView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/EdgeView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->onPull(II)V

    .line 525
    return-void

    .line 519
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const v1, 0x7f0f089d

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->showToast(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)V

    goto :goto_0
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mEdgeView:Lcom/lenovo/scg/gallery3d/ui/EdgeView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/EdgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->onRelease()V

    .line 530
    return-void
.end method

.method public onStopPanorama()V
    .locals 4

    .prologue
    .line 541
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 542
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/16 v1, 0x72

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 543
    return-void
.end method
