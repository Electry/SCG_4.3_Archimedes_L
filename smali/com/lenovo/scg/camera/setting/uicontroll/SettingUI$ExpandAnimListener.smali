.class Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ExpandAnimListener;
.super Ljava/lang/Object;
.source "SettingUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandAnimListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ExpandAnimListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ExpandAnimListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bInShowAnim:Z

    .line 755
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 761
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 767
    return-void
.end method
