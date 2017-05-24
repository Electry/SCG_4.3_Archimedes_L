.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;
.super Landroid/os/Handler;
.source "SingleImageViewActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 879
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 881
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 883
    :sswitch_0
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->repostsCount:Landroid/widget/TextView;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$600()Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    const v23, 0x7f0f072f

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getmRepostsTotalNumber()I

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    sget-object v21, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$700()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getmRepostsTotalNumber()I

    move-result v24

    invoke-virtual/range {v21 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->updateRepostCount(JI)V

    goto :goto_0

    .line 890
    :sswitch_1
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->commentsCount:Landroid/widget/TextView;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$800()Landroid/widget/TextView;

    move-result-object v21

    if-eqz v21, :cond_1

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->commentsCount:Landroid/widget/TextView;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$800()Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    const v23, 0x7f0f0730

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsTotalNumber:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$900()I

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    :cond_1
    sget-object v21, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    if-eqz v21, :cond_2

    sget-object v21, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$700()J

    move-result-wide v22

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsTotalNumber:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$900()I

    move-result v24

    invoke-virtual/range {v21 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->updateCommentCount(JI)V

    .line 892
    :cond_2
    const-string v21, "UPDATE_COMM_NUMBER"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "WeiboID is : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$700()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "//  comments count is : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsTotalNumber:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$900()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 902
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isCheckAllReply:Z
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setWeiboInf(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    goto/16 :goto_0

    .line 912
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    .line 919
    .local v4, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->matchWidthImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1200(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/graphics/Bitmap;

    move-result-object v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-nez v21, :cond_3

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 924
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1302(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 929
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    .line 931
    .restart local v4    # "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    const v22, 0x7f100a31

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 932
    .local v10, "imgHead":Landroid/widget/ImageView;
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 943
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "imgHead":Landroid/widget/ImageView;
    :sswitch_5
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v21

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1400()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    move-result-object v21

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 946
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->notifyDataSetChanged()V

    .line 947
    const-string v21, "all_comment_count"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "   "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1400()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    const v23, 0x7f0f0721

    const/16 v24, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setEmptyView(Landroid/content/Context;IZ)V
    invoke-static/range {v21 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Landroid/content/Context;IZ)V

    .line 953
    :cond_4
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->notifyDataSetChanged()V

    .line 954
    const-string v21, "all_comment_count_2"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "   "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1400()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    move-result-object v21

    new-instance v22, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;)V

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/widget/ImageView;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideLoadingMoreAnim(Landroid/view/View;)V

    goto/16 :goto_0

    .line 984
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 985
    .local v6, "commentsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_0

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isUpdate:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1400()Ljava/util/ArrayList;

    move-result-object v22

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->clearItemPic(Ljava/util/ArrayList;)V
    invoke-static/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1700(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Ljava/util/ArrayList;)V

    .line 992
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1400()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 993
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->notifyDataSetChanged()V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isUpdate:Z

    .line 996
    const-string/jumbo v21, "update done"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mCommentsItem size is  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1400()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getId()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setComment_last_id(J)V

    .line 1010
    const-string v21, "all_comment_count_debug_getlist_size"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "    "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    .line 1013
    .local v17, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 1014
    const-string v21, "all_comment_count_debug"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "    "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;

    .line 1016
    .local v5, "comment":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v20

    .line 1017
    .local v20, "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getText()Ljava/lang/String;

    move-result-object v7

    .line 1019
    .local v7, "content":Ljava/lang/String;
    new-instance v11, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v11}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 1020
    .local v11, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v11, v7}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getProfile_image_url()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getId()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v11, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCid(J)V

    .line 1024
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getStatus()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getId()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v11, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatusesId(J)V

    .line 1026
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getSource()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->parseSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1027
    .local v18, "source":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    const v23, 0x7f0f0735

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    if-eqz v18, :cond_6

    move-object/from16 v21, v18

    :goto_2
    aput-object v21, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 1029
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getCreated_at()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrCreatedTime(Ljava/lang/String;)V

    .line 1032
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1400()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1027
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    const v26, 0x7f0f073d

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    .line 1035
    .end local v5    # "comment":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
    .end local v7    # "content":Ljava/lang/String;
    .end local v11    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v18    # "source":Ljava/lang/String;
    .end local v20    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :cond_7
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    const v23, 0x7f0f0721

    const/16 v24, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setEmptyView(Landroid/content/Context;IZ)V
    invoke-static/range {v21 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Landroid/content/Context;IZ)V

    .line 1038
    :cond_8
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->notifyDataSetChanged()V

    .line 1040
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v21

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$700()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getStatusCacheData(J)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;

    .line 1041
    .local v16, "singlePicData":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    if-eqz v16, :cond_a

    .line 1042
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1400()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->commentList:Ljava/util/ArrayList;

    .line 1049
    :goto_3
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    const v23, 0x7f0f0721

    const/16 v24, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setEmptyView(Landroid/content/Context;IZ)V
    invoke-static/range {v21 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Landroid/content/Context;IZ)V

    .line 1052
    :cond_9
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->notifyDataSetChanged()V

    .line 1053
    const-string v21, "all_comment_count"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "   "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    move-result-object v21

    new-instance v22, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;)V

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/widget/ImageView;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideLoadingMoreAnim(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1044
    :cond_a
    new-instance v16, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;

    .end local v16    # "singlePicData":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;)V

    .line 1045
    .restart local v16    # "singlePicData":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1400()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->commentList:Ljava/util/ArrayList;

    .line 1046
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v21

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$700()J

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putStatusCacheData(JLjava/lang/Object;)V

    goto/16 :goto_3

    .line 1085
    .end local v6    # "commentsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;>;"
    .end local v9    # "i":I
    .end local v16    # "singlePicData":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    .end local v17    # "size":I
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    .line 1088
    .local v13, "repostsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;>;"
    :try_start_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    .line 1089
    .restart local v17    # "size":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    move/from16 v0, v17

    if-ge v9, v0, :cond_b

    .line 1090
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;

    .line 1091
    .local v12, "repost":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;
    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v20

    .line 1092
    .restart local v20    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getText()Ljava/lang/String;

    move-result-object v15

    .line 1094
    .local v15, "sText":Ljava/lang/String;
    new-instance v11, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v11}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 1095
    .restart local v11    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v11, v15}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 1097
    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getProfile_image_url()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getSource()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->parseSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1099
    .local v14, "sSource":Ljava/lang/String;
    const-string/jumbo v21, "wangdiyuan"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "3  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-virtual {v11, v14}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getCreated_at()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrCreatedTime(Ljava/lang/String;)V

    .line 1103
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1800()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1106
    .end local v11    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v12    # "repost":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;
    .end local v14    # "sSource":Ljava/lang/String;
    .end local v15    # "sText":Ljava/lang/String;
    .end local v20    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :cond_b
    if-eqz v13, :cond_c

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_c

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getId()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setRepost_past_id(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    .end local v9    # "i":I
    .end local v17    # "size":I
    :cond_c
    :goto_5
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v21

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$700()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getStatusCacheData(J)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;

    .line 1115
    .local v19, "spd":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    if-eqz v19, :cond_e

    .line 1116
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1800()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->repostList:Ljava/util/ArrayList;

    .line 1123
    :goto_6
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1900()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    move-result-object v21

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1800()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideWait()V
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    .line 1127
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1900()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    const v23, 0x7f0f0721

    const/16 v24, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setEmptyView(Landroid/content/Context;IZ)V
    invoke-static/range {v21 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Landroid/content/Context;IZ)V

    .line 1130
    :cond_d
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1900()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1109
    .end local v19    # "spd":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    :catch_0
    move-exception v8

    .line 1110
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "onGetRepostDone error: %s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v8}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1118
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v19    # "spd":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    :cond_e
    new-instance v19, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;

    .end local v19    # "spd":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;)V

    .line 1119
    .restart local v19    # "spd":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1800()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->repostList:Ljava/util/ArrayList;

    .line 1120
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v21

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$700()J

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putStatusCacheData(JLjava/lang/Object;)V

    goto/16 :goto_6

    .line 1136
    .end local v13    # "repostsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;>;"
    .end local v19    # "spd":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideWait()V
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    .line 1137
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1900()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    const v23, 0x7f0f0721

    const/16 v24, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setEmptyView(Landroid/content/Context;IZ)V
    invoke-static/range {v21 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Landroid/content/Context;IZ)V

    .line 1140
    :cond_f
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1900()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1145
    :sswitch_9
    const-string/jumbo v21, "panhui4_SingleImageViewActivity2"

    const-string v22, "handleMessage, MSG_RESULT_OPENURL_ERROR!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const-string/jumbo v21, "panhui4_SingleImageViewActivity2"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mAdapter="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", isEmpty="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->isEmpty()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    move-object/from16 v22, v0

    const v23, 0x7f0f073b

    const/16 v24, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setEmptyView(Landroid/content/Context;IZ)V
    invoke-static/range {v21 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 881
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0x40000 -> :sswitch_0
        0x40001 -> :sswitch_1
    .end sparse-switch
.end method
