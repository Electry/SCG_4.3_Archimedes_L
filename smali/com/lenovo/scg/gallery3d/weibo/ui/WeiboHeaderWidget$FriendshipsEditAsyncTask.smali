.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;
.super Landroid/os/AsyncTask;
.source "WeiboHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendshipsEditAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Set;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_ERROR_NO_RESPONSE:I = 0x2

.field private static final RESULT_ERROR_NO_RESULT:I = 0x1

.field private static final RESULT_ERROR_NO_URL:I = 0x3

.field private static final RESULT_OK:I


# instance fields
.field private mIsFollowMe:Z

.field private mType:I

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;IZ)V
    .locals 1
    .param p2, "type"    # I
    .param p3, "isfollowme"    # Z

    .prologue
    .line 660
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 661
    iput-boolean p3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->mIsFollowMe:Z

    .line 662
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->mType:I

    .line 664
    packed-switch p2, :pswitch_data_0

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->mUrl:Ljava/lang/String;

    .line 678
    :goto_0
    return-void

    .line 666
    :pswitch_0
    const-string v0, "https://api.weibo.com/2/friendships/create.json"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 670
    :pswitch_1
    const-string v0, "https://api.weibo.com/2/friendships/destroy.json"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/Set;)Ljava/lang/Integer;
    .locals 20
    .param p1, "params"    # [Ljava/util/Set;

    .prologue
    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->mUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 690
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 718
    :goto_0
    return-object v2

    .line 693
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->mUrl:Ljava/lang/String;

    const-string/jumbo v4, "uid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserId()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    const-string v14, "POST"

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static/range {v2 .. v14}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 696
    .local v19, "result":Ljava/lang/String;
    if-nez v19, :cond_1

    .line 697
    const-string v2, "WeiboHeaderWidget"

    const-string v3, "get URL_FRIENDSHIPS_SHOW, result == null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 701
    :cond_1
    new-instance v17, Lcom/google/gson/Gson;

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/Gson;-><init>()V

    .line 702
    .local v17, "gson":Lcom/google/gson/Gson;
    const/16 v18, 0x0

    .line 704
    .local v18, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipObject;
    :try_start_0
    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipObject;

    move-object/from16 v18, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_1
    if-nez v18, :cond_2

    .line 715
    const-string v2, "WeiboHeaderWidget"

    const-string v3, "get URL_FRIENDSHIPS_SHOW, response == null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 705
    :catch_0
    move-exception v16

    .line 707
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 708
    .local v15, "date_time":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wb_detail_LFfriendship_json_ex_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->writeCacheData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/Boolean;

    .line 711
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 718
    .end local v15    # "date_time":Ljava/lang/String;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 646
    check-cast p1, [Ljava/util/Set;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->doInBackground([Ljava/util/Set;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 724
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0756

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 749
    :goto_0
    return-void

    .line 730
    :cond_0
    const/4 v0, 0x0

    .line 731
    .local v0, "isFollowing":Z
    const/4 v1, -0x1

    .line 732
    .local v1, "resId":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 747
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 748
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->mIsFollowMe:Z

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->updateFriendship(ZZ)V
    invoke-static {v2, v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;ZZ)V

    goto :goto_0

    .line 734
    :pswitch_0
    const v1, 0x7f0f0751

    .line 735
    const/4 v0, 0x1

    .line 736
    goto :goto_1

    .line 739
    :pswitch_1
    const v1, 0x7f0f0752

    .line 740
    goto :goto_1

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 646
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 684
    return-void
.end method
