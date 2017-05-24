.class Lcom/lenovo/scg/camera/mode/PanoramaMode$1;
.super Landroid/os/Handler;
.source "PanoramaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/PanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/PanoramaMode;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 156
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 158
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 159
    .local v1, "data":[B
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_1

    .line 160
    .local v0, "bRestartPreview":Z
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    # invokes: Lcom/lenovo/scg/camera/mode/PanoramaMode;->handleFrameData([BZ)V
    invoke-static {v2, v1, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$000(Lcom/lenovo/scg/camera/mode/PanoramaMode;[BZ)V

    goto :goto_0

    .end local v0    # "bRestartPreview":Z
    :cond_1
    move v0, v3

    .line 159
    goto :goto_1

    .line 163
    .end local v1    # "data":[B
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    const/4 v3, -0x1

    # invokes: Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$100(Lcom/lenovo/scg/camera/mode/PanoramaMode;I)V

    goto :goto_0

    .line 166
    :sswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    # invokes: Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$100(Lcom/lenovo/scg/camera/mode/PanoramaMode;I)V

    goto :goto_0

    .line 169
    :sswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$200(Lcom/lenovo/scg/camera/mode/PanoramaMode;)Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$300(Lcom/lenovo/scg/camera/mode/PanoramaMode;)Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->CAPTUREING:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    if-ne v2, v3, :cond_0

    .line 170
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$200(Lcom/lenovo/scg/camera/mode/PanoramaMode;)Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsLeft2Right:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$400(Lcom/lenovo/scg/camera/mode/PanoramaMode;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    :goto_2
    invoke-virtual {v3, v4, v5, v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->changeImageViewSize(III)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_2

    .line 177
    :sswitch_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$500(Lcom/lenovo/scg/camera/mode/PanoramaMode;)Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoModule;->cancelAutoFocus()V

    .line 178
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$500(Lcom/lenovo/scg/camera/mode/PanoramaMode;)Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x2710 -> :sswitch_3
    .end sparse-switch
.end method
