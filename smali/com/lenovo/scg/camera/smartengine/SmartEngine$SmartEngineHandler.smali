.class Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;
.super Landroid/os/Handler;
.source "SmartEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SmartEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartEngineHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngine;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/smartengine/SmartEngine;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    .line 88
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;
    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->access$000(Lcom/lenovo/scg/camera/smartengine/SmartEngine;)[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v0, "[smart_app]SmartEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage begin msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_1
    const-string v0, "[smart_app]SmartEngine"

    const-string v1, "handleMessage end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lenovo/scg/camera/smartengine/SmartEngine;->onIVCChange(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->access$100(Lcom/lenovo/scg/camera/smartengine/SmartEngine;I)V

    goto :goto_1

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lenovo/scg/camera/smartengine/SmartEngine;->onFaceChange(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->access$200(Lcom/lenovo/scg/camera/smartengine/SmartEngine;I)V

    goto :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
