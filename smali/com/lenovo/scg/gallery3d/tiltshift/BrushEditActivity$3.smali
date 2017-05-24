.class Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;
.super Ljava/lang/Object;
.source "BrushEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcn/jingling/sdkdemo/widgets/InkCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->generateBrushBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPreparedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$702(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 251
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPreparedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$200(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPreparedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mFilterStackIndex:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$100(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setScaleBitmap(Landroid/graphics/Bitmap;I)V

    .line 254
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$200(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    iget-object v2, v3, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mCurrentImagePath:Ljava/lang/String;

    .line 255
    .local v2, "mOriginalBitmapPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->finish()V

    .line 275
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 261
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    :try_start_1
    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 268
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->showOriginalImageIsDeletedDialog()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$900(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->showOriginalImageIsDeletedDialog()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$900(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
