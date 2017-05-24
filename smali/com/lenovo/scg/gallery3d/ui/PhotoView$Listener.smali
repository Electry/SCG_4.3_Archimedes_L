.class public interface abstract Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract forceUnlockOrientation()V
.end method

.method public abstract getEditorActionBarHeight()I
.end method

.method public abstract getEditorActionBarWidth()I
.end method

.method public abstract getEditorBarStatus()Z
.end method

.method public abstract getIsInCamera()Z
.end method

.method public abstract getOrientationCompensation()I
.end method

.method public abstract isCanScroller()Z
.end method

.method public abstract lockOrientation()V
.end method

.method public abstract onActionBarAllowed(Z)V
.end method

.method public abstract onActionBarWanted()V
.end method

.method public abstract onCommitDeleteImage()V
.end method

.method public abstract onCurrentImageUpdated()V
.end method

.method public abstract onDeleteBrush(Lcom/lenovo/scg/gallery3d/data/Path;ILcom/lenovo/scg/gallery3d/data/Path;)V
.end method

.method public abstract onDeleteImage(Lcom/lenovo/scg/gallery3d/data/Path;I)V
.end method

.method public abstract onFilmModeChanged(Z)V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onPictureCenter(Z)V
.end method

.method public abstract onScroll(FFFF)Z
.end method

.method public abstract onSingleTapUp(II)V
.end method

.method public abstract onTouch(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onUndoBarVisibilityChanged(Z)V
.end method

.method public abstract onUndoDeleteImage()V
.end method

.method public abstract restoreOrientationState()V
.end method

.method public abstract saveOrientationState()V
.end method

.method public abstract stopSpeechPicPlay()V
.end method

.method public abstract unlockOrientation()V
.end method
