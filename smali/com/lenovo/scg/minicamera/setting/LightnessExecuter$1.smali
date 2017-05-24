.class Lcom/lenovo/scg/minicamera/setting/LightnessExecuter$1;
.super Landroid/os/Handler;
.source "LightnessExecuter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter$1;->this$0:Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter$1;->this$0:Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;

    # invokes: Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;->updateScreenBrightness()V
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;->access$000(Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method
