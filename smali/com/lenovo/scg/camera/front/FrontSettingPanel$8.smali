.class Lcom/lenovo/scg/camera/front/FrontSettingPanel$8;
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
    .line 336
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$8;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 351
    const-string v0, "FrontSettingPanel"

    const-string v1, "mSupplyPanelFadeInAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$8;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$200(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$8;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$100(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 354
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 347
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 340
    const-string v0, "FrontSettingPanel"

    const-string v1, "mSupplyPanelFadeInAnimation start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$8;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$200(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$8;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$100(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 343
    return-void
.end method
