.class Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;
.super Ljava/lang/Object;
.source "SpecialEffectsActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;


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
    .line 311
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x4

    .line 316
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFilterStackIndex:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setScaleBitmap(Landroid/graphics/Bitmap;I)V

    .line 317
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, p1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$302(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 318
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$502(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 324
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    # invokes: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->initSourceView(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Bitmap;)V

    .line 326
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090192

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 327
    .local v1, "mScaledWidth":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 328
    .local v0, "mScaledHeight":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    new-instance v3, Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v0, v5}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->createScaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$702(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 329
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 330
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->EFFECT_EFFECTS_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1000()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$902(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->initEffects()V

    .line 334
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$1100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0
.end method
