.class Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$4;
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
    .line 329
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 333
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_TiltShiftActivity"

    const-string v2, "action_TiltShiftActivity_click_unfold_button"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mUnfoldView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$600(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mControlLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$700(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->showTopBar()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$800(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    .line 339
    return-void
.end method
