.class Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$1;
.super Landroid/os/Handler;
.source "VideoSmartFocusGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$1;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    :pswitch_0
    return-void

    .line 60
    :pswitch_1
    const-string v0, "VideoSmartFocusGroup"

    const-string v1, "handleMessage: MSG_FACE_DISPERA_CONFIRM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$1;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    # invokes: Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->stopFaceTracking()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->access$000(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)V

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$1;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->onFaceDetected(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
