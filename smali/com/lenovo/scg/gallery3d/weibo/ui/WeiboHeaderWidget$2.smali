.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$2;
.super Landroid/os/Handler;
.source "WeiboHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 502
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 503
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 530
    :goto_0
    return-void

    .line 506
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->udpatePhoto(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 511
    :pswitch_1
    const-string v1, "WeiboHeaderWidget"

    const-string v2, "handleMessage, MSG_RESULT_OPENURL_ERROR!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;

    .line 519
    .local v0, "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->getIsFollowing()Z

    move-result v2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->getIsFollowedBy()Z

    move-result v3

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->updateFriendship(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;ZZ)V

    goto :goto_0

    .line 524
    .end local v0    # "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setUserInfo()V

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
