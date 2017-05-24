.class Lcom/lenovo/scg/camera/ActivityBase$1;
.super Landroid/os/Handler;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ActivityBase;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lenovo/scg/camera/ActivityBase$1;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$1;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ActivityBase;->updateStorageHint()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
