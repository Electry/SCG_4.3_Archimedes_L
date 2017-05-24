.class public Lcom/lenovo/scg/camera/CameraActivity;
.super Lcom/lenovo/scg/camera/ActivityBase;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE_CAMERA_FROM_GALLERY:Ljava/lang/String; = "close_camera_from_gallery"

.field public static final LIGHTCYCLE_MODULE_INDEX:I = 0x3

.field public static final PANORAMA_MODULE_INDEX:I = 0x2

.field public static final PHOTO_MODULE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CAM_activity"

.field public static final VIDEO_MODULE_INDEX:I = 0x1


# instance fields
.field public cameraBackSettingViewLayerRootView:Landroid/view/View;

.field private mAutoRotateScreen:Z

.field private mCameraControls:Landroid/view/View;

.field private mCameraRootView:Landroid/widget/RelativeLayout;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

.field private mCurrentModuleIndex:I

.field private mDown:Landroid/view/MotionEvent;

.field private mFrame:Landroid/widget/FrameLayout;

.field private mLe3dFrameRoot:Landroid/widget/FrameLayout;

.field private mMediaSaveService:Lcom/lenovo/scg/camera/MediaSaveService;

.field private mOrientationListener:Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;

.field private mSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mShutter:Lcom/lenovo/scg/camera/ShutterButton;

.field private mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

.field private mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ActivityBase;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraRootView:Landroid/widget/RelativeLayout;

    .line 93
    new-instance v0, Lcom/lenovo/scg/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/CameraActivity$1;-><init>(Lcom/lenovo/scg/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/CameraActivity;)Lcom/lenovo/scg/camera/MediaSaveService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mMediaSaveService:Lcom/lenovo/scg/camera/MediaSaveService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/CameraActivity;Lcom/lenovo/scg/camera/MediaSaveService;)Lcom/lenovo/scg/camera/MediaSaveService;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/MediaSaveService;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mMediaSaveService:Lcom/lenovo/scg/camera/MediaSaveService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/CameraActivity;)Lcom/lenovo/scg/camera/CameraModule;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    return-object v0
.end method

.method private bindMediaSaveService()V
    .locals 3

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/camera/MediaSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 398
    return-void
.end method

