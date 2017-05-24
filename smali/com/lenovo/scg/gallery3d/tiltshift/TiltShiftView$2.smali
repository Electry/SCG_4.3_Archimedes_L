.class Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$2;
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
    .line 307
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$2;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 312
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_TiltShiftActivity"

    const-string v2, "action_TiltShiftActivity_click_quit_btn"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$2;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsSaveOrCancle:Z

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$2;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$500(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->exitTiltShift()V

    .line 316
    return-void
.end method
