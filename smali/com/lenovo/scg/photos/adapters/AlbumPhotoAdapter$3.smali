.class Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$3;
.super Ljava/lang/Object;
.source "AlbumPhotoAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$3;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 285
    if-eqz p2, :cond_0

    .line 286
    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;-><init>()V

    .line 287
    .local v1, "obj":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;
    iput-object p1, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;->image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 288
    iput-object p2, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;->drawable:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-object v2, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$3;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mAdapterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$600(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 290
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$3;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mAdapterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$600(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "obj":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;
    :cond_0
    return-void
.end method
