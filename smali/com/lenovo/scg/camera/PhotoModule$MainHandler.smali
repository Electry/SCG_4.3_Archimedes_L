.class Lcom/lenovo/scg/camera/PhotoModule$MainHandler;
.super Landroid/os/Handler;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/PhotoModule$1;

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1112
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1115
    :sswitch_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->doStopContinuous()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$1900(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto :goto_0

    .line 1119
    :sswitch_1
    const-string v3, "liuming5"

    const-string v4, "SWITCHINGDONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchControlUtils;->endSwitchCamera()V

    goto :goto_0

    .line 1123
    :sswitch_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$2000(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto :goto_0

    .line 1128
    :sswitch_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1129
    const-string v3, "CAM_PhotoModule"

    const-string/jumbo v4, "should not CLEAR_SCREEN_DELAY on video recording"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1132
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 1137
    :sswitch_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->initializeFirstTime()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$2100(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto :goto_0

    .line 1142
    :sswitch_5
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    sget-object v4, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->OTHERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->setCameraParametersWhenIdle(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V
    invoke-static {v3, v7, v4}, Lcom/lenovo/scg/camera/PhotoModule;->access$2200(Lcom/lenovo/scg/camera/PhotoModule;ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V

    goto :goto_0

    .line 1148
    :sswitch_6
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->go2WatchBackPage()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$2300(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 1149
    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0

    .line 1160
    :sswitch_7
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget v4, v4, Lcom/lenovo/scg/camera/PhotoModule;->mDisplayRotation:I

    if-eq v3, v4, :cond_2

    .line 1161
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->setDisplayOrientation()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$2400(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 1163
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mOnResumeTime:J
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$1600(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1164
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1170
    :sswitch_8
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->switchCamera()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$2500(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 1175
    :sswitch_9
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v3, v3, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v3, Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraScreenNail;->animateSwitchCamera()V

    goto/16 :goto_0

    .line 1180
    :sswitch_a
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->onCameraOpened()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$2600(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 1186
    :sswitch_b
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->onPreviewStarted()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$2700(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 1191
    :sswitch_c
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iput-object v6, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    .line 1192
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mOpenCameraFail:Z
    invoke-static {v3, v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$2802(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    .line 1193
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v4, 0x7f0f04cb

    invoke-static {v3, v4, v8}, Lcom/lenovo/scg/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 1198
    :sswitch_d
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iput-object v6, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    .line 1199
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraDisabled:Z
    invoke-static {v3, v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$2902(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    .line 1200
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v4, 0x7f0f04cc

    invoke-static {v3, v4, v8}, Lcom/lenovo/scg/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 1204
    :sswitch_e
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/PhotoUI;->enablePreviewThumb(Z)V

    goto/16 :goto_0

    .line 1209
    :sswitch_f
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v4, 0x7f0f0066

    invoke-static {v3, v4, v7}, Lcom/lenovo/scg/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 1213
    :sswitch_10
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v4, 0x7f0f0065

    invoke-static {v3, v4, v7}, Lcom/lenovo/scg/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 1218
    :sswitch_11
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->onCameraShutterClick()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$200(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 1223
    :sswitch_12
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # operator++ for: Lcom/lenovo/scg/camera/PhotoModule;->mValidRequestRenderCount:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$3008(Lcom/lenovo/scg/camera/PhotoModule;)I

    .line 1224
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoModule;->getGlRootView()Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->validRequstRender()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1225
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mValidRequestRenderCount:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$3000(Lcom/lenovo/scg/camera/PhotoModule;)I

    move-result v3

    if-ge v3, v9, :cond_3

    .line 1226
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3039

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1227
    const-string v3, "debugRefresh"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1229
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mValidRequestRenderCount:I
    invoke-static {v3, v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$3002(Lcom/lenovo/scg/camera/PhotoModule;I)I

    goto/16 :goto_0

    .line 1232
    :cond_4
    const-string v3, "debugRefresh"

    const-string v4, "2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1236
    :sswitch_13
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    if-eqz v3, :cond_0

    .line 1237
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->stop()V

    .line 1238
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->restore()V

    goto/16 :goto_0

    .line 1243
    :sswitch_14
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->showLowpowerDialog()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$3100(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 1246
    :sswitch_15
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f012b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1248
    .local v2, "sMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->showTipsToast(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$3200(Lcom/lenovo/scg/camera/PhotoModule;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1252
    .end local v2    # "sMsg":Ljava/lang/String;
    :sswitch_16
    const-string v3, "CAM_PhotoModule"

    const-string v4, "VideoStartTime Thread done to call onVideoMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoAnimDone:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$3300(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoModeStarted:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$3400(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1254
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/PhotoModule;->onVideoMode(Z)V

    goto/16 :goto_0

    .line 1258
    :sswitch_17
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$Parameters;

    .line 1260
    .local v1, "pra":Landroid/hardware/Camera$Parameters;
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    invoke-static {v4}, Lcom/lenovo/scg/camera/PhotoModule;->access$3500(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$3600(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/lenovo/scg/camera/PhotoUI;->onCameraOpened(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "mPhotoUI.onCameraOpened error: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1267
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pra":Landroid/hardware/Camera$Parameters;
    :sswitch_18
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$3700(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    goto/16 :goto_0

    .line 1113
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_16
        0x16 -> :sswitch_17
        0x17 -> :sswitch_18
        0x1100 -> :sswitch_6
        0x3039 -> :sswitch_12
        0x303a -> :sswitch_13
    .end sparse-switch
.end method
