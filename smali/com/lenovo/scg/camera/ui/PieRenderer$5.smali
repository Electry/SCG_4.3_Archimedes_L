.class Lcom/lenovo/scg/camera/ui/PieRenderer$5;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/PieRenderer;->openCurrentItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

.field final synthetic val$ci:Lcom/lenovo/scg/camera/ui/PieItem;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieItem;)V
    .locals 0

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$5;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    iput-object p2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$5;->val$ci:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 1234
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$5;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1202(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;)Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    .line 1235
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$5;->val$ci:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/PieItem;->setSelected(Z)V

    .line 1236
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$5;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # setter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpening:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1302(Lcom/lenovo/scg/camera/ui/PieRenderer;Z)Z

    .line 1237
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1241
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1230
    return-void
.end method
