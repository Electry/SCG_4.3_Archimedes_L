.class Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$3;
.super Ljava/lang/Object;
.source "PhotoUndoRedoFrame.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->startUndoRedoViewOutAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$3;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$3;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->hideUndoRedoView()V

    .line 478
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$3;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->startEditTopViewsInAnim()V

    .line 479
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 483
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 490
    return-void
.end method
