.class Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;
.super Landroid/os/AsyncTask;
.source "CommentsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentOrRepostAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Set;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContents:Ljava/lang/String;

.field private mId1:J

.field private mId2:J

.field private mType:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;JJILjava/lang/String;)V
    .locals 0
    .param p2, "id1"    # J
    .param p4, "id2"    # J
    .param p6, "type"    # I
    .param p7, "content"    # Ljava/lang/String;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 463
    iput p6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->mType:I

    .line 464
    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->mId1:J

    .line 465
    iput-wide p4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->mId2:J

    .line 466
    iput-object p7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->mContents:Ljava/lang/String;

    .line 467
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 454
    check-cast p1, [Ljava/util/Set;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->doInBackground([Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/Set;)Ljava/lang/String;
    .locals 13
    .param p1, "params"    # [Ljava/util/Set;

    .prologue
    .line 471
    const/4 v5, 0x0

    .line 472
    .local v5, "tmpKey1":Ljava/lang/String;
    const/4 v12, 0x0

    .line 473
    .local v12, "tmpKey2":Ljava/lang/String;
    const/4 v1, 0x0

    .line 474
    .local v1, "tmpUrl":Ljava/lang/String;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_0
    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 491
    :cond_0
    const/4 v11, 0x0

    .line 506
    :goto_1
    return-object v11

    .line 476
    :pswitch_0
    const-string/jumbo v5, "status"

    .line 477
    const-string v1, "https://api.weibo.com/2/statuses/repost.json"

    .line 478
    goto :goto_0

    .line 480
    :pswitch_1
    const-string v5, "comment"

    .line 481
    const-string v1, "https://api.weibo.com/2/comments/create.json"

    .line 482
    goto :goto_0

    .line 484
    :pswitch_2
    const-string v5, "comment"

    .line 485
    const-string v12, "cid"

    .line 486
    const-string v1, "https://api.weibo.com/2/comments/reply.json"

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    const-string v2, "id"

    iget-wide v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->mId1:J

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->mContents:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->mContents:Ljava/lang/String;

    :goto_2
    if-eqz v12, :cond_3

    move-object v7, v12

    :goto_3
    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->mId2:J

    const-string v10, "POST"

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    invoke-static/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 506
    .local v11, "result":Ljava/lang/String;
    goto :goto_1

    .line 500
    .end local v11    # "result":Ljava/lang/String;
    :cond_2
    const-string v6, ""

    goto :goto_2

    :cond_3
    const-string v7, ""

    goto :goto_3

    .line 474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 454
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 511
    if-eqz p1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    const v1, 0x7f0f0719

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 515
    :cond_0
    return-void
.end method
