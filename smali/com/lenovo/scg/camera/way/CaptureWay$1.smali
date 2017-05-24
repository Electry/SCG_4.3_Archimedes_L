.class Lcom/lenovo/scg/camera/way/CaptureWay$1;
.super Landroid/os/Handler;
.source "CaptureWay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/CaptureWay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/CaptureWay;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/CaptureWay;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/CaptureWay$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWay;->clickShutterButton()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
