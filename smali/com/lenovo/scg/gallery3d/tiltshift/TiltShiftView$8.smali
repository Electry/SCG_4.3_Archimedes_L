.class Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$8;
.super Ljava/lang/Object;
.source "TiltShiftView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->dealwithViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 416
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekBar1 progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I
    invoke-static {v0, p2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$1102(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;I)I

    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->postInvalidate()V

    .line 419
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$402(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;Z)Z

    .line 408
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_TiltShiftActivity"

    const-string v2, "action_TiltShiftActivity_click_size_progress"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$402(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;Z)Z

    .line 424
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->updateBitmap()V

    .line 426
    return-void
.end method
