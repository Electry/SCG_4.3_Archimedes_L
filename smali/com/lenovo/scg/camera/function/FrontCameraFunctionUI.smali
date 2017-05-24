.class public Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;
.super Lcom/lenovo/scg/camera/function/FunctionUI;
.source "FrontCameraFunctionUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;
    }
.end annotation


# static fields
.field public static final FLIP_MODE_H:Ljava/lang/String; = "flip-h"

.field public static final FLIP_MODE_OFF:Ljava/lang/String; = "off"

.field public static final FLIP_MODE_V:Ljava/lang/String; = "flip-v"

.field public static final FLIP_MODE_VH:Ljava/lang/String; = "flip-vh"

.field private static final TAG:Ljava/lang/String; = "FrontCameraFunctionUI"


# instance fields
.field private enterVideoReceiver:Landroid/content/BroadcastReceiver;

.field private exitVideoReceiver:Landroid/content/BroadcastReceiver;

.field private mFrontSpec:Landroid/widget/RelativeLayout;

.field private mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

.field private mFrontWindow:Lcom/lenovo/scg/camera/front/FrontWindow;

.field private mIsEnter:Z

.field private mIsFirstClearScreen:Z

.field private mIsImageCaptureIntent:Z

.field private mOrientation:I

.field private mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/FunctionUI;-><init>()V

    .line 103
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsFirstClearScreen:Z

    .line 105
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsEnter:Z

    .line 574
    new-instance v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;-><init>(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enterVideoReceiver:Landroid/content/BroadcastReceiver;

    .line 599
    new-instance v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;-><init>(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->exitVideoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontWindow:Lcom/lenovo/scg/camera/front/FrontWindow;

    return-object v0
.end method

.method public static getFilpModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 61
    packed-switch p0, :pswitch_data_0

    .line 71
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    const-string/jumbo v0, "off"

    goto :goto_0

    .line 65
    :pswitch_1
    const-string v0, "flip-h"

    goto :goto_0

    .line 67
    :pswitch_2
    const-string v0, "flip-v"

    goto :goto_0

    .line 69
    :pswitch_3
    const-string v0, "flip-vh"

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getJpegRotation(II)I
    .locals 4
    .param p0, "cameraId"    # I
    .param p1, "orientation"    # I

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "rotation":I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 78
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p0

    .line 79
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 80
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 85
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    return v1

    .line 82
    .restart local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method private initFrontView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 430
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400db

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/front/FrontView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    .line 431
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/front/FrontView;->setController(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 432
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontView;->setPhotoModule(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    .line 433
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 435
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    return-void
.end method

.method private initSwitchBackButton()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 530
    new-instance v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 531
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v2, 0x7f0203d6

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 532
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v2, 0x7f0203d9

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 533
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 534
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 535
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 536
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 537
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090315

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 538
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v2, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$2;-><init>(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    return-void
.end method

.method private removeFrontView()V
    .locals 2

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->removeSwitchBackButton()V

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    if-nez v0, :cond_2

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    goto :goto_0
.end method

.method private removeSwitchBackButton()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 555
    :cond_0
    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 3
    .param p1, "exclude"    # [I

    .prologue
    .line 335
    const-string v1, "FrontCameraFunctionUI"

    const-string v2, "clearScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsFirstClearScreen:Z

    if-eqz v1, :cond_1

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsFirstClearScreen:Z

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->hideAllButton()V

    .line 346
    :cond_2
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_4

    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 348
    aget v1, p1, v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 352
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 356
    .end local v0    # "i":I
    :cond_4
    const-string v1, "FrontCameraFunctionUI clearScreen"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 291
    const-string v0, "FrontCameraFunctionUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent, m = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/front/FrontView;->touchEvent(Landroid/view/MotionEvent;)Z

    .line 297
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableBeauty(Z)V
    .locals 3
    .param p1, "bEnable"    # Z

    .prologue
    .line 419
    const-string v0, "enter CameraInfo.CAMERA_FACING_FRONT"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 420
    if-eqz p1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->setFaceIndicatorVisable(Z)V

    .line 422
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->setFaceIndicatorVisable(Z)V

    .line 425
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public enter()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 156
    const-string v6, "FrontCameraFunctionUI"

    const-string v7, "enter"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput-boolean v10, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsFirstClearScreen:Z

    .line 160
    iput-boolean v10, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsEnter:Z

    .line 163
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isImageCaptureIntent()Z

    move-result v6

    iput-boolean v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsImageCaptureIntent:Z

    .line 164
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsImageCaptureIntent:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isVideoIntent()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->initSwitchBackButton()V

    .line 167
    const v4, 0x7f10015f

    .line 168
    .local v4, "shutterId":I
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isVideoIntent()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 169
    const v4, 0x7f1002a3

    .line 170
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6, v11}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setFaceIndicatorVisiable(Z)V

    .line 172
    :cond_1
    const/4 v6, 0x2

    new-array v0, v6, [I

    aput v4, v0, v11

    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getId()I

    move-result v6

    aput v6, v0, v10

    .line 173
    .local v0, "exclude":[I
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6, v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->clearScreenExcept([I)V

    .line 256
    .end local v4    # "shutterId":I
    :cond_2
    :goto_0
    return-void

    .line 177
    .end local v0    # "exclude":[I
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v7, "camera_front_beauty"

    iget-object v8, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v8

    const v9, 0x7f0f0029

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "value":Ljava/lang/String;
    const-string v6, "FrontCameraFunctionUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v6, "enableBeauty"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 184
    invoke-virtual {p0, v11}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enableBeauty(Z)V

    .line 188
    :goto_1
    const-string v6, "enableBeauty"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 190
    const-string v6, "initFrontView"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->initFrontView()V

    .line 192
    const-string v6, "initFrontView"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 193
    const/4 v6, 0x4

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 195
    .restart local v0    # "exclude":[I
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6, v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->clearScreenExcept([I)V

    .line 197
    new-instance v6, Lcom/lenovo/scg/camera/front/FrontWindow;

    invoke-direct {v6}, Lcom/lenovo/scg/camera/front/FrontWindow;-><init>()V

    iput-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontWindow:Lcom/lenovo/scg/camera/front/FrontWindow;

    .line 199
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->setGLRootToSurfaceScreenNail()V

    .line 201
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v6

    sget-object v7, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetFbo:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 202
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v6

    sget-object v7, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroHorizontal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/CameraScreenNail;->setMirroType(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;)V

    .line 203
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontWindow:Lcom/lenovo/scg/camera/front/FrontWindow;

    iget-object v7, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/front/FrontWindow;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 204
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 205
    .local v3, "p":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockVerticalScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V

    .line 206
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontWindow:Lcom/lenovo/scg/camera/front/FrontWindow;

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 208
    new-instance v2, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;-><init>(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)V

    .line 209
    .local v2, "handler":Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v6, v2}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V

    .line 211
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enterVideoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.lenovo.scg.camera.ENTERVIDEO"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->exitVideoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.lenovo.scg.camera.EXITVIDEO"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "camera_first_enter_front"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 217
    .local v1, "firstEnter":Z
    const-string v6, "FrontCameraFunctionUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter, front firstEnter = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz v1, :cond_2

    .line 220
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v6, v10}, Lcom/lenovo/scg/camera/front/FrontView;->setIsPhotoWayHintShow(Z)V

    .line 222
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400d9

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    .line 223
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$1;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$1;-><init>(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "exclude":[I
    .end local v1    # "firstEnter":Z
    .end local v2    # "handler":Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;
    .end local v3    # "p":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
    :cond_4
    invoke-virtual {p0, v10}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enableBeauty(Z)V

    goto/16 :goto_1

    .line 193
    :array_0
    .array-data 4
        0x7f10015f
        0x7f1002a3
        0x7f100764
        0x7f100146
    .end array-data
.end method

.method public getmFrontView()Lcom/lenovo/scg/camera/front/FrontView;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "result":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->hide()Z

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->removeFirstEnterSupplyHintView()Z

    move-result v1

    or-int/2addr v0, v1

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->removeFirstEnterSpecView()Z

    move-result v1

    or-int/2addr v0, v1

    .line 395
    return v0
.end method

.method public onCaptureEnd()V
    .locals 2

    .prologue
    .line 489
    const-string v0, "FrontCameraFunctionUI"

    const-string/jumbo v1, "onCaptureEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->onCaptureEnd()V

    goto :goto_0
.end method

.method public onCaptureStart()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 453
    const-string v5, "FrontCameraFunctionUI"

    const-string/jumbo v6, "onCaptureStart"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v2, 0x1

    .line 457
    .local v2, "picture_flip_value":I
    iget v5, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mOrientation:I

    invoke-static {v7, v5}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->getJpegRotation(II)I

    move-result v3

    .line 458
    .local v3, "rotation":I
    const/16 v5, 0x5a

    if-eq v3, v5, :cond_0

    const/16 v5, 0x10e

    if-ne v3, v5, :cond_1

    .line 460
    :cond_0
    if-ne v2, v7, :cond_2

    .line 461
    const/4 v2, 0x2

    .line 467
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v5

    const-string v6, "camera_front_mirror"

    iget-object v7, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v7

    const v8, 0x7f0f002a

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "value":Ljava/lang/String;
    const-string v5, "FrontCameraFunctionUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mirror\uff0cvalue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v5, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 472
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    const-string/jumbo v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 473
    const-string/jumbo v5, "snapshot-picture-flip"

    const-string/jumbo v6, "off"

    invoke-virtual {v0, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_1
    const-string/jumbo v5, "off"

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 479
    iget-object v5, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 482
    iget-object v5, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    if-nez v5, :cond_4

    .line 486
    :goto_2
    return-void

    .line 462
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 463
    const/4 v2, 0x1

    goto :goto_0

    .line 475
    .restart local v0    # "p":Landroid/hardware/Camera$Parameters;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "picture_flip":Ljava/lang/String;
    const-string/jumbo v5, "snapshot-picture-flip"

    invoke-virtual {v0, v5, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 485
    .end local v1    # "picture_flip":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/front/FrontView;->onCaptureStart()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 401
    const-string/jumbo v0, "panhui1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyDown, keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->hide()Z

    .line 406
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->removeFirstEnterSupplyHintView()Z

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->removeFirstEnterSpecView()Z

    .line 411
    :cond_2
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 416
    return-void
.end method

.method public quit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 111
    const-string v3, "FrontCameraFunctionUI"

    const-string/jumbo v4, "quit"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 114
    .local v1, "ps":Landroid/hardware/Camera$Parameters;
    const-string/jumbo v3, "snapshot-picture-flip"

    const-string/jumbo v4, "off"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsEnter:Z

    if-nez v3, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsEnter:Z

    .line 119
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->removeFirstEnterSpecView()Z

    .line 123
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isVideoIntent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->removeFrontView()V

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 128
    .local v0, "p":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->unlockScreenRotation()V

    .line 129
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->removeCameraOverlayGLView()V

    .line 130
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 131
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroNone:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraScreenNail;->setMirroType(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;)V

    .line 132
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v3, v5}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V

    .line 133
    iput-object v5, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontWindow:Lcom/lenovo/scg/camera/front/FrontWindow;

    .line 135
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enterVideoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->exitVideoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "camera_first_enter_front"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 142
    .local v2, "value":Z
    if-eqz v2, :cond_0

    .line 143
    const-string v3, "FrontCameraFunctionUI"

    const-string/jumbo v4, "quit, front first = true, to set false!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "camera_first_enter_front"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 148
    .end local v0    # "p":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
    .end local v2    # "value":Z
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->removeSwitchBackButton()V

    goto/16 :goto_0
.end method

.method public removeFirstEnterSpecView()Z
    .locals 3

    .prologue
    .line 259
    const-string v1, "FrontCameraFunctionUI"

    const-string/jumbo v2, "removeFirstEnterSpecView"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    .line 270
    .local v0, "result":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    .line 273
    const/4 v0, 0x1

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontView;->setIsPhotoWayHintShow(Z)V

    .line 279
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->getNeedShowSupplyHint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyHint()V

    .line 281
    const/4 v0, 0x1

    .line 285
    :cond_1
    return v0
.end method

.method public setOrientation(I)V
    .locals 7
    .param p1, "rotation"    # I

    .prologue
    const v6, 0x7f10055b

    const v5, 0x7f10055a

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 302
    const-string v0, "FrontCameraFunctionUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput p1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mOrientation:I

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/front/FrontView;->setOrientation(I)V

    .line 314
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 331
    :cond_2
    :goto_0
    return-void

    .line 317
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 324
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontSpec:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public setSwitchBackButton(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 563
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 564
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 566
    :cond_0
    return-void

    .line 564
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showScreen([I)V
    .locals 3
    .param p1, "exclude"    # [I

    .prologue
    .line 362
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mIsEnter:Z

    if-nez v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    const-string v1, "FrontCameraFunctionUI"

    const-string/jumbo v2, "showScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->showAllButton()V

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_4

    .line 372
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_4

    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 374
    aget v1, p1, v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 378
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mSwitchBackImageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 382
    .end local v0    # "i":I
    :cond_4
    const-string v1, "FrontCameraFunctionUI showScreen"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method
