.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$10;
.super Ljava/lang/Object;
.source "ShowModeWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startCamerModeEntryAnim(Lcom/lenovo/scg/common/le3d/Le3dContainer;FFIII)V
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
    .line 1782
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$10;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 3

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$10;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->obj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2800(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1787
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$10;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const/4 v2, 0x0

    # setter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2902(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Z)Z

    .line 1788
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$10;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInitAllProModesCompleted:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$3000(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$10;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->showAllModeViews()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$3100(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    .line 1791
    :cond_0
    monitor-exit v1

    .line 1792
    return-void

    .line 1791
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
