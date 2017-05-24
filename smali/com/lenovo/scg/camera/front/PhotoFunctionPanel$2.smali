.class Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$2;
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
    .line 157
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$2;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 171
    const-string v0, "PhotoFunctionPanel"

    const-string v1, "mFrontFunctionFadeInAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$2;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setClickable(Z)V

    .line 173
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 167
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 160
    const-string v0, "PhotoFunctionPanel"

    const-string v1, "mFrontFunctionFadeInAnimation start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$2;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setClickable(Z)V

    .line 162
    return-void
.end method
