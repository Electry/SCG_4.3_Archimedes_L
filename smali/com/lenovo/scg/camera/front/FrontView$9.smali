.class Lcom/lenovo/scg/camera/front/FrontView$9;
.super Ljava/lang/Object;
.source "FrontView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontView;->startSupplyCaptureAnimation(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontView;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView$9;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 750
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 751
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 752
    new-instance v1, Lcom/lenovo/scg/camera/front/FrontView$9$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontView$9$1;-><init>(Lcom/lenovo/scg/camera/front/FrontView$9;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 769
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView$9;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mWhiteView:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontView;->access$900(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 770
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 774
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 742
    sput-boolean v3, Lcom/lenovo/scg/camera/front/FrontUtil;->sShowBeautyRect:Z

    .line 743
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$9;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    const v1, 0x7f0f005c

    const/16 v2, 0x9c4

    # invokes: Lcom/lenovo/scg/camera/front/FrontView;->showTip(IIII)V
    invoke-static {v0, v1, v3, v3, v2}, Lcom/lenovo/scg/camera/front/FrontView;->access$800(Lcom/lenovo/scg/camera/front/FrontView;IIII)V

    .line 744
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$9;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->updateScreenBrightness2Max()V

    .line 745
    return-void
.end method
