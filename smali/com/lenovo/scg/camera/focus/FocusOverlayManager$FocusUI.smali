.class public interface abstract Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/FocusOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FocusUI"
.end annotation


# virtual methods
.method public abstract clearFocus()V
.end method

.method public abstract hasFaces()Z
.end method

.method public abstract isInAE(II)Z
.end method

.method public abstract isInAF(II)Z
.end method

.method public abstract isInside(II)Z
.end method

.method public abstract onFocusFailed(Z)V
.end method

.method public abstract onFocusStarted(Z)V
.end method

.method public abstract onFocusSucceeded(Z)V
.end method

.method public abstract onInfinityStarted()V
.end method

.method public abstract onMeteringStarted()V
.end method

.method public abstract pauseFaceDetection()V
.end method

.method public abstract resumeFaceDetection()V
.end method

.method public abstract setFocusAndFaceCanVisible(Z)V
.end method

.method public abstract setFocusPosition(II)V
.end method

.method public abstract setFocusPosition2(II)V
.end method

.method public abstract showAeAfDifferLockAnim()V
.end method

.method public abstract showAeAfLockAnim()V
.end method

.method public abstract showTouchCaptureAnim()V
.end method

.method public abstract startFocusAnimation()V
.end method
