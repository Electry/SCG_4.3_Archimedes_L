.class Lcom/lenovo/scg/camera/ContinuousShotTool$1;
.super Landroid/os/Handler;
.source "ContinuousShotTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ContinuousShotTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ContinuousShotTool;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ContinuousShotTool;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool$1;->this$0:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 569
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 577
    :goto_0
    return-void

    .line 571
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool$1;->this$0:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/lenovo/scg/camera/ContinuousShotTool;->mCaptureStartTime:J
    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->access$002(Lcom/lenovo/scg/camera/ContinuousShotTool;J)J

    .line 572
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool$1;->this$0:Lcom/lenovo/scg/camera/ContinuousShotTool;

    # getter for: Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->access$100(Lcom/lenovo/scg/camera/ContinuousShotTool;)Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->takeMorePicture()V

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
