.class Lcom/lenovo/scg/camera/front/FrontSettingPanel$6;
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
    .line 292
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$6;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 307
    const-string v0, "FrontSettingPanel"

    const-string v1, "mVideoPanelFadeInAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$6;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$200(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$6;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$100(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 310
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 303
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 296
    const-string v0, "FrontSettingPanel"

    const-string v1, "mVideoPanelFadeInAnimation start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$6;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$200(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$6;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$100(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 299
    return-void
.end method
