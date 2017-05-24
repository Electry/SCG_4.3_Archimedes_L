.class Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;
.super Ljava/lang/Object;
.source "SpecialEffectsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 445
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsClicked:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOkView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 449
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsClicked:Z
    invoke-static {v3, v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2102(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Z)Z

    .line 450
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOkView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 451
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCancelView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 453
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v4, "category_effect"

    const-string v5, "action_effect_save_btn"

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 457
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->startPhotoPageAcitivity()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    .line 589
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateArrowImageView()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$5000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    goto :goto_0

    .line 458
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCancelView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne p1, v3, :cond_4

    .line 459
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsClicked:Z
    invoke-static {v3, v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2102(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Z)Z

    .line 460
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCancelView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 461
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOkView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 463
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v4, "category_effect"

    const-string v5, "action_effect_cancel_btn"

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 467
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setResult(ILandroid/content/Intent;)V

    .line 468
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsCancel:Z
    invoke-static {v3, v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2502(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Z)Z

    .line 473
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->finish()V

    goto :goto_1

    .line 474
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMagicEffectsViews:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-ne p1, v3, :cond_5

    .line 477
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v4, "category_effect"

    const-string v5, "action_effect_magic_btn"

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 480
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 481
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020628

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0143

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->MAGIC_EFFECTS_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1500()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$902(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 487
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 488
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->removeAllSecondEffects()V

    .line 489
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->initEffects()V

    goto/16 :goto_1

    .line 490
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLensEffectsViews:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-ne p1, v3, :cond_6

    .line 493
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v4, "category_effect"

    const-string v5, "action_effect_lens_btn"

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 496
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 497
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020626

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0140

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->LENS_EFFECTS_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1700()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$902(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 501
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 502
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->removeAllSecondEffects()V

    .line 503
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->initEffects()V

    goto/16 :goto_1

    .line 504
    :cond_6
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectEffectsViews:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-ne p1, v3, :cond_7

    .line 507
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v4, "category_effect"

    const-string v5, "action_effect_effect_btn"

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 510
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 511
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020624

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0139

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->EFFECT_EFFECTS_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1000()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$902(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 517
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->removeAllSecondEffects()V

    .line 518
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->initEffects()V

    goto/16 :goto_1

    .line 519
    :cond_7
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRotateView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne p1, v3, :cond_12

    .line 522
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v4, "category_effect"

    const-string v5, "action_effect_rotateright_btn"

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 526
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3302(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 527
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getScaleValue()F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v0

    .line 528
    .local v0, "scale":F
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5a

    rem-int/lit16 v4, v4, 0xb4

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3502(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;I)I

    .line 529
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3502(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;I)I

    .line 530
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_c

    .line 531
    :cond_8
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 532
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 537
    :goto_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 538
    const/4 v2, 0x0

    .line 539
    .local v2, "transWidth":F
    const/4 v1, 0x0

    .line 540
    .local v1, "transHeight":F
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_d

    .line 541
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapHeight:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScreenWidth:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapHeight:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float v2, v3, v4

    .line 542
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSoureViewHeight:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapWidth:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    div-float v1, v3, v7

    .line 553
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 554
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 555
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 556
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mPreviousSourceView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 557
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mPreviousSourceView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 558
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 561
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->EFFECT_EFFECTS_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 562
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->rotateBitmaps(I)V

    .line 568
    :cond_a
    :goto_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 569
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->rotateBitmaps(I)V

    .line 571
    :cond_b
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentRotateDegree:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1302(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;I)I

    .line 572
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v4

    # invokes: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateOriginalView(I)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;I)V

    goto/16 :goto_1

    .line 534
    .end local v1    # "transHeight":F
    .end local v2    # "transWidth":F
    :cond_c
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 535
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_2

    .line 543
    .restart local v1    # "transHeight":F
    .restart local v2    # "transWidth":F
    :cond_d
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v3

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_e

    .line 544
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapWidth:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScreenWidth:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapWidth:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float v2, v3, v4

    .line 545
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapHeight:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSoureViewHeight:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapHeight:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float v1, v3, v4

    goto/16 :goto_3

    .line 546
    :cond_e
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_f

    .line 547
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScreenWidth:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapHeight:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    div-float v2, v3, v7

    .line 548
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapWidth:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSoureViewHeight:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapWidth:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float v1, v3, v4

    goto/16 :goto_3

    .line 549
    :cond_f
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v3

    if-nez v3, :cond_9

    .line 550
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScreenWidth:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapWidth:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float v2, v3, v7

    .line 551
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSoureViewHeight:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapHeight:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float v1, v3, v7

    goto/16 :goto_3

    .line 563
    :cond_10
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->MAGIC_EFFECTS_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1500()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 564
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->rotateBitmaps(I)V

    goto/16 :goto_4

    .line 565
    :cond_11
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->LENS_EFFECTS_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1700()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 566
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->rotateBitmaps(I)V

    goto/16 :goto_4

    .line 573
    .end local v0    # "scale":F
    .end local v1    # "transHeight":F
    .end local v2    # "transWidth":F
    :cond_12
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindButtons:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 574
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_13

    .line 575
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 576
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateSpecialKindButtons()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    .line 577
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->resetSecondEffectsContainerLayout()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    .line 579
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 580
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020949

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 581
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02094d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDragOut:Z
    invoke-static {v3, v6}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4902(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Z)Z

    goto/16 :goto_1

    .line 585
    :cond_13
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method
