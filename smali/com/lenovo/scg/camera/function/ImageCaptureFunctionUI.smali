.class public Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;
.super Lcom/lenovo/scg/camera/function/FunctionUI;
.source "ImageCaptureFunctionUI.java"

# interfaces
.implements Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;


# instance fields
.field private mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

.field private mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field public mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mShortcutBigPanelFadeInAnimation:Landroid/view/animation/Animation;

.field private mShortcutBigPanelFadeOutAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/FunctionUI;-><init>()V

    .line 153
    new-instance v0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;-><init>(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;Lcom/lenovo/scg/camera/ui/RotateLayout;)Lcom/lenovo/scg/camera/ui/RotateLayout;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/ui/RotateLayout;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mShortcutBigPanelFadeInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mShortcutBigPanelFadeInAnimation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private initFlashButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400e5

    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1005ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->initFlashDrawable()V

    .line 151
    return-void
.end method

.method private removeFlashButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera_setting_flash_third_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 283
    iput-object v3, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getAppView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 287
    iput-object v3, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    .line 289
    :cond_1
    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 3
    .param p1, "exclude"    # [I

    .prologue
    .line 99
    const-string v1, "jiaxiaowei"

    const-string v2, "imageCaptureFunctionUI-----clearScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-eqz p1, :cond_2

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getId()I

    move-result v1

    aget v2, p1, v0

    if-ne v1, v2, :cond_1

    .line 110
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 101
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public enter()V
    .locals 4

    .prologue
    .line 61
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 63
    .local v0, "exclude":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->initButtonForCaptureIntent()V

    .line 65
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 66
    .local v1, "pm":Lcom/lenovo/scg/camera/PhotoModule;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoModule;->getJpegDataFor3rd()[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->clearScreenExcept([I)V

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->hideSettingUI()Z

    .line 71
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    iput-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 72
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->initFlashButton()V

    .line 75
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoModule;->getJpegDataFor3rd()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 79
    :cond_1
    return-void

    .line 61
    :array_0
    .array-data 4
        0x7f10015f
        0x7f10015d
        0x7f1005ac
    .end array-data
.end method

.method public hideBigPanel(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->initFlashDrawable()V

    .line 229
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->hideShortcutPanel()Z

    .line 230
    return-void
.end method

.method public hideShortcutPanel()Z
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "result":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mShortcutBigPanelFadeOutAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f050043

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mShortcutBigPanelFadeOutAnimation:Landroid/view/animation/Animation;

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mShortcutBigPanelFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mShortcutBigPanelFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$2;-><init>(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 220
    const/4 v0, 0x1

    .line 223
    :cond_1
    return v0
.end method

.method public initFlashDrawable()V
    .locals 5

    .prologue
    .line 238
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    .line 239
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "camera_setting_flash_third_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0f000f

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f02036b

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f020369

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 250
    :cond_2
    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f02036d

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 252
    :cond_3
    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f02036a

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 254
    :cond_4
    const-string/jumbo v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f02036c

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public isHdrOpen()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public isImageCapture()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureEnd()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Lcom/lenovo/scg/camera/function/FunctionUI;->onCaptureEnd()V

    .line 270
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Lcom/lenovo/scg/camera/function/FunctionUI;->onCaptureStart()V

    .line 263
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->hideShortcutPanel()Z

    .line 265
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 136
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 141
    return-void
.end method

.method public quit()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->removeFlashButton()V

    .line 56
    return-void
.end method

.method public setCameraSettingController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 1
    .param p1, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->setOrientation(I)V

    .line 235
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    const/4 v1, 0x1

    .line 88
    iput p1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mOrientation:I

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 95
    :cond_1
    return-void
.end method

.method public showScreen([I)V
    .locals 3
    .param p1, "exclude"    # [I

    .prologue
    .line 114
    const-string v1, "jiaxiaowei"

    const-string v2, "imageCaptureFunctionUI-----showScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz p1, :cond_2

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getId()I

    move-result v1

    aget v2, p1, v0

    if-ne v1, v2, :cond_1

    .line 126
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 117
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1
.end method
