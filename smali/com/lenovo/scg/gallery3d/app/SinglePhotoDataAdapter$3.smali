.class Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$3;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method
