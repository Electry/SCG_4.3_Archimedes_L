.class public Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;
.super Landroid/os/Handler;
.source "EffectMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/EffectMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/EffectMode;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/EffectMode;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 622
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 662
    :goto_0
    return-void

    .line 624
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 625
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "EFFECT_RGBA_DATA"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 626
    .local v10, "rgbaData":[B
    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAVE_EFFECT_FINISHED rgbaData = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :try_start_0
    new-instance v9, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {v9}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 629
    .local v9, "para":Lcom/lenovo/scg/camera/MediaSavePara;
    iput-object v10, v9, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 630
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$300(Lcom/lenovo/scg/camera/mode/EffectMode;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, v9, Lcom/lenovo/scg/camera/MediaSavePara;->location:Landroid/location/Location;

    .line 631
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->getSavePicType()Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    move-result-object v0

    iput-object v0, v9, Lcom/lenovo/scg/camera/MediaSavePara;->type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    .line 632
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$400(Lcom/lenovo/scg/camera/mode/EffectMode;)I

    move-result v0

    iput v0, v9, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    .line 633
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$500(Lcom/lenovo/scg/camera/mode/EffectMode;)I

    move-result v0

    iput v0, v9, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    .line 635
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$600(Lcom/lenovo/scg/camera/mode/EffectMode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mExifOrientation:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$700(Lcom/lenovo/scg/camera/mode/EffectMode;)I

    move-result v0

    iput v0, v9, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$600(Lcom/lenovo/scg/camera/mode/EffectMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->isSupportSCFCaptureHasOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    const/4 v0, 0x0

    iput v0, v9, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$200(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    .line 642
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$200(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    .end local v9    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    :goto_1
    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAVE_EFFECT_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 643
    :catch_0
    move-exception v8

    .line 644
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 649
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "rgbaData":[B
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    move-object v2, v0

    check-cast v2, [B

    .line 650
    .local v2, "yuvData":[B
    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCALE_YUVDATA_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$000(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 653
    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCALE_YUVDATA_FINISHED  mEffectUI != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$000(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectHandle:Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$800(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$400(Lcom/lenovo/scg/camera/mode/EffectMode;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$500(Lcom/lenovo/scg/camera/mode/EffectMode;)I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mOrientation:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$900(Lcom/lenovo/scg/camera/mode/EffectMode;)I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$600(Lcom/lenovo/scg/camera/mode/EffectMode;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->startEffectPicTaken(Landroid/os/Handler;[BIIIZ)V

    goto/16 :goto_0

    .line 656
    :cond_2
    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCALE_YUVDATA_FINISHED  mEffectUI == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
