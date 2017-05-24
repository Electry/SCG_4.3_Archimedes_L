.class Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$3;
.super Ljava/lang/Object;
.source "PhotoFunctionPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$3;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 190
    const-string v1, "PhotoFunctionPanel"

    const-string v2, "mFrontFunctionFadeOutAnimation end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$3;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setClickable(Z)V

    .line 192
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$3;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$3;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$500(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->getNeedShowSupplyHint()Z

    move-result v0

    .line 196
    .local v0, "needShowSupplyHint":Z
    const-string/jumbo v1, "panhui1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "photoFunction, when hide, mNeedShowSupplyHint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$3;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$500(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyHint()V

    .line 201
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 179
    const-string v0, "PhotoFunctionPanel"

    const-string v1, "mFrontFunctionFadeOutAnimation start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$3;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setClickable(Z)V

    .line 181
    return-void
.end method
