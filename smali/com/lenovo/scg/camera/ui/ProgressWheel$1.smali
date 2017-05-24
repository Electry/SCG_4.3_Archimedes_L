.class Lcom/lenovo/scg/camera/ui/ProgressWheel$1;
.super Landroid/os/Handler;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/ProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/ProgressWheel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/ProgressWheel;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel$1;->this$0:Lcom/lenovo/scg/camera/ui/ProgressWheel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel$1;->this$0:Lcom/lenovo/scg/camera/ui/ProgressWheel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->invalidate()V

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel$1;->this$0:Lcom/lenovo/scg/camera/ui/ProgressWheel;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel$1;->this$0:Lcom/lenovo/scg/camera/ui/ProgressWheel;

    iget v1, v0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel$1;->this$0:Lcom/lenovo/scg/camera/ui/ProgressWheel;

    # getter for: Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinSpeed:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->access$000(Lcom/lenovo/scg/camera/ui/ProgressWheel;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel$1;->this$0:Lcom/lenovo/scg/camera/ui/ProgressWheel;

    iget v0, v0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel$1;->this$0:Lcom/lenovo/scg/camera/ui/ProgressWheel;

    iput v4, v0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel$1;->this$0:Lcom/lenovo/scg/camera/ui/ProgressWheel;

    # getter for: Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->access$200(Lcom/lenovo/scg/camera/ui/ProgressWheel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel$1;->this$0:Lcom/lenovo/scg/camera/ui/ProgressWheel;

    # getter for: Lcom/lenovo/scg/camera/ui/ProgressWheel;->delayMillis:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->access$100(Lcom/lenovo/scg/camera/ui/ProgressWheel;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 99
    :cond_1
    return-void
.end method
