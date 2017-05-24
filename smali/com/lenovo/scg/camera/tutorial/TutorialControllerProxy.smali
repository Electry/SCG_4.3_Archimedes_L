.class public Lcom/lenovo/scg/camera/tutorial/TutorialControllerProxy;
.super Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
.source "TutorialControllerProxy.java"


# static fields
.field private static final CHANGE_FUNCTION:I = 0xbba

.field private static final DISPLAY_SCREEN_FLAG:Ljava/lang/String; = "DISPLAY_SCREEN_FLAG"

.field private static final HIDE_TUTORIAL_WINDOW:I = 0xbb9


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;-><init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V

    .line 20
    return-void
.end method


# virtual methods
.method public changeFunction()V
    .locals 2

    .prologue
    const/16 v1, 0xbba

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    return-void
.end method

.method public hideTutorialWindow(Z)V
    .locals 4
    .param p1, "displayScreen"    # Z

    .prologue
    const/16 v3, 0xbb9

    .line 41
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 42
    .local v1, "message":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "DISPLAY_SCREEN_FLAG"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 46
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 25
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 27
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    .local v0, "data":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 29
    .local v1, "displayScreen":Z
    if-eqz v0, :cond_0

    .line 30
    const-string v2, "DISPLAY_SCREEN_FLAG"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v2, Lcom/lenovo/scg/camera/tutorial/TutorialController;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialController;->hideTutorialWindow(Z)V

    goto :goto_0

    .line 35
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "displayScreen":Z
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v2, Lcom/lenovo/scg/camera/tutorial/TutorialController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/tutorial/TutorialController;->changeFunction()V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
