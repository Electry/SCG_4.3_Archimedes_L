.class Lcom/lenovo/scg/camera/PhotoModule$15;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoModule;->switchCamera()V
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
    .line 1992
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1996
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 1997
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoModule;->enableSceneChange()V

    .line 1999
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$3700(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2000
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2039
    :goto_0
    return-void

    .line 2003
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->onOpenNewCamera(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$4200(Lcom/lenovo/scg/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)V

    .line 2004
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->syncFlashStatus(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$4300(Lcom/lenovo/scg/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)V

    .line 2007
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$4400(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2008
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;
    invoke-static {v4}, Lcom/lenovo/scg/camera/PhotoModule;->access$4500(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/mode/CaptureListener;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$3700(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v5

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setPara(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/CaptureListener;Landroid/content/SharedPreferences;)V

    .line 2009
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->switch2Camera(I)V

    .line 2011
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget v2, v2, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$4400(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2012
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$3700(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_setting_takepicture_type_key"

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 2015
    invoke-static {v7}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 2018
    :cond_2
    if-eqz v0, :cond_3

    .line 2019
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2020
    .local v1, "s":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_3

    .line 2021
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setPreviewSize(II)V

    .line 2025
    .end local v1    # "s":Landroid/hardware/Camera$Size;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    invoke-virtual {v2, v7, v6}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 2027
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v2, v2, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->loadMeteringLogicEnable()V

    .line 2033
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->onCameraSwitched(I)V
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$4600(Lcom/lenovo/scg/camera/PhotoModule;I)V

    .line 2037
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$15;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoModule;->setFocusParametersOnly()V

    goto/16 :goto_0
.end method
