.class Lcom/lenovo/scg/camera/rewind/RewindSelectView$3;
.super Ljava/lang/Object;
.source "RewindSelectView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/rewind/RewindSelectView;->startAnimP2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$3;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$3;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # invokes: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->endAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$600(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)V

    .line 382
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 377
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 373
    return-void
.end method
