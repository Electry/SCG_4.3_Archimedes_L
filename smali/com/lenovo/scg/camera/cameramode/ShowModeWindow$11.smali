.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$11;
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
    .line 1795
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$11;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 3

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$11;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->obj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2800(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1800
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$11;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const/4 v2, 0x0

    # setter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2902(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Z)Z

    .line 1801
    monitor-exit v1

    .line 1802
    return-void

    .line 1801
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
