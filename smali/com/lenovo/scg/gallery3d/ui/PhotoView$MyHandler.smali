.class Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;
.super Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "root"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .line 614
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    .line 615
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 619
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 716
    new-instance v3, Ljava/lang/AssertionError;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(I)V

    throw v3

    .line 621
    :sswitch_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->cancelScale()V

    .line 622
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 623
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v3, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1002(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 627
    :sswitch_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchFocus()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V

    goto :goto_0

    .line 633
    :sswitch_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->captureAnimationDone(I)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)V

    goto :goto_0

    .line 640
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "BrushPath"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 641
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/Path;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "BrushPath"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v8

    invoke-interface {v6, v3, v7, v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onDeleteBrush(Lcom/lenovo/scg/gallery3d/data/Path;ILcom/lenovo/scg/gallery3d/data/Path;)V

    .line 655
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 656
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 657
    .local v0, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v3

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v0, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 659
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v3

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v6

    sub-int/2addr v3, v6

    add-int/lit8 v1, v3, 0x1

    .line 660
    .local v1, "numberOfPictures":I
    if-ne v1, v10, :cond_2

    .line 661
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v3

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v6

    invoke-interface {v3, v6}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v3

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v6

    invoke-interface {v3, v6}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 662
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 665
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-gt v1, v4, :cond_4

    move v3, v4

    :goto_2
    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->showUndoBar(Z)V
    invoke-static {v6, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)V

    goto/16 :goto_0

    .line 643
    .end local v0    # "m":Landroid/os/Message;
    .end local v1    # "numberOfPictures":I
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/Path;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v3, v7}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onDeleteImage(Lcom/lenovo/scg/gallery3d/data/Path;I)V

    goto :goto_1

    .restart local v0    # "m":Landroid/os/Message;
    .restart local v1    # "numberOfPictures":I
    :cond_4
    move v3, v5

    .line 665
    goto :goto_2

    .line 669
    .end local v0    # "m":Landroid/os/Message;
    .end local v1    # "numberOfPictures":I
    :sswitch_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 670
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/4 v4, -0x5

    # &= operator for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$372(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    .line 671
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->snapback()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V

    goto/16 :goto_0

    .line 676
    :sswitch_5
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v3, v10}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)V

    goto/16 :goto_0

    .line 680
    :sswitch_6
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/16 v4, 0x8

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)V

    .line 681
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 682
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;->onFilmModeChange(Z)V

    goto/16 :goto_0

    .line 688
    :sswitch_7
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsInResetToFullAnim:Z
    invoke-static {v3, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1902(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z

    goto/16 :goto_0

    .line 694
    :sswitch_8
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->startZoomInAnimation()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V

    goto/16 :goto_0

    .line 700
    :sswitch_9
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 701
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 702
    .local v2, "playMode":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->move(II)V

    .line 703
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v3

    const/16 v4, 0x71

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 704
    .restart local v0    # "m":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 705
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v3

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 710
    .end local v0    # "m":Landroid/os/Message;
    .end local v2    # "playMode":I
    :sswitch_a
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama:Z
    invoke-static {v3, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2102(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z

    .line 711
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->resetToFullViewAnimation()V

    goto/16 :goto_0

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x6f -> :sswitch_7
        0x70 -> :sswitch_8
        0x71 -> :sswitch_9
        0x72 -> :sswitch_a
    .end sparse-switch
.end method
