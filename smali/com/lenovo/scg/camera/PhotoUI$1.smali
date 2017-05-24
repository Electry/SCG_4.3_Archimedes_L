.class Lcom/lenovo/scg/camera/PhotoUI$1;
.super Landroid/os/Handler;
.source "PhotoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoUI;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI$1;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$1;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mExitDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$000(Lcom/lenovo/scg/camera/PhotoUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$1;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # invokes: Lcom/lenovo/scg/camera/PhotoUI;->exitCamera()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$100(Lcom/lenovo/scg/camera/PhotoUI;)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$1;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->destroyCameraModeMaskFrame()V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
