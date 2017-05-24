.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;
.super Landroid/widget/BaseAdapter;
.source "CommentsListAdapterMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;
    }
.end annotation


# instance fields
.field private mArrItems:Ljava/util/ArrayList;
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

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mArrItems:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mHandler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mArrItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;
    if-nez p2, :cond_0

    .line 65
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 66
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0401b0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;

    .end local v1    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;
    invoke-direct {v1, p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$1;)V

    .line 68
    .restart local v1    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;
    const v7, 0x7f100a31

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;->imgHead:Landroid/widget/ImageView;

    .line 69
    const v7, 0x7f100a33

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 70
    const v7, 0x7f100a15

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 79
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    iget-object v7, v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;->tvName:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v7, v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "sHeadUrl":Ljava/lang/String;
    iget-object v7, v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;->imgHead:Landroid/widget/ImageView;

    const v8, 0x7f02066c

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "bmpHead":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v7

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getUserHead(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 89
    iget-object v7, v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;->imgHead:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    :goto_1
    return-object p2

    .line 73
    .end local v0    # "bmpHead":Landroid/graphics/Bitmap;
    .end local v3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "sHeadUrl":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;
    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;

    .restart local v1    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$ViewHolder;
    goto :goto_0

    .line 93
    .restart local v0    # "bmpHead":Landroid/graphics/Bitmap;
    .restart local v3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v5    # "sHeadUrl":Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v4

    .line 94
    .local v4, "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual {v4, v7, v8}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v6

    .line 95
    .local v6, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v5, v8}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 96
    invoke-virtual {v4, v6, p0, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x7f100a32
        :pswitch_0
    .end packed-switch
.end method

.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 116
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-eq p1, v7, :cond_1

    .line 117
    const-string v7, "RepostsListAdapter onTaskDone get bitmap error,result=%s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .end local p2    # "objData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 121
    .restart local p2    # "objData":Ljava/lang/Object;
    :cond_1
    :try_start_0
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    move-object v2, v0

    .line 122
    .local v2, "data":[B
    move-object v0, p3

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object v4, v0

    .line 123
    .local v4, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "sUrl":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "sName":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v7

    invoke-virtual {v7, v2, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z

    .line 127
    const/4 v7, 0x0

    array-length v8, v2

    const/4 v9, 0x2

    invoke-static {v2, v7, v8, v9}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v7

    invoke-virtual {v7, v1, v6, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putUserHead(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "data":[B
    .end local v4    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "sName":Ljava/lang/String;
    .end local v6    # "sUrl":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "RepostsListAdapter onTaskDone write or decode error: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public realeaseCache()V
    .locals 6

    .prologue
    .line 157
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mArrItems:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 163
    :cond_0
    return-void

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 159
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 160
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 161
    .local v1, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearUserHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 152
    .local p1, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->mArrItems:Ljava/util/ArrayList;

    .line 154
    return-void
.end method
