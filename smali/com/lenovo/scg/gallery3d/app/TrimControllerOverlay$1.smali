.class Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay$1;
.super Ljava/lang/Object;
.source "TrimControllerOverlay.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->showPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay$1;->this$0:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay$1;->this$0:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    # invokes: Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->hidePlayButtonIfPlaying()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->access$000(Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;)V

    .line 73
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay$1;->this$0:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    # invokes: Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->hidePlayButtonIfPlaying()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->access$000(Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;)V

    .line 68
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 77
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 63
    return-void
.end method
