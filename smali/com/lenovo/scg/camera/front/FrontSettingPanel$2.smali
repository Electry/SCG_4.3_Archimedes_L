.class Lcom/lenovo/scg/camera/front/FrontSettingPanel$2;
.super Ljava/lang/Object;
.source "FrontSettingPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontSettingPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$2;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 214
    const-string v0, "FrontSettingPanel"

    const-string v1, "mFrontSettingFadeInAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$2;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->setClickable(Z)V

    .line 216
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 210
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 203
    const-string v0, "FrontSettingPanel"

    const-string v1, "mFrontSettingFadeInAnimation start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$2;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->setClickable(Z)V

    .line 205
    return-void
.end method
