.class public final Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;
.implements Lcom/lenovo/scg/camera/TimeOutProtect$OnTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 2614
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2615
    iput-object p2, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 2616
    return-void
.end method

.method private onPictureTakenDone()V
    .locals 6

    .prologue
    .line 2898
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v2, v2, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 2900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2901
    .local v0, "now":J
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$6300(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v4

    sub-long v4, v0, v4

    iput-wide v4, v2, Lcom/lenovo/scg/camera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 2902
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v4, v4, Lcom/lenovo/scg/camera/PhotoModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const-wide/16 v4, 0x0

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v2, v4, v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$6302(Lcom/lenovo/scg/camera/PhotoModule;J)J

    .line 2906
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v2, v2, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onPictrueTakenDone()V

    .line 2909
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$6500(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2910
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$6500(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->rotationBigWheelView()V

    .line 2912
    :cond_0
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 12
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2652
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "will call onPictureTaken,function="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v8, v8, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2653
    if-nez p1, :cond_0

    .line 2654
    const-string v7, "CAM_PhotoModule"

    const-string/jumbo v8, "onPictureTaken, jpegData == null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    .line 2659
    .local v1, "currentMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    const-string v7, "CAM_PhotoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "kbg374, onPictureTaken, current mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v7, :cond_1

    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v7, :cond_1

    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v7, :cond_1

    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v7, :cond_1

    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v7, :cond_1

    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v7, :cond_1

    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v7, :cond_1

    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v7, :cond_5

    .line 2662
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/TimeOutProtect;->getInstance()Lcom/lenovo/scg/camera/TimeOutProtect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/TimeOutProtect;->cancelTimer()V

    .line 2672
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v2

    .line 2673
    .local v2, "fu":Lcom/lenovo/scg/camera/function/FunctionUI;
    if-eqz v2, :cond_3

    .line 2674
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUI;->onCaptureEnd()V

    .line 2677
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->recordOnPictureTaken()V

    .line 2679
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 2681
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x1

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mContinuousPicReturn:Z
    invoke-static {v7, v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$5502(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    .line 2682
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mRequestStopContinuous:Z
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$5600(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2684
    const-string v7, "PhotoModule.onPictureTaken will call doStopContinuous"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2685
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->doStopContinuous()V
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$1900(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 2688
    :cond_4
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$000(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2689
    const-string v7, "mPaused = true, onPictureTaken will return"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2884
    :goto_1
    return-void

    .line 2663
    .end local v2    # "fu":Lcom/lenovo/scg/camera/function/FunctionUI;
    :cond_5
    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v7, :cond_6

    .line 2664
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$5400(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2665
    invoke-static {}, Lcom/lenovo/scg/camera/TimeOutProtect;->getInstance()Lcom/lenovo/scg/camera/TimeOutProtect;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v8, v8, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getOnPictureTakenTimeOutTimer()J

    move-result-wide v8

    invoke-virtual {v7, p0, v8, v9}, Lcom/lenovo/scg/camera/TimeOutProtect;->resetTimer(Lcom/lenovo/scg/camera/TimeOutProtect$OnTimeOutListener;J)V

    goto :goto_0

    .line 2667
    :cond_6
    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REMOVE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v7, :cond_2

    .line 2668
    invoke-static {}, Lcom/lenovo/scg/camera/TimeOutProtect;->getInstance()Lcom/lenovo/scg/camera/TimeOutProtect;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v8, v8, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getOnPictureTakenTimeOutTimer()J

    move-result-wide v8

    invoke-virtual {v7, p0, v8, v9}, Lcom/lenovo/scg/camera/TimeOutProtect;->resetTimer(Lcom/lenovo/scg/camera/TimeOutProtect$OnTimeOutListener;J)V

    goto :goto_0

    .line 2693
    .restart local v2    # "fu":Lcom/lenovo/scg/camera/function/FunctionUI;
    :cond_7
    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v7, :cond_8

    if-eqz p1, :cond_8

    .line 2694
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-static {p1}, Lcom/lenovo/scg/camera/Exif;->getRealExif([B)Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    move-result-object v8

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    invoke-static {v7, v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$5702(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    .line 2698
    :cond_8
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v7, :cond_10

    .line 2700
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v7, p1, v8}, Lcom/lenovo/scg/camera/mode/ModeManager;->onPictureTaken([BLandroid/location/Location;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2703
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2705
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x0

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mIsFocus:Z
    invoke-static {v7, v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$5802(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    .line 2706
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onPictrueTakenDone()V

    .line 2707
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B
    invoke-static {v7, p1}, Lcom/lenovo/scg/camera/PhotoModule;->access$5902(Lcom/lenovo/scg/camera/PhotoModule;[B)[B

    .line 2708
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-boolean v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mQuickCapture:Z

    if-nez v7, :cond_9

    .line 2709
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/lenovo/scg/camera/PhotoUI;->showPostCaptureAlert([B)V

    .line 2713
    :goto_2
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x0

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStarted:Z
    invoke-static {v7, v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$6002(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    .line 2715
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEnable(Z)V

    goto/16 :goto_1

    .line 2711
    :cond_9
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/PhotoModule;->onCaptureDone()V

    goto :goto_2

    .line 2720
    :cond_a
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isTakePictureFinish()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2721
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x0

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStarted:Z
    invoke-static {v7, v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$6002(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    .line 2722
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->onPictureTakenDone()V

    .line 2723
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 2724
    const-string/jumbo v7, "onPictureTaken finish"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2729
    :goto_3
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/PhotoModule;->enableSceneChange()V

    .line 2731
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v4

    .line 2732
    .local v4, "mode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isSupportZSD()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v7

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v7, v8, :cond_b

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v7

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v7, v8, :cond_c

    .line 2734
    :cond_b
    const-string/jumbo v7, "will call setupPreview"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2735
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$2000(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 2738
    :cond_c
    const-string/jumbo v7, "mode handle onPictureTaken finish, will return"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2726
    .end local v4    # "mode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    :cond_d
    const-string/jumbo v7, "onPictureTaken not finish"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_3

    .line 2741
    :cond_e
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStarted:Z
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$6000(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 2742
    const-string v7, "mCaptureStarted == false, will return"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2743
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/PhotoModule;->enableSceneChange()V

    goto/16 :goto_1

    .line 2746
    :cond_f
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$6100(Lcom/lenovo/scg/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2747
    .local v5, "newMsg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$6100(Lcom/lenovo/scg/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0xa

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2750
    .end local v5    # "newMsg":Landroid/os/Message;
    :cond_10
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x0

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStarted:Z
    invoke-static {v7, v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$6002(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    .line 2753
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/PhotoUI;->showOrHideWhiteView(Z)V

    .line 2755
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mSceneMode:Ljava/lang/String;
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$6200(Lcom/lenovo/scg/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "hdr"

    if-ne v7, v8, :cond_11

    .line 2757
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2760
    :cond_11
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v7, v8, v9}, Lcom/lenovo/scg/camera/PhotoModule;->access$6302(Lcom/lenovo/scg/camera/PhotoModule;J)J

    .line 2764
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$4900(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_14

    .line 2765
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$4900(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v10}, Lcom/lenovo/scg/camera/PhotoModule;->access$4700(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lcom/lenovo/scg/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 2766
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$6300(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v10}, Lcom/lenovo/scg/camera/PhotoModule;->access$4900(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lcom/lenovo/scg/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 2771
    :goto_4
    const-string v7, "CAM_PhotoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v10, v9, Lcom/lenovo/scg/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    sget-boolean v7, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-boolean v7, v7, Lcom/lenovo/scg/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v7, :cond_12

    .line 2778
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2779
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v7, v7, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v7, Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraScreenNail;->animateSlide()V

    .line 2780
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xd

    invoke-static {}, Lcom/lenovo/scg/camera/CaptureAnimManager;->getAnimationDuration()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2784
    :cond_12
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v7

    if-nez v7, :cond_16

    if-eqz p1, :cond_16

    .line 2785
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    .line 2786
    .local v0, "cm":Lcom/lenovo/scg/camera/mode/CaptureMode;
    if-eqz v0, :cond_15

    .line 2787
    new-instance v6, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {v6}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 2788
    .local v6, "para":Lcom/lenovo/scg/camera/MediaSavePara;
    iput-object p1, v6, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 2789
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iput-object v7, v6, Lcom/lenovo/scg/camera/MediaSavePara;->location:Landroid/location/Location;

    .line 2790
    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/lenovo/scg/camera/MediaSavePara;->needCreateName:Z

    .line 2791
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getSavePicType()Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    move-result-object v7

    iput-object v7, v6, Lcom/lenovo/scg/camera/MediaSavePara;->type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    .line 2793
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v3

    .line 2794
    .local v3, "isSettingTrim11":Z
    const-string v7, "NormalMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSavePicNeedTrim11\uff0c value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    iput-boolean v3, v6, Lcom/lenovo/scg/camera/MediaSavePara;->trim11:Z

    .line 2796
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getSavePicNeedMirror()Z

    move-result v7

    iput-boolean v7, v6, Lcom/lenovo/scg/camera/MediaSavePara;->mirror:Z

    .line 2797
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isNeedOrientation()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2798
    const/4 v7, 0x0

    iput v7, v6, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    .line 2800
    :cond_13
    const-string v7, "cm != null ,will call mediaSave"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2802
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v7, v6}, Lcom/lenovo/scg/camera/PhotoModule;->mediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    .line 2824
    .end local v0    # "cm":Lcom/lenovo/scg/camera/mode/CaptureMode;
    .end local v3    # "isSettingTrim11":Z
    .end local v6    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    :goto_5
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2825
    sget-boolean v7, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    if-eqz v7, :cond_1c

    .line 2828
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-boolean v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mExCameraIdSupported:Z

    if-nez v7, :cond_18

    .line 2830
    const-string/jumbo v7, "will call setupPreview"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2831
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$2000(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 2874
    :goto_6
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->onCameraTakePic()V

    .line 2879
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->onPictureTakenDone()V

    .line 2882
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/PhotoModule;->enableSceneChange()V

    goto/16 :goto_1

    .line 2768
    :cond_14
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mRawPictureCallbackTime:J
    invoke-static {v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$5000(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v10}, Lcom/lenovo/scg/camera/PhotoModule;->access$4700(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lcom/lenovo/scg/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 2769
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$6300(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mRawPictureCallbackTime:J
    invoke-static {v10}, Lcom/lenovo/scg/camera/PhotoModule;->access$5000(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lcom/lenovo/scg/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_4

    .line 2804
    .restart local v0    # "cm":Lcom/lenovo/scg/camera/mode/CaptureMode;
    :cond_15
    const-string v7, "CAM_PhotoModule"

    const-string v8, "cm == null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    new-instance v6, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {v6}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 2806
    .restart local v6    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    iput-object p1, v6, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 2807
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iput-object v7, v6, Lcom/lenovo/scg/camera/MediaSavePara;->location:Landroid/location/Location;

    .line 2808
    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/lenovo/scg/camera/MediaSavePara;->needCreateName:Z

    .line 2810
    const-string v7, "cm != null ,will call mediaSave"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2811
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v7, v6}, Lcom/lenovo/scg/camera/PhotoModule;->mediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    goto :goto_5

    .line 2816
    .end local v0    # "cm":Lcom/lenovo/scg/camera/mode/CaptureMode;
    .end local v6    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    :cond_16
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B
    invoke-static {v7, p1}, Lcom/lenovo/scg/camera/PhotoModule;->access$5902(Lcom/lenovo/scg/camera/PhotoModule;[B)[B

    .line 2817
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-boolean v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mQuickCapture:Z

    if-nez v7, :cond_17

    .line 2818
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/lenovo/scg/camera/PhotoUI;->showPostCaptureAlert([B)V

    goto/16 :goto_5

    .line 2820
    :cond_17
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/PhotoModule;->onCaptureDone()V

    goto/16 :goto_5

    .line 2833
    :cond_18
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v4

    .line 2834
    .restart local v4    # "mode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    if-eqz v4, :cond_19

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isSupportZSD()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 2836
    :cond_19
    const-string/jumbo v7, "will call setupPreview"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2837
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$2000(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto/16 :goto_6

    .line 2846
    :cond_1a
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mSnapshotOnIdle:Z
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$6400(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 2853
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 2858
    :cond_1b
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$2000(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto/16 :goto_6

    .line 2867
    .end local v4    # "mode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    :cond_1c
    const-string/jumbo v7, "will send message setup_preview"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2868
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v7, v7, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 2871
    :cond_1d
    const-string v7, "isImageCaptureIntent == true,will not setup preview"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public onTimeOutFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2621
    const-string v0, "CAM_PhotoModule"

    const-string v1, "kbg374, onTimeOutFinish------------->"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$000(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2623
    const-string v0, "CAM_PhotoModule"

    const-string v1, "kbg374, mPaused == true, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_0
    :goto_0
    return-void

    .line 2626
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 2627
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->recordOnPictureTaken()V

    .line 2628
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 2629
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->onPictureTakenDone()V

    .line 2631
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2640
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v0, :cond_0

    .line 2641
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onPictureTakenTimeOut()V

    .line 2643
    const-string v0, "CAM_PhotoModule"

    const-string v1, "kbg374, onTimerOut, setupPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->enableSceneChange()V

    .line 2645
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$2000(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto :goto_0

    .line 2634
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-nez v0, :cond_3

    .line 2635
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const-string/jumbo v1, "\u672a\u77e5\u6a21\u5f0f\u62cd\u7167Time out"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2637
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v2, v2, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6a21\u5f0f\u62cd\u7167Time out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
