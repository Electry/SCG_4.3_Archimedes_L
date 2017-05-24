.class Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$2;
.super Landroid/os/Handler;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 167
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;

    .line 170
    .local v0, "obj1":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;->imageView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;->drawable:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
