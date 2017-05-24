.class Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;
.super Ljava/lang/Object;
.source "SpecialEffectsActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->startSpecialBitmapShowAnim(Landroid/graphics/Bitmap;)V
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
    .line 936
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 940
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mPreviousSourceView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$4200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$5100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 941
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$5100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 942
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 943
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$302(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$5100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$302(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 946
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 947
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->setIsCanClick(Z)V

    .line 953
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->setIsCanClick(Z)V

    .line 956
    :cond_2
    return-void

    .line 948
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 949
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->setIsCanClick(Z)V

    goto :goto_0

    .line 950
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->setIsCanClick(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 960
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 964
    return-void
.end method
