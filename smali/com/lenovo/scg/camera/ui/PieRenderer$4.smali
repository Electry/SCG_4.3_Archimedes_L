.class Lcom/lenovo/scg/camera/ui/PieRenderer$4;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/PieRenderer;->moveSelection(Lcom/lenovo/scg/camera/ui/PieItem;Lcom/lenovo/scg/camera/ui/PieItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V
    .locals 0

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$4;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$4;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mSlice:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1102(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;)Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    .line 1201
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1205
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1209
    return-void
.end method
