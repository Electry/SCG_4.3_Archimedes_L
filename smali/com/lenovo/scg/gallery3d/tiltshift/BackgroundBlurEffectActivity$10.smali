.class Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$10;
.super Ljava/lang/Object;
.source "BackgroundBlurEffectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 430
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_TiltShiftActivity"

    const-string v2, "action_TiltShiftActivity_click_fold_button"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mControlLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$2200(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mUnfoldView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$2100(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->showTopBar()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$2300(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    .line 436
    return-void
.end method
