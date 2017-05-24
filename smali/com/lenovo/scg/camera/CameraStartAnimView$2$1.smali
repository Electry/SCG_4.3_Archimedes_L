.class Lcom/lenovo/scg/camera/CameraStartAnimView$2$1;
.super Ljava/lang/Object;
.source "CameraStartAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/CameraStartAnimView$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/CameraStartAnimView$2;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/CameraStartAnimView$2;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$2$1;->this$1:Lcom/lenovo/scg/camera/CameraStartAnimView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$2$1;->this$1:Lcom/lenovo/scg/camera/CameraStartAnimView$2;

    iget-object v1, v1, Lcom/lenovo/scg/camera/CameraStartAnimView$2;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # getter for: Lcom/lenovo/scg/camera/CameraStartAnimView;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$500(Lcom/lenovo/scg/camera/CameraStartAnimView;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f10015a

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 166
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_0
    return-void
.end method
