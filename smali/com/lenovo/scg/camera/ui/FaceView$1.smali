.class Lcom/lenovo/scg/camera/ui/FaceView$1;
.super Landroid/os/Handler;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/FaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/FaceView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/FaceView;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/FaceView$1;->this$0:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView$1;->this$0:Lcom/lenovo/scg/camera/ui/FaceView;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/ui/FaceView;->mStateSwitchPending:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/FaceView;->access$002(Lcom/lenovo/scg/camera/ui/FaceView;Z)Z

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView$1;->this$0:Lcom/lenovo/scg/camera/ui/FaceView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView$1;->this$0:Lcom/lenovo/scg/camera/ui/FaceView;

    # getter for: Lcom/lenovo/scg/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/FaceView;->access$200(Lcom/lenovo/scg/camera/ui/FaceView;)[Landroid/hardware/Camera$Face;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/FaceView;->access$102(Lcom/lenovo/scg/camera/ui/FaceView;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView$1;->this$0:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/FaceView;->invalidate()V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
