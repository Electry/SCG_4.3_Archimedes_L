.class Lcom/lenovo/scg/camera/mode/SmartMode$1;
.super Landroid/os/Handler;
.source "SmartMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/SmartMode;->enter(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/SmartMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/SmartMode;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/SmartMode$1;->this$0:Lcom/lenovo/scg/camera/mode/SmartMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 55
    :pswitch_0
    const-string v0, "SmartMode"

    const-string v1, "kbg374, MSG_SMART_INIT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v0, "handleMessage enterSmartEngine"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode$1;->this$0:Lcom/lenovo/scg/camera/mode/SmartMode;

    # invokes: Lcom/lenovo/scg/camera/mode/SmartMode;->enterSmartEngine()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/SmartMode;->access$000(Lcom/lenovo/scg/camera/mode/SmartMode;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
