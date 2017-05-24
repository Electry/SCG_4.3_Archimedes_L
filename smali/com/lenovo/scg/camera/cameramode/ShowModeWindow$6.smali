.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$6;
.super Ljava/lang/Object;
.source "ShowModeWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startOtherSecondModeAnim()V
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
    .line 899
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$6;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 3

    .prologue
    .line 903
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$6;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->obj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2800(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$6;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const/4 v2, 0x0

    # setter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2902(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Z)Z

    .line 905
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$6;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInitAllProModesCompleted:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$3000(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$6;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->showAllModeViews()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$3100(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    .line 908
    :cond_0
    monitor-exit v1

    .line 909
    return-void

    .line 908
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
