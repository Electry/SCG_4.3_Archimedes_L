.class Lcom/lenovo/scg/camera/function/ProFunctionUI$1;
.super Landroid/os/Handler;
.source "ProFunctionUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/function/ProFunctionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/function/ProFunctionUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/function/ProFunctionUI;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ProFunctionUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 254
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 257
    .local v0, "modeNow":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v0, v1, :cond_2

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ProFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/ProFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ProFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/ProFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_2
    if-eqz v0, :cond_0

    .line 261
    const-string/jumbo v1, "will not show mShortcutView,mode=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    .end local v0    # "modeNow":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ProFunctionUI;

    iget-object v1, v1, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getSwitchToFrontBotton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ProFunctionUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->initShortcutView()V

    .line 271
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ProFunctionUI;

    # invokes: Lcom/lenovo/scg/camera/function/ProFunctionUI;->initProSmartUIView()V
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->access$100(Lcom/lenovo/scg/camera/function/ProFunctionUI;)V

    .line 272
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ProFunctionUI;

    iget-object v1, v1, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/PhotoUI;->displayScreen([I)V

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
