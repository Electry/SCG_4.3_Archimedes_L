.class Lcom/lenovo/scg/camera/front/FrontView$9$1;
.super Ljava/lang/Object;
.source "FrontView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontView$9;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/front/FrontView$9;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontView$9;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView$9$1;->this$1:Lcom/lenovo/scg/camera/front/FrontView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$9$1;->this$1:Lcom/lenovo/scg/camera/front/FrontView$9;

    iget-object v0, v0, Lcom/lenovo/scg/camera/front/FrontView$9;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->updateScreenBrightness()V

    .line 762
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/camera/front/FrontUtil;->sShowBeautyRect:Z

    .line 763
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 767
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 757
    return-void
.end method
