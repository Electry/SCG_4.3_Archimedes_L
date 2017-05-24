.class Lcom/lenovo/scg/camera/PreviewGestures$1;
.super Landroid/os/Handler;
.source "PreviewGestures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PreviewGestures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PreviewGestures;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PreviewGestures;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lenovo/scg/camera/PreviewGestures$1;->this$0:Lcom/lenovo/scg/camera/PreviewGestures;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures$1;->this$0:Lcom/lenovo/scg/camera/PreviewGestures;

    # setter for: Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->access$002(Lcom/lenovo/scg/camera/PreviewGestures;I)I

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures$1;->this$0:Lcom/lenovo/scg/camera/PreviewGestures;

    # invokes: Lcom/lenovo/scg/camera/PreviewGestures;->openPie()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PreviewGestures;->access$100(Lcom/lenovo/scg/camera/PreviewGestures;)V

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures$1;->this$0:Lcom/lenovo/scg/camera/PreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures$1;->this$0:Lcom/lenovo/scg/camera/PreviewGestures;

    # getter for: Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PreviewGestures;->access$200(Lcom/lenovo/scg/camera/PreviewGestures;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 123
    :cond_0
    return-void
.end method
