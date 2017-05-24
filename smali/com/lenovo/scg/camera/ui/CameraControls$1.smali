.class Lcom/lenovo/scg/camera/ui/CameraControls$1;
.super Ljava/lang/Object;
.source "CameraControls.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/CameraControls;->initDisplayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/CameraControls;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/CameraControls;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CameraControls$1;->this$0:Lcom/lenovo/scg/camera/ui/CameraControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls$1;->this$0:Lcom/lenovo/scg/camera/ui/CameraControls;

    # invokes: Lcom/lenovo/scg/camera/ui/CameraControls;->checkLayoutFlip()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/CameraControls;->access$000(Lcom/lenovo/scg/camera/ui/CameraControls;)V

    .line 72
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 76
    return-void
.end method
