.class Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$2;
.super Ljava/lang/Object;
.source "PhotoUndoRedoFrame.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->startUndoRedoViewsInAnim()V
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
    .line 430
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->makeUndoRedoViewsClickable()V

    .line 446
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 441
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 435
    return-void
.end method
