.class Lcom/lenovo/scg/camera/way/SmileWay$1;
.super Landroid/os/Handler;
.source "SmileWay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/SmileWay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/SmileWay;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/SmileWay;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/SmileWay$1;->this$0:Lcom/lenovo/scg/camera/way/SmileWay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/SmileWay$1;->this$0:Lcom/lenovo/scg/camera/way/SmileWay;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/camera/way/SmileWay;->mCaptureEnable:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/way/SmileWay;->access$002(Lcom/lenovo/scg/camera/way/SmileWay;Z)Z

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
