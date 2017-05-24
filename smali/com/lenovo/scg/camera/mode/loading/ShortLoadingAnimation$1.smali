.class Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$1;
.super Ljava/lang/Object;
.source "ShortLoadingAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->startAutoAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$1;->this$0:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$1;->this$0:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->access$000(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 132
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 129
    return-void
.end method
