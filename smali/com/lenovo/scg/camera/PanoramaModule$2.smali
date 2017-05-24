.class Lcom/lenovo/scg/camera/PanoramaModule$2;
.super Landroid/os/Handler;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PanoramaModule;->init(Lcom/lenovo/scg/camera/CameraActivity;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PanoramaModule;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 361
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 397
    :goto_0
    return-void

    .line 363
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$900(Lcom/lenovo/scg/camera/PanoramaModule;)V

    .line 364
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1000(Lcom/lenovo/scg/camera/PanoramaModule;Landroid/graphics/Bitmap;)V

    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->saveHighResMosaic()V

    goto :goto_0

    .line 368
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$900(Lcom/lenovo/scg/camera/PanoramaModule;)V

    .line 369
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mPaused:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$300(Lcom/lenovo/scg/camera/PanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1100(Lcom/lenovo/scg/camera/PanoramaModule;)V

    .line 380
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1600(Lcom/lenovo/scg/camera/PanoramaModule;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mRotateDialog:Lcom/lenovo/scg/camera/RotateDialogController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1500(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mDialogTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1200(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1300(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mDialogOkString:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1400(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lenovo/scg/camera/PanoramaModule$2$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/PanoramaModule$2$1;-><init>(Lcom/lenovo/scg/camera/PanoramaModule$2;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 383
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$900(Lcom/lenovo/scg/camera/PanoramaModule;)V

    .line 384
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1100(Lcom/lenovo/scg/camera/PanoramaModule;)V

    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1600(Lcom/lenovo/scg/camera/PanoramaModule;)V

    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$100(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 391
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->configMosaicPreview(II)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1700(Lcom/lenovo/scg/camera/PanoramaModule;II)V

    goto :goto_0

    .line 394
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$2;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1100(Lcom/lenovo/scg/camera/PanoramaModule;)V

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
