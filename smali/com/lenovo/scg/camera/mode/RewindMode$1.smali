.class Lcom/lenovo/scg/camera/mode/RewindMode$1;
.super Landroid/os/Handler;
.source "RewindMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/RewindMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/RewindMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/RewindMode;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$1;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 539
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 541
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$1;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/PhotoModule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 545
    :cond_0
    const-string v0, "REwindMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "main thread handle msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 548
    :pswitch_0
    const-string v0, "REwindMode"

    const-string v1, "MSG_SHOW_PREVIEW "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$1;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # invokes: Lcom/lenovo/scg/camera/mode/RewindMode;->updateFaceRect()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$200(Lcom/lenovo/scg/camera/mode/RewindMode;)V

    .line 550
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$1;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    # invokes: Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$300(Lcom/lenovo/scg/camera/mode/RewindMode;Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    goto :goto_0

    .line 554
    :pswitch_1
    const-string v0, "REwindMode"

    const-string v1, "MSG_ON_ATTACH_END "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$1;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # invokes: Lcom/lenovo/scg/camera/mode/RewindMode;->attachEnd()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$400(Lcom/lenovo/scg/camera/mode/RewindMode;)V

    goto :goto_0

    .line 559
    :pswitch_2
    const-string v0, "REwindMode"

    const-string v1, "MSG_ON_SWAP_END "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$1;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # invokes: Lcom/lenovo/scg/camera/mode/RewindMode;->hideProgress()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$500(Lcom/lenovo/scg/camera/mode/RewindMode;)V

    .line 561
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$1;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    # invokes: Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$300(Lcom/lenovo/scg/camera/mode/RewindMode;Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    goto :goto_0

    .line 565
    :pswitch_3
    const-string v0, "REwindMode"

    const-string v1, "MSG_ON_SAVE_END "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$1;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving Failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "initialize() = 0x%08x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$1;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    # invokes: Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$300(Lcom/lenovo/scg/camera/mode/RewindMode;Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    goto/16 :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
