.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$9;
.super Ljava/lang/Object;
.source "ShowModeWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startChangeFuncAnim()V
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
    .line 1701
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$9;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$9;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2902(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Z)Z

    .line 1706
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$9;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$9;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$3500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->showSwitchModeWindow(I)V

    .line 1707
    return-void
.end method
