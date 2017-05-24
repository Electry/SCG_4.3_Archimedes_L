.class Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$2;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 109
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 111
    .local v1, "decoder":Landroid/graphics/BitmapRegionDecoder;
    if-nez v1, :cond_0

    .line 112
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;-><init>(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    .line 117
    .local v4, "width":I
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 118
    .local v2, "height":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/high16 v5, 0x44800000    # 1024.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->computeSampleSize(F)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 120
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    invoke-direct {v7, v1, v0}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;-><init>(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
