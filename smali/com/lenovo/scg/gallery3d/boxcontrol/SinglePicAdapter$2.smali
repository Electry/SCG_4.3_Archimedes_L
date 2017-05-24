.class Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$2;
.super Landroid/os/Handler;
.source "SinglePicAdapter.java"


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
    .line 201
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 205
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 213
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;

    .line 209
    .local v0, "obj":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;

    # invokes: Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->refreshIcon(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
