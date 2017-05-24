.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$6;
.super Landroid/os/Handler;
.source "FriendDetailWbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)V
    .locals 0

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1020
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1026
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1027
    return-void

    .line 1022
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;

    .line 1023
    .local v0, "obj":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->refreshIcon(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->access$600(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;)V

    goto :goto_0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
