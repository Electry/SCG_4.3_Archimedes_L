.class Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;
.super Ljava/lang/Object;
.source "TiltShiftView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 378
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 383
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMode:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->LINE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    if-eq v0, v1, :cond_0

    .line 384
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_TiltShiftActivity"

    const-string v2, "action_TiltShiftActivity_click_line_btn"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->showTopBar()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$800(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    .line 388
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->changeLineIcon()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$1500(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    .line 389
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->LINE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMode:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$402(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;Z)Z

    .line 391
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$1000(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;->setmIsCircle(Z)V

    .line 393
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->seekBar1:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$1200(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$1100(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->seekBar2:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$1400(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$1300(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 397
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->updateBitmap()V

    .line 398
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->postInvalidate()V

    .line 400
    :cond_0
    return-void
.end method
