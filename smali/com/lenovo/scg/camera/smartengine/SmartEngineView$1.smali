.class Lcom/lenovo/scg/camera/smartengine/SmartEngineView$1;
.super Ljava/util/TimerTask;
.source "SmartEngineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    const-string v1, "[smart_app]SmartEngineView"

    const-string v2, "kbg374, run listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 257
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 258
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$000(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    return-void
.end method
