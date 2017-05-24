.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$7;
.super Ljava/lang/Object;
.source "ShowModeWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startEnterModeAnimation(Lcom/lenovo/scg/common/le3d/Le3dView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

.field final synthetic val$modeView:Lcom/lenovo/scg/common/le3d/Le3dView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$7;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    iput-object p2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$7;->val$modeView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 4

    .prologue
    .line 968
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$7;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsEntryMode:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$3200(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$7;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const/4 v3, 0x1

    # setter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsEntryMode:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$3202(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Z)Z

    .line 972
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$7;->val$modeView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->getID()I

    move-result v1

    .line 973
    .local v1, "id":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$7;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mCameraModeList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$400(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/cameramode/CameraMode;

    .line 975
    .local v0, "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    if-eqz v0, :cond_0

    .line 976
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$7;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$7;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$3300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->enterMode(Lcom/lenovo/scg/camera/cameramode/CameraMode;I)V

    goto :goto_0
.end method
