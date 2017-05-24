.class public Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
.super Landroid/os/AsyncTask;
.source "CommentRepostUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnRepostSendFinishListener;,
        Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnCommentSendFinishListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_COMMENT:I = 0x101

.field public static final TYPE_REPLY:I = 0x102

.field public static final TYPE_REPOST:I = 0x100


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCommentSendFinishListener:Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnCommentSendFinishListener;

.field private mContents:Ljava/lang/String;

.field private mId1:J

.field private mId2:J

.field private mRepostSendFinishListener:Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnRepostSendFinishListener;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;JJI)V
    .locals 0
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "UID"    # J
    .param p4, "CID"    # J
    .param p6, "type"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mActivity:Landroid/app/Activity;

    .line 51
    iput p6, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mType:I

    .line 52
    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mId1:J

    .line 53
    iput-wide p4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mId2:J

    .line 55
    return-void
.end method

.method private configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extraKey1"    # Ljava/lang/String;
    .param p3, "extraValue1"    # J
    .param p5, "extraKey2"    # Ljava/lang/String;
    .param p6, "extraValue2"    # Ljava/lang/String;
    .param p7, "extraKey3"    # Ljava/lang/String;
    .param p8, "extraValue3"    # J
    .param p10, "questMode"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v9, 0x0

    .line 110
    .local v9, "result":Ljava/lang/String;
    new-instance v8, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v8}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 112
    .local v8, "params":Lcom/weibo/sdk/android/WeiboParameters;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v3

    .line 113
    .local v3, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "mAccessTokenStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 116
    const-string v10, "access_token"

    invoke-virtual {v8, v10, v7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 119
    invoke-virtual {v8, p2, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 121
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 122
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v8, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 125
    move-object/from16 v0, p7

    move-wide/from16 v1, p8

    invoke-virtual {v8, v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 128
    :cond_3
    :try_start_0
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p10

    invoke-static {v10, p1, v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 140
    :goto_0
    return-object v9

    .line 130
    :catch_0
    move-exception v6

    .line 131
    .local v6, "ewb":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v6}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v6    # "ewb":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v5

    .line 134
    .local v5, "eun":Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v5    # "eun":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v4

    .line 137
    .local v4, "eio":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "contents"    # [Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mContents:Ljava/lang/String;

    .line 60
    const/4 v5, 0x0

    .line 61
    .local v5, "tmpKey1":Ljava/lang/String;
    const/4 v12, 0x0

    .line 62
    .local v12, "tmpKey2":Ljava/lang/String;
    const/4 v1, 0x0

    .line 63
    .local v1, "tmpUrl":Ljava/lang/String;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 80
    :cond_0
    const/4 v11, 0x0

    .line 86
    :goto_1
    return-object v11

    .line 65
    :pswitch_0
    const-string/jumbo v5, "status"

    .line 66
    const-string v1, "https://api.weibo.com/2/statuses/repost.json"

    .line 67
    goto :goto_0

    .line 69
    :pswitch_1
    const-string v5, "comment"

    .line 70
    const-string v1, "https://api.weibo.com/2/comments/create.json"

    .line 71
    goto :goto_0

    .line 73
    :pswitch_2
    const-string v5, "comment"

    .line 74
    const-string v12, "cid"

    .line 75
    const-string v1, "https://api.weibo.com/2/comments/reply.json"

    goto :goto_0

    .line 83
    :cond_1
    const-string v2, "id"

    iget-wide v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mId1:J

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mContents:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mContents:Ljava/lang/String;

    :goto_2
    if-eqz v12, :cond_3

    move-object v7, v12

    :goto_3
    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mId2:J

    const-string v10, "POST"

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 86
    .local v11, "result":Ljava/lang/String;
    goto :goto_1

    .line 83
    .end local v11    # "result":Ljava/lang/String;
    :cond_2
    const-string v6, ""

    goto :goto_2

    :cond_3
    const-string v7, ""

    goto :goto_3

    .line 63
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mType:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "\u8bc4\u8bba\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mCommentSendFinishListener:Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnCommentSendFinishListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mCommentSendFinishListener:Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnCommentSendFinishListener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnCommentSendFinishListener;->onConnmentSendFinish(Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mType:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "\u8f6c\u53d1\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mRepostSendFinishListener:Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnRepostSendFinishListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mRepostSendFinishListener:Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnRepostSendFinishListener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnRepostSendFinishListener;->onRepostSendFinish(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnCommentSendFinishListener(Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnCommentSendFinishListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnCommentSendFinishListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mCommentSendFinishListener:Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnCommentSendFinishListener;

    .line 38
    return-void
.end method

.method public setOnRepostSendFinishListener(Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnRepostSendFinishListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnRepostSendFinishListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->mRepostSendFinishListener:Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnRepostSendFinishListener;

    .line 47
    return-void
.end method
