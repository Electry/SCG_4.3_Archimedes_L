.class public Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;
.super Landroid/app/Activity;
.source "CommentsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;,
        Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;
    }
.end annotation


# static fields
.field public static final KEY_ISREPLY:Ljava/lang/String; = "isreply"

.field private static final MSG_RESULT_COMMENTSLIST:I = 0x3

.field private static final MSG_RESULT_PHOTO:I = 0x2

.field private static final MSG_RESULT_USER_INFO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "panhui4_CommentsListActivity"

.field private static final TYPE_COMMENT:I = 0x2

.field private static final TYPE_REPLY:I = 0x3

.field private static final TYPE_REPOST:I = 0x1

.field public static final VALUE_UID_DEFAULT:I = -0x1


# instance fields
.field private mAccessTokenStr:Ljava/lang/String;

.field private mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

.field private mCid:J

.field private mCommentEdit:Landroid/widget/EditText;

.field private mCommentsItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCommentsListView:Landroid/widget/ListView;

.field private mHandler:Landroid/os/Handler;

.field private mIsReply:Z

.field private mUid:J

.field private mWbHeaderView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 227
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mHandler:Landroid/os/Handler;

    .line 454
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->loadFriendsStatuses(ZJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->loadComments(ZJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->setUserInfo(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # J
    .param p10, "x8"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct/range {p0 .. p10}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 421
    const/4 v7, 0x0

    .line 422
    .local v7, "result":Ljava/lang/String;
    new-instance v6, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v6}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 423
    .local v6, "params":Lcom/weibo/sdk/android/WeiboParameters;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mAccessTokenStr:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 424
    const-string v8, "access_token"

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mAccessTokenStr:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 427
    invoke-virtual {v6, p2, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 429
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 430
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v6, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_2
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 433
    move-object/from16 v0, p7

    move-wide/from16 v1, p8

    invoke-virtual {v6, v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 436
    :cond_3
    :try_start_0
    move-object/from16 v0, p10

    invoke-static {p0, p1, v0, v6}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 451
    :goto_0
    return-object v7

    .line 438
    :catch_0
    move-exception v5

    .line 439
    .local v5, "ewb":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v5}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 440
    const-string/jumbo v8, "panhui4_CommentsListActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configueOpenUrl, WeiboException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    .end local v5    # "ewb":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v4

    .line 443
    .local v4, "eun":Ljava/net/UnknownHostException;
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 444
    const-string/jumbo v8, "panhui4_CommentsListActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configueOpenUrl, UnknownHostException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    .end local v4    # "eun":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v3

    .line 447
    .local v3, "eio":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 448
    const-string/jumbo v8, "panhui4_CommentsListActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configueOpenUrl, IOException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getIntentExtras()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 380
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 381
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mUid:J

    .line 383
    const-string v2, "cid"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCid:J

    .line 385
    const-string v2, "isreply"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mIsReply:Z

    .line 386
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mIsReply:Z

    if-eqz v2, :cond_0

    .line 387
    const v2, 0x7f0f073e

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 390
    :cond_0
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    .line 391
    .local v0, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mAccessTokenStr:Ljava/lang/String;

    .line 392
    return-void
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 363
    const v3, 0x7f1009f7

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentEdit:Landroid/widget/EditText;

    .line 364
    const v3, 0x7f1009f8

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 365
    .local v0, "comment_btn":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const v3, 0x7f1009f4

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 368
    .local v2, "return_btn":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    const v3, 0x7f1009f6

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentsListView:Landroid/widget/ListView;

    .line 372
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 373
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0401a0

    invoke-virtual {v1, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mWbHeaderView:Landroid/widget/RelativeLayout;

    .line 375
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentsListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mWbHeaderView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 377
    return-void
.end method

.method private loadComments(ZJ)V
    .locals 24
    .param p1, "sendMsg"    # Z
    .param p2, "uid"    # J

    .prologue
    .line 265
    const-string v3, "https://api.weibo.com/2/comments/show.json"

    const-string v4, "id"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const-string v12, "GET"

    move-object/from16 v2, p0

    move-wide/from16 v5, p2

    invoke-direct/range {v2 .. v12}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 268
    .local v21, "result":Ljava/lang/String;
    if-nez v21, :cond_1

    .line 269
    const-string/jumbo v2, "panhui4_CommentsListActivity"

    const-string v3, "comments result=null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    new-instance v17, Lcom/google/gson/Gson;

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/Gson;-><init>()V

    .line 275
    .local v17, "gson":Lcom/google/gson/Gson;
    const/16 v20, 0x0

    .line 277
    .local v20, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;
    :try_start_0
    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;

    move-object/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_1
    if-eqz v20, :cond_0

    .line 287
    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;->comments:Ljava/util/List;

    .line 288
    .local v14, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;

    .line 289
    .local v13, "comment":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v22

    .line 290
    .local v22, "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getText()Ljava/lang/String;

    move-result-object v15

    .line 292
    .local v15, "content":Ljava/lang/String;
    new-instance v19, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 293
    .local v19, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getProfile_image_url()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentsItem:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 278
    .end local v13    # "comment":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
    .end local v14    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;>;"
    .end local v15    # "content":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v22    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :catch_0
    move-exception v16

    .line 279
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 299
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v14    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;>;"
    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz p1, :cond_0

    .line 300
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentsItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->sendMassage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private loadData(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->updateWBDisplayType()V

    .line 102
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method private loadFriendsStatuses(ZJ)V
    .locals 20
    .param p1, "sendMsg"    # Z
    .param p2, "uid"    # J

    .prologue
    .line 304
    const-string v3, "https://api.weibo.com/2/statuses/show.json"

    const-string v4, "id"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const-string v12, "GET"

    move-object/from16 v2, p0

    move-wide/from16 v5, p2

    invoke-direct/range {v2 .. v12}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 308
    .local v17, "result":Ljava/lang/String;
    if-nez v17, :cond_1

    .line 309
    const-string/jumbo v2, "panhui4_CommentsListActivity"

    const-string/jumbo v3, "statuses result=null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    new-instance v14, Lcom/google/gson/Gson;

    invoke-direct {v14}, Lcom/google/gson/Gson;-><init>()V

    .line 317
    .local v14, "gson":Lcom/google/gson/Gson;
    const/16 v16, 0x0

    .line 319
    .local v16, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;
    :try_start_0
    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;

    move-object/from16 v16, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_1
    if-eqz v16, :cond_0

    .line 329
    new-instance v15, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v15}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 331
    .local v15, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-object/from16 v18, v0

    .line 332
    .local v18, "users":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    if-eqz v18, :cond_2

    .line 334
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getProfile_image_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrUserId(J)V

    .line 341
    :cond_2
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->text:Ljava/lang/String;

    invoke-virtual {v15, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, v16

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->reposts_count:I

    invoke-virtual {v15, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRepostsCount(I)V

    .line 343
    move-object/from16 v0, v16

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->comments_count:I

    invoke-virtual {v15, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCommentsCount(I)V

    .line 344
    move-object/from16 v0, v16

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->attitudes_count:I

    invoke-virtual {v15, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmAttitudesCount(I)V

    .line 346
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->thumbnail_pic:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 347
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->thumbnail_pic:Ljava/lang/String;

    invoke-virtual {v15, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicThumbnail(Ljava/lang/String;)V

    .line 357
    :cond_3
    :goto_2
    if-eqz p1, :cond_0

    .line 358
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->sendMassage(ILjava/lang/Object;)V

    goto :goto_0

    .line 320
    .end local v15    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v18    # "users":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :catch_0
    move-exception v13

    .line 321
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 349
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v18    # "users":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :cond_4
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    if-eqz v2, :cond_3

    .line 350
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getThumbnail_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicThumbnail(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private sendMassage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 140
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method

.method private setUserInfo(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 13
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 144
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mWbHeaderView:Landroid/widget/RelativeLayout;

    const v9, 0x7f10034b

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 145
    .local v4, "photo":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mWbHeaderView:Landroid/widget/RelativeLayout;

    const v9, 0x7f1000a9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 147
    .local v2, "image":Landroid/widget/ImageView;
    new-instance v7, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v4, v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 149
    .local v7, "taskPhoto":Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;
    new-array v8, v11, [Ljava/util/Set;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    new-instance v6, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8, v2, v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 153
    .local v6, "taskImage":Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;
    new-array v8, v11, [Ljava/util/Set;

    invoke-virtual {v6, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mWbHeaderView:Landroid/widget/RelativeLayout;

    const v9, 0x7f1003e2

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 156
    .local v3, "name":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mWbHeaderView:Landroid/widget/RelativeLayout;

    const v9, 0x7f100823

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 159
    .local v1, "content":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mWbHeaderView:Landroid/widget/RelativeLayout;

    const v9, 0x7f100a01

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 163
    .local v5, "reposts_count":Landroid/widget/TextView;
    const v8, 0x7f0f072f

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getRepostsCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mWbHeaderView:Landroid/widget/RelativeLayout;

    const v9, 0x7f100a03

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, "comments_count":Landroid/widget/TextView;
    const v8, 0x7f0f0730

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCommentsCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method private updateWBDisplayType()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentsItem:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentsItem:Ljava/util/ArrayList;

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentsItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 398
    :sswitch_0
    const/4 v7, 0x0

    .line 399
    .local v7, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCommentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 402
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mUid:J

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mCid:J

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mIsReply:Z

    if-eqz v1, :cond_2

    const/4 v6, 0x3

    :goto_1
    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;JJILjava/lang/String;)V

    .line 408
    .local v0, "task":Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 406
    .end local v0    # "task":Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$CommentOrRepostAsyncTask;
    :cond_2
    const/4 v6, 0x2

    goto :goto_1

    .line 412
    .end local v7    # "content":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->finish()V

    goto :goto_0

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1009f4 -> :sswitch_1
        0x7f1009f8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->requestWindowFeature(I)Z

    .line 89
    const v0, 0x7f04019e

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->setContentView(I)V

    .line 91
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->getIntentExtras()V

    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->initViews()V

    .line 95
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->mUid:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->loadData(J)V

    .line 96
    return-void
.end method
