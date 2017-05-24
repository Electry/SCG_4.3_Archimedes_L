.class Lcom/lenovo/scg/camera/setting/SettingExecuter$1;
.super Landroid/os/Handler;
.source "SettingExecuter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/SettingExecuter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/SettingExecuter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/SettingExecuter;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter$1;->this$0:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 52
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter$1;->this$0:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateScreenBrightness([I)V

    goto :goto_0

    .line 56
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter$1;->this$0:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    # invokes: Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateScreenBrightness2Max()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->access$000(Lcom/lenovo/scg/camera/setting/SettingExecuter;)V

    goto :goto_0

    .line 60
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter$1;->this$0:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    # invokes: Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateScreenBrightness2Current()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->access$100(Lcom/lenovo/scg/camera/setting/SettingExecuter;)V

    goto :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x3000 -> :sswitch_2
    .end sparse-switch
.end method
