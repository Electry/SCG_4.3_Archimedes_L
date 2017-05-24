.class Lcom/lenovo/scg/camera/TimeOutProtect$1;
.super Ljava/util/TimerTask;
.source "TimeOutProtect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/TimeOutProtect;->resetTimer(Lcom/lenovo/scg/camera/TimeOutProtect$OnTimeOutListener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/TimeOutProtect;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/TimeOutProtect;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/camera/TimeOutProtect$1;->this$0:Lcom/lenovo/scg/camera/TimeOutProtect;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    const-string v1, "TimeOutProtect"

    const-string v2, "kbg374, run listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 45
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 46
    iget-object v1, p0, Lcom/lenovo/scg/camera/TimeOutProtect$1;->this$0:Lcom/lenovo/scg/camera/TimeOutProtect;

    # getter for: Lcom/lenovo/scg/camera/TimeOutProtect;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/TimeOutProtect;->access$000(Lcom/lenovo/scg/camera/TimeOutProtect;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    return-void
.end method
