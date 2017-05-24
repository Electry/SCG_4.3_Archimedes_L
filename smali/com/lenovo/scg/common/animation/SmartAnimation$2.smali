.class Lcom/lenovo/scg/common/animation/SmartAnimation$2;
.super Ljava/lang/Object;
.source "SmartAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/animation/SmartAnimation;->startSmartAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/SmartAnimation;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$2;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$2;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    # getter for: Lcom/lenovo/scg/common/animation/SmartAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->access$400(Lcom/lenovo/scg/common/animation/SmartAnimation;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 150
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 145
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 141
    return-void
.end method
