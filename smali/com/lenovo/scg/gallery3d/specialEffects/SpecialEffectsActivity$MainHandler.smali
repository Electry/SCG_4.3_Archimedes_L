.class Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;
.super Landroid/os/Handler;
.source "SpecialEffectsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;-><init>(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 358
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->fullScroll(I)Z

    .line 359
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->invalidate()V

    .line 360
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->EFFECT_EFFECTS_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentRotateDegree:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->rotateBitmaps(I)V

    .line 367
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentRotateDegree:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->rotateBitmaps(I)V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->MAGIC_EFFECTS_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentRotateDegree:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->rotateBitmaps(I)V

    goto :goto_1

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->LENS_EFFECTS_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentRotateDegree:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->rotateBitmaps(I)V

    goto :goto_1

    .line 372
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentRotateDegree:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->rotateBitmaps(I)V

    goto/16 :goto_0

    .line 377
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setResult(ILandroid/content/Intent;)V

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->finish()V

    goto/16 :goto_0

    .line 381
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showExitDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$2000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    goto/16 :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
