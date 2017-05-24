.class Lcom/lenovo/scg/gallery3d/ui/LeftPanel$3;
.super Ljava/lang/Object;
.source "LeftPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LeftPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mLeftMenuBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->access$300(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 251
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 246
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 242
    return-void
.end method
