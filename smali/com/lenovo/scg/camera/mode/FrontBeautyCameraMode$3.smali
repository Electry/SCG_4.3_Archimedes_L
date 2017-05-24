.class Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$3;
.super Landroid/os/Handler;
.source "FrontBeautyCameraMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$3;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 508
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 514
    :goto_0
    return-void

    .line 510
    :pswitch_0
    const-string v0, "FrontBeautyCameraMode"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$3;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->openBeautyCallBack()V

    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
