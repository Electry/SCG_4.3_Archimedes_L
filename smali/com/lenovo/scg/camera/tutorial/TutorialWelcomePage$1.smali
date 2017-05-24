.class Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$1;
.super Ljava/lang/Object;
.source "TutorialWelcomePage.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    # invokes: Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->startNextStepAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->access$000(Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;)V

    .line 90
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 85
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 80
    return-void
.end method
