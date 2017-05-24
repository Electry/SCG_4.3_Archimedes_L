.class Lcom/lenovo/scg/camera/mode/StrobeMode$4;
.super Ljava/lang/Object;
.source "StrobeMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/StrobeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/StrobeMode;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$4;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 741
    const-string v0, "StrobeMode"

    const-string/jumbo v1, "onCancelClick"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$4;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->tips:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1600(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$4;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->tips:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1600(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 744
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$4;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->tips:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1602(Lcom/lenovo/scg/camera/mode/StrobeMode;Lcom/lenovo/scg/common/ui/RotateTips;)Lcom/lenovo/scg/common/ui/RotateTips;

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$4;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$800(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->reset()V

    .line 747
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$4;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$200(Lcom/lenovo/scg/camera/mode/StrobeMode;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 748
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$4;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    # invokes: Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$300(Lcom/lenovo/scg/camera/mode/StrobeMode;Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    .line 749
    return-void
.end method
