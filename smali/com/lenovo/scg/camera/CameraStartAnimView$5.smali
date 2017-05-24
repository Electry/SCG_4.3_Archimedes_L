.class Lcom/lenovo/scg/camera/CameraStartAnimView$5;
.super Ljava/lang/Object;
.source "CameraStartAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/CameraStartAnimView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/CameraStartAnimView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$5;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    iput-object p2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$5;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$5;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # invokes: Lcom/lenovo/scg/camera/CameraStartAnimView;->recycleImage()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$000(Lcom/lenovo/scg/camera/CameraStartAnimView;)V

    .line 646
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$5;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 647
    return-void
.end method