.method private unbindMediaSaveService()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mMediaSaveService:Lcom/lenovo/scg/camera/MediaSaveService;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mMediaSaveService:Lcom/lenovo/scg/camera/MediaSaveService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/MediaSaveService;->setListener(Lcom/lenovo/scg/camera/MediaSaveService$Listener;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/CameraActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 407
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelActivityTouchHandling()V
    .locals 2

    .prologue
    .line 508
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 510
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 511
    invoke-super {p0, v0}, Lcom/lenovo/scg/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 513
    .end local v0    # "cancel":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method public getAutoFocusTime()J
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    instance-of v0, v0, Lcom/lenovo/scg/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mAutoFocusTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCameraRootView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/lenovo/scg/camera/CameraScreenNail;

    return-object v0
.end method

.method public getCaptureStartTime()J
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    instance-of v0, v0, Lcom/lenovo/scg/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStartTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentModule()Lcom/lenovo/scg/camera/CameraModule;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    return-object v0
.end method

.method public getJpegCallbackFinishTime()J
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    instance-of v0, v0, Lcom/lenovo/scg/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegCallbackFinishTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getLe3dFrameRoot()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mLe3dFrameRoot:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getMediaSaveService()Lcom/lenovo/scg/camera/MediaSaveService;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mMediaSaveService:Lcom/lenovo/scg/camera/MediaSaveService;

    return-object v0
.end method

.method public getPictureDisplayedToJpegCallbackTime()J
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    instance-of v0, v0, Lcom/lenovo/scg/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShutterBtnVideoPause()Lcom/lenovo/scg/camera/ShutterButton;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    return-object v0
.end method

.method public getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mShutter:Lcom/lenovo/scg/camera/ShutterButton;

    return-object v0
.end method

.method public getShutterButtonVideo()Lcom/lenovo/scg/camera/ShutterButton;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    return-object v0
.end method

.method public getShutterLag()J
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    instance-of v0, v0, Lcom/lenovo/scg/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mShutterLag:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShutterToPictureDisplayedTime()J
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    instance-of v0, v0, Lcom/lenovo/scg/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public hideUI()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraControls:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->cameraBackSettingViewLayerRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mShutter:Lcom/lenovo/scg/camera/ShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 314
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 201
    const v0, 0x7f10028c

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->cameraBackSettingViewLayerRootView:Landroid/view/View;

    .line 202
    const v0, 0x7f10015a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraControls:Landroid/view/View;

    .line 203
    const v0, 0x7f10015f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ShutterButton;

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mShutter:Lcom/lenovo/scg/camera/ShutterButton;

    .line 204
    const v0, 0x7f1002a3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ShutterButton;

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    .line 205
    const v0, 0x7f1002a4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ShutterButton;

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    .line 208
    const v0, 0x7f10028e

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 210
    return-void
.end method

.method protected installIntentFilter()V
    .locals 1

    .prologue
    .line 435
    invoke-super {p0}, Lcom/lenovo/scg/camera/ActivityBase;->installIntentFilter()V

    .line 436
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraModule;->installIntentFilter()V

    .line 437
    return-void
.end method

.method public isAutoRotateScreen()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mAutoRotateScreen:Z

    return v0
.end method

.method public isCameraAppShown()Z
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCameraApp()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mShowCameraAppView:Z

    return v0
.end method

.method public isPanoramaActivity()Z
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModuleIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x2

    .line 442
    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-nez v0, :cond_0

    .line 443
    const/4 p2, 0x0

    .line 445
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 447
    if-ne p2, v1, :cond_1

    .line 448
    const/4 p2, 0x0

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/scg/camera/CameraModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 451
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 466
    .local v0, "topAct":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v1, v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    if-eqz v1, :cond_1

    .line 467
    invoke-super {p0}, Lcom/lenovo/scg/camera/ActivityBase;->onBackPressed()V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    instance-of v1, v0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    if-eqz v1, :cond_2

    .line 472
    invoke-super {p0}, Lcom/lenovo/scg/camera/ActivityBase;->onBackPressed()V

    goto :goto_0

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/CameraModule;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    invoke-super {p0}, Lcom/lenovo/scg/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraModule;->onCaptureTextureCopied()V

    .line 566
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "bFirst":Z
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 116
    .local v6, "pref":Landroid/content/SharedPreferences;
    if-eqz v6, :cond_0

    .line 117
    const-string v12, "camera_anin_showed"

    const/4 v13, 0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 120
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 122
    .local v8, "t1":J
    new-instance v12, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-direct {v12}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    .line 123
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModuleIndex:I

    .line 124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v5, Lcom/lenovo/scg/camera/PhotoModule;

    .line 125
    .local v5, "pm":Lcom/lenovo/scg/camera/PhotoModule;
    invoke-virtual {v5, v2}, Lcom/lenovo/scg/camera/PhotoModule;->setIsFirstStartUp(Z)V

    .line 126
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/camera/PhotoModule;->firstOpenCamera(Lcom/lenovo/scg/camera/CameraActivity;)V

    .line 129
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "camera onCreate this:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/lenovo/scg/common/utils/SCGUtils;->initSCGTypeface(Landroid/content/Context;)V

    .line 135
    const/4 v12, -0x8

    invoke-static {v12}, Landroid/os/Process;->setThreadPriority(I)V

    .line 136
    invoke-super/range {p0 .. p1}, Lcom/lenovo/scg/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v12, 0x7f040046

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lenovo/scg/camera/CameraActivity;->setContentView(I)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraActivity;->init()V

    .line 140
    const v12, 0x7f1001b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    .line 141
    const v12, 0x7f1001b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraRootView:Landroid/widget/RelativeLayout;

    .line 144
    invoke-static/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->needShow(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 145
    new-instance v3, Lcom/lenovo/scg/camera/CameraStartAnimView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lenovo/scg/camera/CameraStartAnimView;-><init>(Landroid/content/Context;)V

    .line 146
    .local v3, "csav":Lcom/lenovo/scg/camera/CameraStartAnimView;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v4, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 148
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraStartAnimView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 154
    .end local v3    # "csav":Lcom/lenovo/scg/camera/CameraStartAnimView;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v12, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v13, v12}, Lcom/lenovo/scg/camera/mode/ModeManager;->setPhotoModule(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 155
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->setCameraActivity(Landroid/content/Context;)V

    .line 156
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->setContext(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->init(Landroid/content/Context;)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 161
    .local v10, "t2":J
    const-string v12, "CameraActivity t2-t1=%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sub-long v16, v10, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-interface {v12, v0, v13, v14}, Lcom/lenovo/scg/camera/CameraModule;->init(Lcom/lenovo/scg/camera/CameraActivity;Landroid/view/View;Z)V

    .line 164
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v7

    .line 165
    .local v7, "type":I
    const/4 v12, 0x1

    if-ne v7, v12, :cond_4

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v13, 0x7f020268

    invoke-virtual {v12, v13}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mShutter:Lcom/lenovo/scg/camera/ShutterButton;

    const v13, 0x7f0200ec

    invoke-virtual {v12, v13}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mShutter:Lcom/lenovo/scg/camera/ShutterButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/lenovo/scg/camera/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraActivity;->bindMediaSaveService()V

    .line 182
    const v12, 0x7f1001b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mLe3dFrameRoot:Landroid/widget/FrameLayout;

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    invoke-static {v12}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 188
    const/4 v12, 0x0

    sput-boolean v12, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v12, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v12}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v12

    const-string v13, "developer_setting_mem_analysis_log_key"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 191
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/StatusLog;->getInstance()Lcom/lenovo/scg/common/utils/android/StatusLog;

    move-result-object v12

    const-string v13, "Camera onCreate"

    invoke-virtual {v12, v13}, Lcom/lenovo/scg/common/utils/android/StatusLog;->writeEvent(Ljava/lang/String;)V

    .line 194
    :cond_3
    new-instance v12, Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v12, v0, v1}, Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;-><init>(Lcom/lenovo/scg/camera/CameraActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mOrientationListener:Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;

    .line 195
    return-void

    .line 172
    :cond_4
    if-nez v7, :cond_2

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v13, 0x7f0200bb

    invoke-virtual {v12, v13}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mShutter:Lcom/lenovo/scg/camera/ShutterButton;

    const v13, 0x7f0200da

    invoke-virtual {v12, v13}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/CameraActivity;->mShutter:Lcom/lenovo/scg/camera/ShutterButton;

    const v13, 0x7f0200db

    invoke-virtual {v12, v13}, Lcom/lenovo/scg/camera/ShutterButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera onDestroy this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraActivity;->unbindMediaSaveService()V

    .line 218
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/CameraModule;->onDestroy()V

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/lenovo/scg/camera/ActivityBase;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "developer_setting_mem_analysis_log_key"

    invoke-virtual {v1, v2, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v5, :cond_1

    .line 234
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/StatusLog;->getInstance()Lcom/lenovo/scg/common/utils/android/StatusLog;

    move-result-object v1

    const-string v2, "Camera onDestroy"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/utils/android/StatusLog;->writeEvent(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/StatusLog;->releaseInstance()V

    .line 237
    :cond_1
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "onDestroy RuntimeException: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrPrintStackTraces()V

    .line 226
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "onDestroy Exception: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrPrintStackTraces()V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onFullScreenChanged(Z)V
    .locals 1
    .param p1, "full"    # Z

    .prologue
    .line 411
    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraActivity;->showUI()V

    .line 416
    :goto_0
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ActivityBase;->onFullScreenChanged(Z)V

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/CameraModule;->onFullScreenChanged(Z)V

    .line 418
    return-void

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraActivity;->hideUI()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/camera/CameraModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/camera/CameraModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onModeButtonClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 642
    const-string v0, "CAM_activity"

    const-string/jumbo v1, "onModeButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->onModeButtonClick(Landroid/view/View;)V

    .line 644
    return-void
.end method

.method public onModeRetButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->onModeRetButtonClick(Landroid/view/View;)V

    .line 648
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 429
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 430
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->clearActivityResult()V

    .line 431
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera onPause this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 338
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mPaused:Z

    .line 339
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mOrientationListener:Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;->disable()V

    .line 340
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/CameraModule;->onPauseBeforeSuper()V

    .line 341
    invoke-super {p0}, Lcom/lenovo/scg/camera/ActivityBase;->onPause()V

    .line 342
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/CameraModule;->onPauseAfterSuper()V

    .line 343
    invoke-static {}, Lcom/lenovo/scg/camera/MaskBitmapHolder;->destroy()V

    .line 344
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->onCameraPause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "onPause RuntimeException: %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrPrintStackTraces()V

    .line 348
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "onPause Exception: %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrPrintStackTraces()V

    .line 352
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraModule;->onPreviewTextureCopied()V

    .line 561
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera onResume :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->init(Landroid/content/Context;)V

    .line 361
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 363
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mPaused:Z

    .line 365
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mAutoRotateScreen:Z

    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mOrientationListener:Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;->enable()V

    .line 377
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/CameraModule;->onResumeBeforeSuper()V

    .line 378
    invoke-super {p0}, Lcom/lenovo/scg/camera/ActivityBase;->onResume()V

    .line 379
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/CameraModule;->onResumeAfterSuper()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v1, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->setSettingButtonEnable()V

    .line 393
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "onResume RuntimeException: %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrPrintStackTraces()V

    .line 383
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 384
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "onResume Exception: %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrPrintStackTraces()V

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 458
    const-string v0, "dongxt"

    const-string v1, "cameraActivity  onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 422
    invoke-super {p0}, Lcom/lenovo/scg/camera/ActivityBase;->onStop()V

    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraModule;->onStop()V

    .line 424
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->clearTasks()V

    .line 425
    return-void
.end method

.method public onStorageSpaceUpdated()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraModule;->onStorageSpaceUpdated()V

    .line 693
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 636
    const-string v0, "CAM_activity"

    const-string/jumbo v1, "onThumbnailClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->onThumbnailClicked(Landroid/view/View;)V

    .line 638
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 521
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v4

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 522
    .local v1, "matrix":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 523
    .local v0, "inv":Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 524
    const/4 v3, 0x0

    .line 526
    .local v3, "pts":[F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 528
    .local v2, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 529
    const/4 v4, 0x4

    new-array v3, v4, [F

    .end local v3    # "pts":[F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v3, v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v3, v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v3, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v3, v6

    .line 530
    .restart local v3    # "pts":[F
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 531
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v4

    aget v5, v3, v5

    add-float/2addr v5, v9

    float-to-int v5, v5

    aget v6, v3, v6

    add-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setPoint2(II)V

    .line 536
    :goto_0
    aget v4, v3, v8

    add-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    aget v5, v3, v7

    add-float/2addr v5, v9

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 537
    iget-object v4, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v4, v2}, Lcom/lenovo/scg/camera/CameraModule;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 533
    :cond_0
    new-array v3, v5, [F

    .end local v3    # "pts":[F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aput v4, v3, v7

    .line 534
    .restart local v3    # "pts":[F
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Lcom/lenovo/scg/camera/ActivityBase;->onUserInteraction()V

    .line 571
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraModule;->onUserInteraction()V

    .line 572
    return-void
.end method

.method public showCameraApp()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    return-void
.end method

.method public showPieMenuButton(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const v3, 0x7f100672

    const v0, 0x7f10015e

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 274
    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    instance-of v0, v0, Lcom/lenovo/scg/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "CAM_activity"

    const-string v1, "Don\'t perform this showUI operation when it\'s 3rd party video calling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraControls:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->cameraBackSettingViewLayerRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mShutter:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mShutter:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ShutterButton;->requestLayout()V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 542
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/camera/ProxyLauncher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    .local v0, "proxyIntent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 544
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 545
    invoke-super {p0, v0, p2}, Lcom/lenovo/scg/camera/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 546
    return-void
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 550
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ActivityBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public updateCameraAppView()V
    .locals 1

    .prologue
    .line 581
    invoke-super {p0}, Lcom/lenovo/scg/camera/ActivityBase;->updateCameraAppView()V

    .line 582
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraModule;->updateCameraAppView()V

    .line 583
    return-void
.end method

.method protected updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraModule;->updateStorageHintOnResume()Z

    move-result v0

    return v0
.end method
