.class Lcn/jingling/lib/camera/FillLightCap$3;
.super Ljava/lang/Object;
.source "FillLightCap.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/camera/FillLightCap;->startLightingTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/camera/FillLightCap;


# direct methods
.method constructor <init>(Lcn/jingling/lib/camera/FillLightCap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/camera/FillLightCap$3;->this$0:Lcn/jingling/lib/camera/FillLightCap;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 77
    iget-object v0, p0, Lcn/jingling/lib/camera/FillLightCap$3;->this$0:Lcn/jingling/lib/camera/FillLightCap;

    # getter for: Lcn/jingling/lib/camera/FillLightCap;->mFillLightView:Landroid/view/View;
    invoke-static {v0}, Lcn/jingling/lib/camera/FillLightCap;->access$2(Lcn/jingling/lib/camera/FillLightCap;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 84
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 81
    return-void
.end method
