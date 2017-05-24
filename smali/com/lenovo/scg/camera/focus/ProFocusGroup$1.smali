.class Lcom/lenovo/scg/camera/focus/ProFocusGroup$1;
.super Landroid/os/Handler;
.source "ProFocusGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/ProFocusGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/ProFocusGroup;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/ProFocusGroup;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup$1;->this$0:Lcom/lenovo/scg/camera/focus/ProFocusGroup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup$1;->this$0:Lcom/lenovo/scg/camera/focus/ProFocusGroup;

    # invokes: Lcom/lenovo/scg/camera/focus/ProFocusGroup;->unlockFocus()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->access$000(Lcom/lenovo/scg/camera/focus/ProFocusGroup;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
