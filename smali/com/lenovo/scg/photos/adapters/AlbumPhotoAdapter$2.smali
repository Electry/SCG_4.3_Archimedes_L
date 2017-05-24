.class Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$2;
.super Landroid/os/Handler;
.source "AlbumPhotoAdapter.java"


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
    .line 242
    iput-object p1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$2;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 246
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 252
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 253
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;

    .line 249
    .local v0, "obj":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$2;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # invokes: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->refreshIcon(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$500(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
