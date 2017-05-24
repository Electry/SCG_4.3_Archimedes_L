.class Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$2;
.super Ljava/lang/Object;
.source "TutorialWelcomePage.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->startNextStepAnim()V
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
    .line 108
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    # invokes: Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->startHideAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->access$100(Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;)V

    .line 122
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 117
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 112
    return-void
.end method
