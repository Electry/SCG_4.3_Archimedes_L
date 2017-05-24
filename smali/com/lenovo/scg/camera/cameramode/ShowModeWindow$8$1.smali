.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8$1;
.super Ljava/lang/Object;
.source "ShowModeWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;)V
    .locals 0

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8$1;->this$1:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8$1;->this$1:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;

    iget-object v0, v0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->showAllModeViews()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$3100(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    .line 1588
    return-void
.end method
