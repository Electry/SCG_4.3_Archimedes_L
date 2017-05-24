.class Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$1;
.super Ljava/lang/Object;
.source "CloudLoadingAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startBgAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)V

    .line 98
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 93
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 88
    return-void
.end method
