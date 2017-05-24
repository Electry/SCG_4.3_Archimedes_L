.class public Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;
.super Ljava/lang/Object;
.source "ShowModeControllerImpl.java"

# interfaces
.implements Lcom/lenovo/scg/camera/cameramode/ShowModeController;


# static fields
.field public static FIRST_CAMERA_FUNCTION_CHANGED:Ljava/lang/String; = null

.field private static final HIDE_WINDOW_MODE:I = 0x2711

.field private static final WINDOW_MODE:Ljava/lang/String; = "WINDOW_MODE"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsDelayHide:Z

.field private mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "FIRST_CAMERA_FUNCTION_CHANGED"

    sput-object v0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->FIRST_CAMERA_FUNCTION_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mIsDelayHide:Z

    .line 32
    new-instance v0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl$1;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mIsDelayHide:Z

    return p1
.end method


# virtual methods
.method public delayHideShowModeWindow(ILcom/lenovo/scg/camera/cameramode/CameraMode;)V
    .locals 6
    .param p1, "windowMode"    # I
    .param p2, "cameraMode"    # Lcom/lenovo/scg/camera/cameramode/CameraMode;

    .prologue
    const/16 v3, 0x2711

    .line 161
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mIsDelayHide:Z

    .line 162
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "WINDOW_MODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 166
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 167
    iput v3, v1, Landroid/os/Message;->what:I

    .line 168
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/cameramode/CameraMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v2, v3, :cond_0

    .line 169
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public displayCurrentModeViews()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->displayCurrentModeViews()V

    .line 180
    :cond_0
    return-void
.end method

.method public enterMode(Lcom/lenovo/scg/camera/cameramode/CameraMode;)V
    .locals 2
    .param p1, "cameraMode"    # Lcom/lenovo/scg/camera/cameramode/CameraMode;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/cameramode/CameraMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 78
    .local v0, "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 82
    .end local v0    # "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_0
    return-void
.end method

.method public finishGaussExt()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->finishGaussExt()V

    .line 156
    :cond_0
    return-void
.end method

.method public hideGaussBlur2DBitmap()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->hideGaussBlur2DBitmap()V

    .line 187
    :cond_0
    return-void
.end method

.method public hideShowModeWindow(I)V
    .locals 1
    .param p1, "windowMode"    # I

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mIsDelayHide:Z

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->hideCameraModeWindow(I)V

    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->destroyWindow()V

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->hideLe3dFrame()V

    goto :goto_0
.end method

.method public onModeFrameBackPressed()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->onModeFrameBackPressed()V

    .line 194
    :cond_0
    return-void
.end method

.method public restoreBackground()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->restoreBackground()V

    .line 106
    :cond_0
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->setBackgroundColor(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public setLe3dFrameManager(Lcom/lenovo/scg/common/le3d/Le3dFrameManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    .line 90
    return-void
.end method

.method public showCameraViews()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->showCameraViews()V

    .line 114
    :cond_0
    return-void
.end method

.method public showFunctionDetailsWindow(I)V
    .locals 6
    .param p1, "windowMode"    # I

    .prologue
    .line 121
    const/4 v1, 0x1

    .line 122
    .local v1, "isFirstChangedFunction":Z
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v4, :cond_1

    .line 123
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 125
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 126
    .local v3, "preferences":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_1

    .line 127
    sget-object v4, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->FIRST_CAMERA_FUNCTION_CHANGED:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 128
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 132
    :cond_0
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    .line 133
    .local v2, "isZh":Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 134
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v4, :cond_1

    .line 136
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->finishGaussExt()V

    .line 137
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v4, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->destroyWindow(I)V

    .line 138
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->hideLe3dFrame()V

    .line 139
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->showTutorialWindow()V

    .line 149
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "isZh":Z
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 142
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "isZh":Z
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v4, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->destroyWindow(I)V

    .line 143
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->hideLe3dFrame()V

    .line 144
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->changeFunction()V

    goto :goto_0
.end method

.method public showSwitchModeWindow(I)V
    .locals 1
    .param p1, "windowMode"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->showSwitchModeWindow(I)V

    .line 71
    :cond_0
    return-void
.end method
