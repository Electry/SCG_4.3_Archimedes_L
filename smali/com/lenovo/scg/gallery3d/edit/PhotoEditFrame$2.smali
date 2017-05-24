.class Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$2;
.super Ljava/lang/Object;
.source "PhotoEditFrame.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->startEditBarOutAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$1300(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->showUndoRedoFrame()V

    .line 488
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->startEffectViewsInAnim()V

    .line 489
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->makeAllEditButtonsClickable()V

    .line 490
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 494
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->makeAllEditButtonsUnclickable()V

    .line 499
    return-void
.end method
