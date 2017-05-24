.class Lcom/lenovo/scg/camera/CameraStartAnimView$2;
.super Landroid/os/Handler;
.source "CameraStartAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/CameraStartAnimView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/CameraStartAnimView;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$2;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 152
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$2;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # getter for: Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$200(Lcom/lenovo/scg/camera/CameraStartAnimView;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$2;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # getter for: Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$300(Lcom/lenovo/scg/camera/CameraStartAnimView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$2;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # getter for: Lcom/lenovo/scg/camera/CameraStartAnimView;->isInvisible:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$400(Lcom/lenovo/scg/camera/CameraStartAnimView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$2;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # getter for: Lcom/lenovo/scg/camera/CameraStartAnimView;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$600(Lcom/lenovo/scg/camera/CameraStartAnimView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/camera/CameraStartAnimView$2$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/CameraStartAnimView$2$1;-><init>(Lcom/lenovo/scg/camera/CameraStartAnimView$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$2;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$2;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # getter for: Lcom/lenovo/scg/camera/CameraStartAnimView;->mDrawCount:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$700(Lcom/lenovo/scg/camera/CameraStartAnimView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraStartAnimView;->onFrameDraw(I)V

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$2;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # operator++ for: Lcom/lenovo/scg/camera/CameraStartAnimView;->mDrawCount:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$708(Lcom/lenovo/scg/camera/CameraStartAnimView;)I

    .line 174
    :cond_1
    const-wide/16 v0, 0x18

    invoke-virtual {p0, v2, v0, v1}, Lcom/lenovo/scg/camera/CameraStartAnimView$2;->sendEmptyMessageDelayed(IJ)Z

    .line 177
    :cond_2
    return-void
.end method
