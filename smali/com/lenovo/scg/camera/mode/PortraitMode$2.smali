.class Lcom/lenovo/scg/camera/mode/PortraitMode$2;
.super Ljava/lang/Object;
.source "PortraitMode.java"

# interfaces
.implements Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/PortraitMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/PortraitMode;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 394
    const-string v0, "PortraitMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFailed, e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$000(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/PortraitMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 397
    return-void
.end method

.method public handleStart()V
    .locals 2

    .prologue
    .line 374
    const-string v0, "PortraitMode"

    const-string v1, "handleStart."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method public bridge synthetic handleSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 370
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/PortraitMode$2;->handleSuccess([B)V

    return-void
.end method

.method public handleSuccess([B)V
    .locals 4
    .param p1, "resultData"    # [B

    .prologue
    .line 379
    const-string v2, "PortraitMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSuccess, result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v0, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 382
    .local v0, "para":Lcom/lenovo/scg/camera/MediaSavePara;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mIsOneShot:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$100(Lcom/lenovo/scg/camera/mode/PortraitMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mSaveOrignData:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$500(Lcom/lenovo/scg/camera/mode/PortraitMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    sget-object v1, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->YUV:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    iput-object v1, v0, Lcom/lenovo/scg/camera/MediaSavePara;->type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    .line 385
    :cond_0
    iput-object p1, v0, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 386
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$000(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    .line 387
    const/4 p1, 0x0

    .line 389
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$000(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/PortraitMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 390
    return-void

    .line 379
    .end local v0    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
