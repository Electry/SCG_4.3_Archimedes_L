.class Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$7;
.super Landroid/os/Handler;
.source "SettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V
    .locals 0

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$7;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1567
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1568
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1575
    :goto_0
    return-void

    .line 1570
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$7;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mProSettingWheelUI:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1300(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->rotationView()V

    goto :goto_0

    .line 1568
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
