.class Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$1;
.super Landroid/os/Handler;
.source "MiniCameraZoomBarCanver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$1;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 80
    :pswitch_0
    const-string v0, "ZoomBarCanver"

    const-string v1, "handleMessage:MSG_DESTORY_ZOOM_BAR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$1;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->destory()V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
