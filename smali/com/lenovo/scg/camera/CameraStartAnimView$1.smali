.class Lcom/lenovo/scg/camera/CameraStartAnimView$1;
.super Ljava/lang/Object;
.source "CameraStartAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/CameraStartAnimView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/CameraStartAnimView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$1;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$1;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # invokes: Lcom/lenovo/scg/camera/CameraStartAnimView;->recycleImage()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$000(Lcom/lenovo/scg/camera/CameraStartAnimView;)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$1;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # invokes: Lcom/lenovo/scg/camera/CameraStartAnimView;->checkImage()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$100(Lcom/lenovo/scg/camera/CameraStartAnimView;)V

    .line 133
    return-void
.end method
