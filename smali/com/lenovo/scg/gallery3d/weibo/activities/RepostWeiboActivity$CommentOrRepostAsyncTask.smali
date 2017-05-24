.class Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;
.super Landroid/os/AsyncTask;
.source "RepostWeiboActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;
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
.field private mContent:Ljava/lang/String;

.field private mId:J

.field private mType:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;JILjava/lang/String;)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "type"    # I
    .param p5, "content"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 205
    iput p4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mType:I

    .line 206
    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mId:J

    .line 207
    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mContent:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 198
    check-cast p1, [Ljava/util/Set;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->doInBackground([Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/Set;)Ljava/lang/String;
    .locals 14
    .param p1, "params"    # [Ljava/util/Set;

    .prologue
    const/4 v8, 0x1

    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, "tmpKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 219
    .local v1, "tmpUrl":Ljava/lang/String;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mType:I

    if-ne v0, v8, :cond_3

    .line 220
    const-string/jumbo v3, "status"

    .line 221
    const-string v1, "https://api.weibo.com/2/statuses/repost.json"

    .line 227
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    if-nez v1, :cond_4

    .line 228
    :cond_1
    const/4 v13, 0x0

    .line 250
    :cond_2
    :goto_1
    return-object v13

    .line 222
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 223
    const-string v3, "comment"

    .line 224
    const-string v1, "https://api.weibo.com/2/comments/create.json"

    goto :goto_0

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    const-string v2, "id"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mId:J

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mContent:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mContent:Ljava/lang/String;

    :goto_2
    const-string v7, "POST"

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v0 .. v7}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 239
    .local v13, "result_repost":Ljava/lang/String;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mType:I

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mIfComment:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    const-string v5, "https://api.weibo.com/2/comments/create.json"

    const-string v6, "id"

    const-string v7, "comment"

    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mId:J

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mContent:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->mContent:Ljava/lang/String;

    :goto_3
    const-string v11, "POST"

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v4 .. v11}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 245
    .local v12, "result_comment":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 246
    const-string/jumbo v0, "panhui4_RepostWeiboActivity"

    const-string/jumbo v2, "result_comment=null!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 231
    .end local v12    # "result_comment":Ljava/lang/String;
    .end local v13    # "result_repost":Ljava/lang/String;
    :cond_5
    const-string v6, ""

    goto :goto_2

    .line 240
    .restart local v13    # "result_repost":Ljava/lang/String;
    :cond_6
    const-string v10, ""

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 198
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 255
    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    const v1, 0x7f0f0719

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mWbSend_btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 266
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    const v1, 0x7f0f071a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method
