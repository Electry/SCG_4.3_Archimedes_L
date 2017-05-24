.class Lcom/lenovo/scg/camera/ui/ZoomBarCanver$1;
.super Landroid/os/Handler;
.source "ZoomBarCanver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$1;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 100
    :pswitch_0
    const-string v0, "ZoomBarCanver"

    const-string v1, "handleMessage:MSG_DESTORY_ZOOM_BAR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v0, v1, :cond_0

    .line 102
    const-string v0, "ZoomBarCanver"

    const-string v1, "handleMessage:MSG_DESTORY_ZOOM_BAR : AEAF_DIFFER_LOCKED && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$1;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->destory()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
