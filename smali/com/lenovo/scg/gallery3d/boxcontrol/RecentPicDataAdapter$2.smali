.class Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$2;
.super Landroid/os/Handler;
.source "RecentPicDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 416
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 423
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 424
    return-void

    .line 418
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;

    .line 420
    .local v0, "obj":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # invokes: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->refreshIcon(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$700(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
