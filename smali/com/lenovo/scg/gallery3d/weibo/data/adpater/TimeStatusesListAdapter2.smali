.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;
.super Landroid/widget/BaseAdapter;
.source "TimeStatusesListAdapter2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CACHE_ITEM_COUNT:I = 0x5

.field private static final TAG_S_UID:I = 0x7f050060

.field public static final TAG_U_UID:I = 0x7f050061

.field public static mArrCacheItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;


# instance fields
.field private mArrShowItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsLoading:Z

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->$assertionsDisabled:Z

    .line 50
    sput-object v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    .line 53
    sput-object v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method private cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 6
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 624
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 625
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 626
    .local v2, "posNow":I
    add-int/lit8 v3, v2, -0x5

    .line 627
    .local v3, "posStart":I
    add-int/lit8 v1, v2, 0x5

    .line 628
    .local v1, "posEnd":I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    .line 629
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v1, v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 630
    :cond_1
    move v0, v3

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 631
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_2
    return-void
.end method

.method private canClearTimePic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z
    .locals 14
    .param p1, "srcItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 255
    if-nez p1, :cond_0

    move v10, v11

    .line 296
    :goto_0
    return v10

    .line 256
    :cond_0
    sget-object v10, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 257
    .local v9, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v9, :cond_4

    .line 258
    sget-object v10, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 259
    .local v0, "dstItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v4

    .line 260
    .local v4, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v12, :cond_2

    .line 262
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 263
    .local v6, "pics":I
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v3

    .line 264
    .local v3, "listDstUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v5

    .line 265
    .local v5, "listSrcUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ne v10, v13, :cond_3

    .line 267
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 268
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;

    iget-object v7, v10, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;->thumbnail_pic:Ljava/lang/String;

    .line 269
    .local v7, "sDstUrl":Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, "sSrcUrl":Ljava/lang/String;
    packed-switch v12, :pswitch_data_0

    .line 283
    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v11

    .line 284
    goto :goto_0

    .line 272
    :pswitch_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v7

    .line 273
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v8

    .line 274
    goto :goto_3

    .line 276
    :pswitch_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v7

    .line 277
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v8

    .line 278
    goto :goto_3

    .line 267
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 289
    .end local v2    # "j":I
    .end local v3    # "listDstUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    .end local v5    # "listSrcUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    .end local v6    # "pics":I
    .end local v7    # "sDstUrl":Ljava/lang/String;
    .end local v8    # "sSrcUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v7

    .line 290
    .restart local v7    # "sDstUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v8

    .line 291
    .restart local v8    # "sSrcUrl":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v11

    .line 292
    goto/16 :goto_0

    .line 257
    .end local v7    # "sDstUrl":Ljava/lang/String;
    .end local v8    # "sSrcUrl":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .end local v0    # "dstItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v4    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    :cond_4
    move v10, v12

    .line 296
    goto/16 :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearComment(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 12
    .param p1, "itemExclude"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 157
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 158
    .local v10, "size":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    .line 159
    .local v2, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_3

    .line 160
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 161
    .local v4, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-ne v4, p1, :cond_1

    .line 159
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-gez v11, :cond_0

    .line 164
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->canClearHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 166
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "sName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "sUrl":Ljava/lang/String;
    invoke-virtual {v2, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearCacheHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    .line 170
    .local v6, "lStatusId":J
    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeStatusComments(J)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    move-result-object v0

    .line 171
    .local v0, "ci":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    if-eqz v0, :cond_0

    .line 172
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    .line 173
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_2

    .line 174
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 175
    .local v1, "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v8

    .line 176
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v9

    .line 177
    invoke-virtual {v2, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearCacheHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 180
    .end local v1    # "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_2
    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearTimeStatusComments(J)V

    goto :goto_1

    .line 182
    .end local v0    # "ci":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    .end local v4    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "j":I
    .end local v6    # "lStatusId":J
    .end local v8    # "sName":Ljava/lang/String;
    .end local v9    # "sUrl":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private clearCommentOnlyPic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 12
    .param p1, "itemExclude"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 186
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 187
    .local v10, "size":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    .line 188
    .local v2, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_2

    .line 189
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 190
    .local v4, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-ne p1, v4, :cond_1

    .line 188
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_1
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-gez v11, :cond_0

    .line 193
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->canClearHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 195
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "sName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "sUrl":Ljava/lang/String;
    invoke-virtual {v2, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearCacheHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    .line 199
    .local v6, "lStatusId":J
    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeStatusComments(J)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    move-result-object v0

    .line 200
    .local v0, "ci":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    if-eqz v0, :cond_0

    .line 201
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    .line 202
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_0

    .line 203
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 204
    .local v1, "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v8

    .line 205
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v9

    .line 206
    invoke-virtual {v2, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearCacheHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "ci":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    .end local v1    # "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v4    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "j":I
    .end local v6    # "lStatusId":J
    .end local v8    # "sName":Ljava/lang/String;
    .end local v9    # "sUrl":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private clearTimePic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 13
    .param p1, "itemExclude"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    const/4 v12, 0x1

    .line 212
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 213
    .local v10, "size":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    .line 214
    .local v0, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_4

    .line 215
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 216
    .local v2, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-ne p1, v2, :cond_1

    .line 214
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-gez v11, :cond_0

    .line 219
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->canClearTimePic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 221
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, "sName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "sHeadUrl":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->canClearHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 225
    invoke-virtual {v0, v7, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearCacheHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_2
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v4

    .line 229
    .local v4, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v12, :cond_3

    .line 230
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 231
    .local v6, "pics":I
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v5

    .line 232
    .local v5, "listUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v6, :cond_0

    .line 233
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;

    iget-object v9, v11, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;->thumbnail_pic:Ljava/lang/String;

    .line 234
    .local v9, "sUrl":Ljava/lang/String;
    packed-switch v12, :pswitch_data_0

    .line 244
    :goto_3
    invoke-virtual {v0, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearTimeBitmap(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 236
    :pswitch_0
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v9

    .line 237
    goto :goto_3

    .line 239
    :pswitch_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v9

    .line 240
    goto :goto_3

    .line 248
    .end local v3    # "j":I
    .end local v5    # "listUrl":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    .end local v6    # "pics":I
    .end local v9    # "sUrl":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v9

    .line 249
    .restart local v9    # "sUrl":Ljava/lang/String;
    invoke-virtual {v0, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearTimeBitmap(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 252
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v4    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    .end local v7    # "sHeadUrl":Ljava/lang/String;
    .end local v8    # "sName":Ljava/lang/String;
    .end local v9    # "sUrl":Ljava/lang/String;
    :cond_4
    return-void

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private configueIntentComment(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 376
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 378
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 379
    return-void
.end method

.method private getIntentForFriendDetail(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 5
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 366
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    const-class v4, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserId()J

    move-result-wide v2

    .line 368
    .local v2, "uid":J
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 369
    const-string/jumbo v1, "name"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 371
    return-void
.end method

.method private getIntentForRepost(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 382
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 384
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 385
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string/jumbo v1, "name"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 388
    return-void
.end method

.method private getIntentForSingleImage(JLjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 359
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 360
    const-string/jumbo v1, "url_mid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method private showItems(Ljava/lang/String;)V
    .locals 7
    .param p1, "sInfo"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 149
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 150
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 151
    .local v1, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    const-string/jumbo v3, "pos=%d name=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public cachePos(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    .line 611
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 613
    move v2, p1

    .line 614
    .local v2, "posNow":I
    add-int/lit8 v3, v2, -0x5

    .line 615
    .local v3, "posStart":I
    add-int/lit8 v1, v2, 0x5

    .line 616
    .local v1, "posEnd":I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    .line 617
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v1, v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 618
    :cond_1
    move v0, v3

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 619
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_2
    return-void
.end method

.method public canClearHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z
    .locals 14
    .param p1, "srcItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    const/4 v10, 0x0

    .line 301
    if-nez p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v10

    .line 302
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    .line 303
    .local v2, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, "sSrcName":Ljava/lang/String;
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 305
    .local v8, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v8, :cond_4

    .line 306
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 307
    .local v3, "dstItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v6

    .line 308
    .local v6, "sDstName":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 312
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeStatusComments(J)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    move-result-object v0

    .line 313
    .local v0, "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    if-nez v0, :cond_3

    .line 305
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 314
    :cond_3
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    if-eqz v11, :cond_2

    .line 315
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 316
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 317
    .local v1, "cmtSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_2

    .line 318
    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 319
    .local v9, "userItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 317
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 324
    .end local v0    # "cmtItem":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    .end local v1    # "cmtSize":I
    .end local v3    # "dstItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "j":I
    .end local v6    # "sDstName":Ljava/lang/String;
    .end local v9    # "userItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_4
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public clean(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 0
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->clearTimePic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->clearCommentOnlyPic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 81
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 343
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 353
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 536
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 537
    .local v3, "nSize":I
    if-gtz v3, :cond_0

    .line 538
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401a9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    .line 560
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_0
    return-object v0

    .line 541
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    .line 542
    .local v2, "itemView":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    if-eqz p2, :cond_1

    instance-of v4, p2, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    if-nez v4, :cond_2

    .line 543
    :cond_1
    const-string v4, "abc"

    const-string/jumbo v5, "will inflate new layout !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheView(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    move-result-object v2

    .line 546
    move-object p2, v2

    .line 547
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setParentAdapter(Landroid/widget/BaseAdapter;)V

    .line 549
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setLayoutType(I)V

    .line 550
    iget-object v4, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    invoke-virtual {v4, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setOnGridClickListener(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;)V

    .line 551
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 552
    const v4, 0x7f100006

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setTag(ILjava/lang/Object;)V

    .line 557
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 558
    .local v1, "dataItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v4, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setDataItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V

    move-object v0, p2

    .line 560
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 555
    .end local v0    # "convertView":Landroid/view/View;
    .end local v1    # "dataItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "itemView":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    .restart local v2    # "itemView":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 598
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v11, 0x7f100000

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 398
    :sswitch_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v6, "category_weibo_sina_mainlist"

    const-string v7, "action_weibo_sina_mainlist_click_friendrepost_btn"

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 410
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 416
    .local v1, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 419
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v5

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putCacheDataItem(JLcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 421
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    const-class v6, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v3, "mIntent":Landroid/content/Intent;
    const-string/jumbo v5, "weibo_uid"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 423
    const-string/jumbo v5, "weibo_isreply"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 424
    const-string/jumbo v5, "screen_name"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 434
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v3    # "mIntent":Landroid/content/Intent;
    :sswitch_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v6, "category_weibo_sina_mainlist"

    const-string v7, "action_weibo_sina_mainlist_click_friendcomment_btn"

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 439
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 445
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 447
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v5

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putCacheDataItem(JLcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 449
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    const-class v6, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string/jumbo v5, "weibo_uid"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 451
    const-string/jumbo v5, "weibo_isreply"

    invoke-virtual {v3, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    const-string/jumbo v5, "screen_name"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 462
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v3    # "mIntent":Landroid/content/Intent;
    :sswitch_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v6, "category_weibo_sina_mainlist"

    const-string v7, "action_weibo_sina_mainlist_click_friendphotoimage"

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 467
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 471
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->cancelAllTask()V

    .line 472
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->cancelAllTask()V

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 474
    .local v2, "itemHead":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-nez v2, :cond_1

    sget-boolean v5, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 475
    :cond_1
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 477
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->clearTimePic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 478
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->clearCommentOnlyPic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 480
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 482
    .local v4, "u_uid":Ljava/lang/Long;
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->getIntentForFriendDetail(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    goto/16 :goto_0

    .line 488
    .end local v2    # "itemHead":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v4    # "u_uid":Ljava/lang/Long;
    :sswitch_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v6, "category_weibo_sina_mainlist"

    const-string v7, "action_weibo_sina_mainlist_clickfriendcommentall_btn"

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 493
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 497
    invoke-virtual {p1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 498
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-eqz v1, :cond_0

    .line 499
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 500
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 501
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    const-class v6, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 502
    const-string/jumbo v5, "uid"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 503
    const-string/jumbo v5, "url_mid"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v5, "check_all_reply"

    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 511
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :sswitch_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v6, "category_weibo_sina_mainlist"

    const-string v7, "action_weibo_sina_mainlist_click_friendweiboimage"

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 516
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 520
    invoke-virtual {p1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 521
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-eqz v1, :cond_0

    .line 522
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 524
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 525
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    const-class v6, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 526
    const-string/jumbo v5, "uid"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 527
    const-string/jumbo v5, "url_mid"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string v5, "load_more"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10034b -> :sswitch_2
        0x7f1009fb -> :sswitch_1
        0x7f100a27 -> :sswitch_0
        0x7f100a31 -> :sswitch_2
        0x7f100a69 -> :sswitch_3
        0x7f100a78 -> :sswitch_0
        0x7f100a7d -> :sswitch_1
        0x7f100a87 -> :sswitch_0
        0x7f100a8c -> :sswitch_1
        0x7f100a96 -> :sswitch_4
    .end sparse-switch
.end method

.method public onGridClick(Landroid/view/View;ILcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "dataItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 639
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v3

    .line 645
    .local v3, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 647
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    .line 648
    .local v1, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v5

    .line 649
    .local v5, "uri":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v4

    .line 650
    .local v4, "sName":Ljava/lang/String;
    invoke-virtual {v1, v5, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 651
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eq v0, v6, :cond_0

    .line 656
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v4    # "sName":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->cancelAllTask()V

    .line 657
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->cancelAllTask()V

    .line 658
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->cacheItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 660
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v6

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, p3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putCacheDataItem(JLcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 662
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 663
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 664
    const-string/jumbo v6, "uid"

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 665
    const-string/jumbo v6, "url_mid"

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string/jumbo v6, "select_id"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public prepareImage()V
    .locals 0

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->notifyDataSetChanged()V

    .line 567
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listview"    # Landroid/widget/ListView;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mListView:Landroid/widget/ListView;

    .line 75
    return-void
.end method

.method public setListViewView(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listview"    # Landroid/widget/ListView;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mListView:Landroid/widget/ListView;

    .line 337
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mIsLoading:Z

    .line 85
    return-void
.end method

.method public setmArrShowItem(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "arrShowItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    const/4 v11, 0x0

    .line 98
    const-string/jumbo v10, "will update item for time status list"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 100
    sget-object v10, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 102
    const-string v10, "before update"

    invoke-direct {p0, v10}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->showItems(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v10, "setmArrShowItem enter drag and fresh case"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v11}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->clearComment(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 120
    .local v9, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_2

    .line 121
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 122
    .local v1, "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v4

    .line 124
    .local v4, "lNewId":J
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 125
    .local v8, "oldSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v8, :cond_0

    .line 126
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 127
    .local v2, "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    .line 128
    .local v6, "lOldId":J
    cmp-long v10, v6, v4

    if-nez v10, :cond_1

    .line 129
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    .end local v2    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v6    # "lOldId":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .restart local v2    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v6    # "lOldId":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    .end local v1    # "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v2    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v3    # "j":I
    .end local v4    # "lNewId":J
    .end local v6    # "lOldId":J
    .end local v8    # "oldSize":I
    :cond_2
    invoke-direct {p0, v11}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->clearTimePic(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 137
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 138
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    .line 139
    const-string v10, "after fresh ,item count = %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearAnimationFlag(I)V

    .line 143
    const-string v10, "after update"

    invoke-direct {p0, v10}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->showItems(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public updateCommentCount(JI)V
    .locals 7
    .param p1, "lStatusId"    # J
    .param p3, "nCount"    # I

    .prologue
    .line 672
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 673
    .local v2, "nSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 674
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 675
    .local v1, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    .line 677
    invoke-virtual {v1, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCommentsCount(I)V

    .line 678
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->notifyDataSetChanged()V

    .line 680
    const-string/jumbo v3, "update comment count= %d end"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_0
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    if-eqz v3, :cond_1

    .line 687
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    invoke-virtual {v3, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->updateCommentCount(JI)V

    .line 689
    :cond_1
    return-void

    .line 673
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateRepostCount(JI)V
    .locals 7
    .param p1, "lStatusId"    # J
    .param p3, "nCount"    # I

    .prologue
    .line 692
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 693
    .local v2, "nSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 694
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 695
    .local v1, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    .line 697
    invoke-virtual {v1, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRepostsCount(I)V

    .line 698
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->notifyDataSetChanged()V

    .line 700
    const-string/jumbo v3, "update repost count= %d end"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_0
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    if-eqz v3, :cond_1

    .line 706
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    invoke-virtual {v3, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->updateRepostCount(JI)V

    .line 708
    :cond_1
    return-void

    .line 693
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
