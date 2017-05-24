.class Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;
.super Landroid/os/Handler;
.source "PhotoModuleSuperEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 907
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 908
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_2

    .line 909
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # invokes: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$500(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->reloadValue()V

    .line 910
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const/4 v1, -0x1

    sget-object v2, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->INITIAL:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setCameraParameters(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V

    .line 911
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$600(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->UPDATE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 925
    :cond_0
    :goto_0
    const/4 v0, 0x5

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 926
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$1200(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->onChangeFunctionDone(I)V

    .line 928
    :cond_1
    return-void

    .line 912
    :cond_2
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    .line 913
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$700(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setFocusAndFaceCanVisible(Z)V

    .line 914
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # invokes: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->startModeMaskAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$800(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    goto :goto_0

    .line 915
    :cond_3
    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_4

    .line 916
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->destroyCameraModeMaskFrame()V

    .line 917
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # invokes: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->changeFunctionAfterAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$900(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    .line 918
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$1000(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setFocusAndFaceCanVisible(Z)V

    .line 919
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # invokes: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->resetChangeFunctionFlag()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$1100(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    goto :goto_0

    .line 920
    :cond_4
    const/4 v0, 0x4

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 921
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setIsCanChangeFunction(Z)V

    goto :goto_0
.end method
