.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$3;
.super Ljava/lang/Object;
.source "ShowModeWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initTopModeTextView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$3;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$3;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->hideGaussBlur2DBitmap()V

    .line 508
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$3;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1400(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$3;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startChangeFuncAnim()V

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$3;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startChangeFuncAnim()V

    goto :goto_0
.end method

.method public onPressDown(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 503
    return-void
.end method

.method public onPressUp(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 499
    return-void
.end method
