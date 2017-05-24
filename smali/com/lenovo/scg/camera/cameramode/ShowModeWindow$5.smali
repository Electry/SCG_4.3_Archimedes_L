.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$5;
.super Ljava/lang/Object;
.source "ShowModeWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startHorEntryAnimation()V
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
    .line 809
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$5;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$5;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startOtherFirstModeAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2700(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    .line 814
    return-void
.end method
