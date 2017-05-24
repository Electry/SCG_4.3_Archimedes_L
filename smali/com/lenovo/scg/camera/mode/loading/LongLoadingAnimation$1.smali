.class Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$1;
.super Ljava/lang/Object;
.source "LongLoadingAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startBgAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$1;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$1;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # invokes: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$000(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)V

    .line 115
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 107
    return-void
.end method
