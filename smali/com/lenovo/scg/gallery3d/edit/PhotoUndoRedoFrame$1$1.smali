.class Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;
.super Ljava/lang/Object;
.source "PhotoUndoRedoFrame.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/net/Uri;)V
    .locals 2
    .param p1, "result"    # Landroid/net/Uri;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$300(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->resetToFullViewAnimation()V

    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->startUndoRedoViewOutAnim()V

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->startEffectsViewsOutAnim()V

    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isStartFromCameraOrContinuePics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->setPortrait()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->resetFilterStack()V

    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->hideProgressBar()V

    .line 373
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hideEditBar()V

    .line 374
    return-void
.end method
