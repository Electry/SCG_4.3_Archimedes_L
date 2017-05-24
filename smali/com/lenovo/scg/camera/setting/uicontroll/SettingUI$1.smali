.class Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
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
    .line 364
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$1;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$1;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bInShowProWheel:Z

    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$1;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 373
    return-void
.end method
