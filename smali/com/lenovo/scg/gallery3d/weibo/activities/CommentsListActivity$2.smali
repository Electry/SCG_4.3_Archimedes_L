.class Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$2;
.super Landroid/os/Handler;
.source "CommentsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 232
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 240
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->setUserInfo(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 247
    .local v0, "user":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    goto :goto_0

    .line 254
    .end local v0    # "user":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
