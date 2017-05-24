.class Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;
.super Ljava/lang/Object;
.source "TimeDataItemView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnGetCommentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 24
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 757
    move-object/from16 v9, p3

    check-cast v9, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 758
    .local v9, "di":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v4, "arrComment":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    new-instance v5, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)V

    .line 760
    .local v5, "ci":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    iput-object v4, v5, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    .line 761
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v5, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->nPos:I

    .line 762
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v19

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putTimeStatusComments(JLcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;)V

    .line 764
    sget-object v19, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 765
    const-string v19, "OnGetCommentListener onTaskDone get bitmap error,result=%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v16, p2

    .line 768
    check-cast v16, Ljava/lang/String;

    .line 769
    .local v16, "sJsonData":Ljava/lang/String;
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 770
    .local v11, "gson":Lcom/google/gson/Gson;
    const/4 v15, 0x0

    .line 772
    .local v15, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;
    :try_start_0
    const-class v19, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;

    move-object v15, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_1
    if-eqz v15, :cond_0

    .line 779
    const-string v19, "get comment done,statusid=%d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    iget-object v7, v15, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;->comments:Ljava/util/List;

    .line 781
    .local v7, "commentsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    .line 782
    .local v17, "size":I
    const/16 v19, 0x5

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 783
    const/16 v17, 0x5

    .line 785
    :cond_2
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_3

    .line 786
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;

    .line 787
    .local v6, "comment":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v18

    .line 788
    .local v18, "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getText()Ljava/lang/String;

    move-result-object v8

    .line 790
    .local v8, "content":Ljava/lang/String;
    new-instance v13, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v13}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 791
    .local v13, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getProfile_image_url()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v13, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrUserId(J)V

    .line 797
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 773
    .end local v6    # "comment":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
    .end local v7    # "commentsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;>;"
    .end local v8    # "content":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v17    # "size":I
    .end local v18    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :catch_0
    move-exception v10

    .line 774
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 800
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "commentsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;>;"
    .restart local v12    # "i":I
    .restart local v17    # "size":I
    :cond_3
    iget v0, v15, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;->total_number:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCommentsCount(I)V

    .line 802
    const-string v19, "get comment done,name=%s count=%d id=%d"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    if-lez v17, :cond_4

    .line 805
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v18

    .line 806
    .restart local v18    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    const-string v19, "comment count = %d name=%s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    .end local v18    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;
    invoke-static/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 810
    .local v14, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;
    invoke-static/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
