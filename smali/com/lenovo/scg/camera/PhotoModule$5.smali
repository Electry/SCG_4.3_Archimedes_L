.class Lcom/lenovo/scg/camera/PhotoModule$5;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$5;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;Lcom/lenovo/scg/camera/Thumbnail;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "thumbnail"    # Lcom/lenovo/scg/camera/Thumbnail;

    .prologue
    .line 708
    const-string/jumbo v1, "panhui1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMediaSaved, uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", thumbnail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    if-nez p1, :cond_0

    .line 710
    const-string/jumbo v1, "onMediaSaved: uri = null"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 712
    :cond_0
    if-nez p2, :cond_1

    .line 713
    const-string/jumbo v1, "onMediaSaved: thumbnail=null"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 716
    :cond_1
    if-eqz p1, :cond_4

    .line 718
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$5;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v1, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/lenovo/scg/camera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 719
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$5;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v1, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v1, p1}, Lcom/lenovo/scg/camera/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 722
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$5;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/lenovo/scg/camera/PhotoUI;->updateThumbnailView(Lcom/lenovo/scg/camera/Thumbnail;)V

    .line 724
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$5;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 725
    .local v0, "pme":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->isInGaussBlur()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$5;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isBigWheelShowed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 726
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$5;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 727
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$5;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 739
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$5;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v1, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isCanWatchBack()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 742
    const-string v1, "GO_2_WATCH_BACK_PAGE"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 751
    .end local v0    # "pme":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
    :cond_4
    :goto_0
    return-void

    .line 746
    .restart local v0    # "pme":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$5;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v1, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1100

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
