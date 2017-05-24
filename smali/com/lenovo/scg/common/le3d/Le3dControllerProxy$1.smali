.class Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$1;
.super Landroid/os/Handler;
.source "Le3dControllerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$1;->this$0:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$1;->this$0:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    iget v2, v2, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->MSG_RUNNABLE:I

    if-ne v1, v2, :cond_0

    .line 34
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 35
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 40
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string/jumbo v1, "tyl"

    const-string v2, "initHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$1;->this$0:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->onHandleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
