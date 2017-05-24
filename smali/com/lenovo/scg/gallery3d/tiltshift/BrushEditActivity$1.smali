.class Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;
.super Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$CallbackAdapter;
.source "BrushEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;
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
    .line 149
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$CallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x4

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$200(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mFilterStackIndex:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$100(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setScaleBitmap(Landroid/graphics/Bitmap;I)V

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$302(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$300(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$400(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$400(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$300(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->initSourceView(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onLoadFailed()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mCancelView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$600(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mCancelView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$600(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1$1;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_0
    return-void
.end method
