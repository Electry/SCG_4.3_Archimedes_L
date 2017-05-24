.class Lcom/lenovo/scg/camera/ui/PieRenderer$EndAction;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V
    .locals 0

    .prologue
    .line 2217
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$EndAction;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/ui/PieRenderer$1;

    .prologue
    .line 2217
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer$EndAction;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2222
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndAction(), onAnimationEnd, mFocusCancelled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$EndAction;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCancelled:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1400(Lcom/lenovo/scg/camera/ui/PieRenderer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$EndAction;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCancelled:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1400(Lcom/lenovo/scg/camera/ui/PieRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$EndAction;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$EndAction;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1500(Lcom/lenovo/scg/camera/ui/PieRenderer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2226
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2230
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2234
    return-void
.end method
