.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;
.super Ljava/lang/Thread;
.source "WbDraftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendThread"
.end annotation


# instance fields
.field mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V
    .locals 1
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 205
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 206
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
    .line 311
    const/4 v9, 0x0

    .line 312
    .local v9, "result":Ljava/lang/String;
    new-instance v8, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v8}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 314
    .local v8, "params":Lcom/weibo/sdk/android/WeiboParameters;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v3

    .line 315
    .local v3, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "mAccessTokenStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 318
    const-string v10, "access_token"

    invoke-virtual {v8, v10, v7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 321
    invoke-virtual {v8, p2, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 323
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 324
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v8, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_2
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 327
    move-object/from16 v0, p7

    move-wide/from16 v1, p8

    invoke-virtual {v8, v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 330
    :cond_3
    :try_start_0
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p10

    invoke-static {v10, p1, v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 342
    :goto_0
    return-object v9

    .line 332
    :catch_0
    move-exception v6

    .line 333
    .local v6, "ewb":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v6}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v6    # "ewb":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v5

    .line 336
    .local v5, "eun":Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 338
    .end local v5    # "eun":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v4

    .line 339
    .local v4, "eio":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private delItem()V
    .locals 9

    .prologue
    .line 288
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mLock:[B
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$500(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)[B

    move-result-object v5

    monitor-enter v5

    .line 290
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 291
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 292
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v4, v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "id":Ljava/lang/String;
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sFile:Ljava/lang/String;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->deleteShareFile(Ljava/lang/String;)V

    .line 297
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mDraftArr:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$600(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 298
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 299
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mDraftArr:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$600(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 302
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mListener:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$700(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 303
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mListener:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$700(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;->onDeleted(Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V

    .line 306
    :cond_1
    monitor-exit v5

    .line 307
    return-void

    .line 306
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private doComment()V
    .locals 13

    .prologue
    .line 243
    const-string v5, "comment"

    .line 244
    .local v5, "tmpKey1":Ljava/lang/String;
    const-string v1, "https://api.weibo.com/2/comments/create.json"

    .line 245
    .local v1, "tmpUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-wide v3, v0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->lStatusId:J

    .line 246
    .local v3, "lStatusId":J
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sContent:Ljava/lang/String;

    .line 247
    .local v6, "sComment":Ljava/lang/String;
    const-string v2, "id"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "POST"

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 248
    .local v12, "result":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->delItem()V

    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0947

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 254
    .local v11, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    .end local v11    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private doRepost()V
    .locals 13

    .prologue
    .line 261
    const-string/jumbo v5, "status"

    .line 262
    .local v5, "tmpKey1":Ljava/lang/String;
    const-string v1, "https://api.weibo.com/2/statuses/repost.json"

    .line 263
    .local v1, "tmpUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-wide v3, v0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->lStatusId:J

    .line 264
    .local v3, "lStatusId":J
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sContent:Ljava/lang/String;

    .line 266
    .local v6, "sComment":Ljava/lang/String;
    const-string v2, "id"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "POST"

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 267
    .local v12, "result":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->delItem()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0948

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 273
    .local v11, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    return-void
.end method

.method private doRun()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    sparse-switch v0, :sswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 227
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->doComment()V

    goto :goto_0

    .line 231
    :sswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->doRepost()V

    goto :goto_0

    .line 234
    :sswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->doShare()V

    goto :goto_0

    .line 224
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private doShare()V
    .locals 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->iShareType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mQQShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$300(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->setOnShareFinishListener(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;)V

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mQQShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$300(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sLong:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sLat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mSinaShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$400(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->setOnShareFinishListener(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;)V

    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mSinaShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$400(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sLong:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sLat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->shareWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 211
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;->doRun()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "Draft Send thread out of memory: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Draft Send thread error: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
