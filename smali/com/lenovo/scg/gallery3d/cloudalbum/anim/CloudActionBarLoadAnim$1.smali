.class Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$1;
.super Ljava/lang/Object;
.source "CloudActionBarLoadAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->startBgAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->startAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)V

    .line 74
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 69
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 64
    return-void
.end method
