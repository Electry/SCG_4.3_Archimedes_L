.class Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$3;
.super Ljava/lang/Object;
.source "SinglePicAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 237
    if-eqz p2, :cond_0

    .line 238
    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;-><init>()V

    .line 239
    .local v1, "obj":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;
    iput-object p1, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;->image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 240
    iput-object p2, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;->drawable:Landroid/graphics/drawable/Drawable;

    .line 241
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->mAdapterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 242
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->mAdapterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "obj":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;
    :cond_0
    return-void
.end method
