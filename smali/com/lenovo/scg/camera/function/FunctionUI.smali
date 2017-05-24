.class public abstract Lcom/lenovo/scg/camera/function/FunctionUI;
.super Ljava/lang/Object;
.source "FunctionUI.java"


# static fields
.field public static final AUTO:I = 0x0

.field public static final FRONT_CAMERA:I = 0x4

.field public static final IMAGE_CAPTURE_INTENT:I = 0x2

.field public static final PRO:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VIDEO_CAPTURE_INTENT:I = 0x3


# instance fields
.field protected mFunctionPara:Ljava/lang/Object;

.field protected mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mUI:Lcom/lenovo/scg/camera/PhotoUI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearScreen([I)V
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract enter()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public onCaptureEnd()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)V
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)V
.end method

.method public abstract quit()V
.end method

.method public setFunctionPara(Ljava/lang/Object;)V
    .locals 1
    .param p1, "modePara"    # Ljava/lang/Object;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/FunctionUI;->mFunctionPara:Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUI;->mFunctionPara:Ljava/lang/Object;

    instance-of v0, v0, Lcom/lenovo/scg/camera/function/FunctionUIPara;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUI;->mFunctionPara:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/camera/function/FunctionUIPara;

    iget-object v0, v0, Lcom/lenovo/scg/camera/function/FunctionUIPara;->module:Lcom/lenovo/scg/camera/PhotoModule;

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUI;->mRootView:Landroid/view/ViewGroup;

    .line 46
    :cond_0
    return-void
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract showScreen([I)V
.end method
