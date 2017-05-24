.class Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;
.super Ljava/lang/Object;
.source "RemoveMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 542
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    new-instance v1, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    iget-object v2, v2, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$900(Lcom/lenovo/scg/camera/mode/RemoveMode;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    iget-object v3, v3, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$1000(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    iget-object v4, v4, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$1000(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    move-result-object v4

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    # setter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mCancelRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$802(Lcom/lenovo/scg/camera/mode/RemoveMode;Lcom/lenovo/scg/common/ui/RotateTips;)Lcom/lenovo/scg/common/ui/RotateTips;

    .line 543
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mCancelRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$800(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    iget-object v1, v1, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$900(Lcom/lenovo/scg/camera/mode/RemoveMode;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f01ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    iget-object v3, v3, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$1000(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getOrientation()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;II)V

    .line 544
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->reset()V

    .line 545
    return-void
.end method
