.class Lcom/lenovo/scg/camera/way/TimerUI$3;
.super Ljava/lang/Object;
.source "TimerUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/TimerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/TimerUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/TimerUI;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/TimerUI$3;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI$3;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/TimerUI;->access$600(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 213
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 219
    return-void
.end method
