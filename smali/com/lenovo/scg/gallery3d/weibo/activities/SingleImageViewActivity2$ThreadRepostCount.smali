.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$ThreadRepostCount;
.super Ljava/lang/Thread;
.source "SingleImageViewActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThreadRepostCount"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2579
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 2583
    const/4 v8, 0x0

    .line 2585
    .local v8, "response":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;>;"
    :try_start_0
    const-string v10, "https://api.weibo.com/2/statuses/count.json"

    sget-wide v12, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    invoke-static {v10, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->openUrl(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    .line 2586
    .local v7, "resString":Ljava/lang/String;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 2587
    .local v4, "gson":Lcom/google/gson/Gson;
    new-instance v10, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$ThreadRepostCount$1;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$ThreadRepostCount$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$ThreadRepostCount;)V

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$ThreadRepostCount$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 2588
    .local v6, "listType":Ljava/lang/reflect/Type;
    const-string v10, "[{"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 2589
    .local v9, "start":I
    const-string/jumbo v10, "}]"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v3, v10, 0x2

    .line 2591
    .local v3, "end":I
    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2592
    .local v5, "json":Ljava/lang/String;
    invoke-virtual {v4, v7, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/LinkedList;

    move-object v8, v0
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2600
    .end local v3    # "end":I
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "json":Ljava/lang/String;
    .end local v6    # "listType":Ljava/lang/reflect/Type;
    .end local v7    # "resString":Ljava/lang/String;
    .end local v9    # "start":I
    :goto_0
    if-eqz v8, :cond_0

    .line 2601
    invoke-virtual {v8, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;->getReposts()I

    move-result v10

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setmRepostsTotalNumber(I)V

    .line 2602
    sget-object v10, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->UPDATE_LIST:Landroid/os/Handler;

    const v11, 0x9003

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2604
    :cond_0
    return-void

    .line 2593
    :catch_0
    move-exception v2

    .line 2594
    .local v2, "e":Lcom/weibo/sdk/android/WeiboException;
    const-string v10, "ThreadRepostCount error:%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/weibo/sdk/android/WeiboException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2595
    invoke-virtual {v2}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    goto :goto_0

    .line 2596
    .end local v2    # "e":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v2

    .line 2598
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
