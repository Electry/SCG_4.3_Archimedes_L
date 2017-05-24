.class Lcom/lenovo/scg/common/ui/ScrollLayout$6;
.super Ljava/lang/Object;
.source "ScrollLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/ui/ScrollLayout;->startHideLastStepAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$6;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$6;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mIsInAnim:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$802(Lcom/lenovo/scg/common/ui/ScrollLayout;Z)Z

    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$6;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # invokes: Lcom/lenovo/scg/common/ui/ScrollLayout;->updateLayout()V
    invoke-static {v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$900(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    .line 249
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 240
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 236
    return-void
.end method
