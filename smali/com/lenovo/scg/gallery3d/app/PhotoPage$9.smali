.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;
.super Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1051
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 1251
    new-instance v8, Ljava/lang/AssertionError;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(I)V

    throw v8

    .line 1053
    :sswitch_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideBars()V

    .line 1253
    :cond_0
    :goto_0
    :sswitch_1
    return-void

    .line 1068
    :sswitch_2
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1070
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->unlockOrientation()V

    goto :goto_0

    .line 1075
    :sswitch_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->saveOrientationState()V

    goto :goto_0

    .line 1080
    :sswitch_4
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1081
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 1082
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->restoreOrientationState()V

    goto :goto_0

    .line 1084
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isAutoRotate()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1087
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1095
    :sswitch_5
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->forceUnlockOrientation()V

    .line 1097
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1098
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1101
    :cond_2
    const-string v8, "jiaxiaowei"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "------------mEditActionBarManager:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",PhotoPage:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isAutoRotate()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isEditState()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1103
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1105
    :cond_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1113
    :sswitch_6
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/AppBridge;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1114
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/AppBridge;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v9, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {v10, v8}, Lcom/lenovo/scg/gallery3d/app/AppBridge;->onFullScreenChanged(Z)V

    .line 1117
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_0

    .line 1118
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->clearBuffers()V

    goto/16 :goto_0

    .line 1125
    :sswitch_7
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 1129
    :sswitch_8
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->wantBars()V
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 1133
    :sswitch_9
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v8

    invoke-interface {v8}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unfreeze()V

    goto/16 :goto_0

    .line 1137
    :sswitch_a
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2300(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 1138
    .local v2, "nextUpdate":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-gtz v9, :cond_5

    .line 1139
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z
    invoke-static {v9, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2402(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Z)Z

    .line 1140
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2500(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 1142
    :cond_5
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xe

    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1147
    .end local v2    # "nextUpdate":J
    :sswitch_b
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v10, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2602(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Z)Z

    .line 1148
    const/4 v7, 0x0

    .line 1149
    .local v7, "stayedOnCamera":Z
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1150
    const/4 v7, 0x1

    .line 1158
    :goto_1
    if-eqz v7, :cond_0

    .line 1159
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/AppBridge;

    move-result-object v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getTotalMediaItemCount()I

    move-result v10

    if-le v10, v9, :cond_9

    .line 1160
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->launchCamera()V
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    .line 1167
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchToImage(I)V

    goto/16 :goto_0

    .line 1151
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J
    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_7

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v10

    if-le v10, v9, :cond_7

    .line 1152
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchToImage(I)V

    goto :goto_1

    .line 1154
    :cond_7
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/AppBridge;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1155
    :cond_8
    const/4 v7, 0x1

    goto :goto_1

    .line 1169
    :cond_9
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    .line 1170
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-result-object v10

    invoke-interface {v10, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v8

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    invoke-static {v9, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    .line 1176
    .end local v7    # "stayedOnCamera":Z
    :sswitch_c
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v8

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_0

    .line 1177
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto/16 :goto_0

    .line 1182
    :sswitch_d
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v5

    .line 1183
    .local v5, "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    const/4 v9, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$102(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/data/MediaItem;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 1184
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    invoke-static {v8, v5}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    .line 1188
    .end local v5    # "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :sswitch_e
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2500(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 1192
    :sswitch_f
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateProgressBar()V
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 1196
    :sswitch_10
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v10, v11, :cond_0

    .line 1197
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_b

    move v1, v9

    .line 1198
    .local v1, "isPanorama360":Z
    :goto_2
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1199
    .local v0, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1200
    .local v4, "panoramaIntent":Landroid/content/Intent;
    if-eqz v1, :cond_a

    .line 1201
    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3300(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 1203
    :cond_a
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v8

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->createShareIntent(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Landroid/content/Intent;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3400(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Landroid/content/Intent;

    move-result-object v6

    .line 1207
    .local v6, "shareIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setNfcBeamPushUri(Landroid/net/Uri;)V
    invoke-static {v8, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3500(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Landroid/net/Uri;)V

    goto/16 :goto_0

    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "isPanorama360":Z
    .end local v4    # "panoramaIntent":Landroid/content/Intent;
    .end local v6    # "shareIntent":Landroid/content/Intent;
    :cond_b
    move v1, v8

    .line 1197
    goto :goto_2

    .line 1212
    :sswitch_11
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v10, v11, :cond_0

    .line 1213
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_c

    move v1, v9

    .line 1214
    .restart local v1    # "isPanorama360":Z
    :goto_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updatePanoramaUI(Z)V
    invoke-static {v8, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Z)V

    goto/16 :goto_0

    .end local v1    # "isPanorama360":Z
    :cond_c
    move v1, v8

    .line 1213
    goto :goto_3

    .line 1222
    :sswitch_12
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setDoingEdit(Z)V

    .line 1223
    const-string v8, "WDY:AllEffectsBar"

    const-string v9, "exit edit mode  MSG_BACK_PRESS"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->onBackWhenConfigFromDialog()V

    goto/16 :goto_0

    .line 1228
    :sswitch_13
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onBackPressed()V

    goto/16 :goto_0

    .line 1232
    :sswitch_14
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->startZoomInAnimation()V

    .line 1233
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1234
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->showUndoRedoFrame()V

    goto/16 :goto_0

    .line 1247
    :sswitch_15
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->startZoomInAnimation()V

    goto/16 :goto_0

    .line 1051
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_1
        0x9 -> :sswitch_b
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_e
        0xd -> :sswitch_f
        0xe -> :sswitch_a
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_15
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
    .end sparse-switch
.end method
