.class Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$MainHandler;
.super Landroid/os/Handler;
.source "MiniCameraFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$MainHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    .line 92
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$MainHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->cancelAutoFocus()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
