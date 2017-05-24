.class Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;
.super Ljava/lang/Object;
.source "VideoSmartFocusGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->doSuperSingleTapOnUIThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;II)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    iput p2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->val$x:I

    iput p3, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "VideoSmartFocusGroup"

    const-string v1, "initializeFocusAreas"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    iget v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->val$x:I

    iget v2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->initializeFocusAreas(II)V

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    iget v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->val$x:I

    iget v2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->initializeMeteringAreas(II)V

    .line 321
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    iget-object v0, v0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->val$x:I

    iget v2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->val$y:I

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->setFocusPosition(II)V

    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    iget-object v0, v0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->autoFocus()Z

    .line 332
    :cond_0
    return-void
.end method
