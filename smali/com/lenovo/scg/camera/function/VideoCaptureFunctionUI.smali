.class public Lcom/lenovo/scg/camera/function/VideoCaptureFunctionUI;
.super Lcom/lenovo/scg/camera/function/FunctionUI;
.source "VideoCaptureFunctionUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCaptureFunctionUI"

.field public static final VIDEO_INTENT_DISPLAY_BUTTONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/camera/function/VideoCaptureFunctionUI;->VIDEO_INTENT_DISPLAY_BUTTONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f10015d
        0x7f1002a3
        0x7f1002a4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/FunctionUI;-><init>()V

    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 2
    .param p1, "exclude"    # [I

    .prologue
    .line 91
    const-string v0, "VideoCaptureFunctionUI"

    const-string v1, "clearScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public enter()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "VideoCaptureFunctionUI"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/VideoCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->initButtonForCaptureIntent()V

    .line 36
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getTempVideoNameOnIntent()Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/VideoCaptureFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->showVideoResultUI()V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/VideoCaptureFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->hideSettingUI()Z

    .line 43
    const-string v0, "VideoCaptureFunctionUI"

    const-string v1, "Video intent entered VideoCaptureFunctionUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 124
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 130
    return-void
.end method

.method public quit()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "VideoCaptureFunctionUI"

    const-string/jumbo v1, "restore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 87
    return-void
.end method

.method public showScreen([I)V
    .locals 2
    .param p1, "exclude"    # [I

    .prologue
    .line 105
    const-string v0, "VideoCaptureFunctionUI"

    const-string/jumbo v1, "showScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method
