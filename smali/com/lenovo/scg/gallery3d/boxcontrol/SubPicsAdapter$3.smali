.class Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$3;
.super Ljava/lang/Object;
.source "SubPicsAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 274
    if-eqz p2, :cond_0

    .line 275
    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;-><init>()V

    .line 276
    .local v1, "obj":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;
    iput-object p1, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;->image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 277
    iput-object p2, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;->drawable:Landroid/graphics/drawable/Drawable;

    .line 278
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mAdapterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->access$500(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mAdapterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->access$500(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "obj":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;
    :cond_0
    return-void
.end method
