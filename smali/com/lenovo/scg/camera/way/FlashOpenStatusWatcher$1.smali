.class Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher$1;
.super Landroid/os/Handler;
.source "FlashOpenStatusWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher$1;->this$0:Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 46
    :pswitch_0
    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraISP;->getFlashOpenStatus()Z

    move-result v0

    .line 47
    .local v0, "open":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher$1;->this$0:Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->setOpenState(Z)V

    .line 48
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher$1;->this$0:Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;

    # getter for: Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->access$000(Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
