.class Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;
.super Ljava/lang/Object;
.source "BackgroundBlurEffectActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;
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
    .line 310
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x4

    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$600(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mFilterStackIndex:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$500(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setScaleBitmap(Landroid/graphics/Bitmap;I)V

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$702(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$700(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$400(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$400(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$700(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateImageView1(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$800(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
