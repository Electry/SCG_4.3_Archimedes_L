.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RepostsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;
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

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mArrItems:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->initSCGTypeface(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mArrItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataItem(I)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 31
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    const/4 v15, 0x0

    .line 75
    .local v15, "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    .line 77
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0401ab

    const/4 v9, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    .line 78
    .local v27, "v":Landroid/view/View;
    new-instance v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;

    .end local v15    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$1;)V

    .line 79
    .restart local v15    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;
    const v8, 0x7f100a31

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->imgHead:Landroid/widget/ImageView;

    .line 80
    const v8, 0x7f100a33

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 81
    const v8, 0x7f100a15

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 82
    const v8, 0x7f100a34

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 83
    const v8, 0x7f100a35

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->tvSource:Landroid/widget/TextView;

    .line 84
    const v8, 0x7f100a32

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->imgReply:Landroid/widget/ImageView;

    .line 85
    move-object/from16 p2, v27

    .line 86
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    const v8, 0x7f100a30

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-static {v8}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 93
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    .end local v27    # "v":Landroid/view/View;
    :goto_0
    const-string v8, "getView pos=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v9, v10

    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mArrItems:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 99
    .local v18, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->imgReply:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->imgReply:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v19

    .line 104
    .local v19, "mWeiboerName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v8

    new-array v0, v8, [C

    move-object/from16 v21, v0

    .line 105
    .local v21, "namechar":[C
    const/4 v8, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v9, v1, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 107
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    .line 108
    .local v20, "nameLenth":I
    const-string v22, ""

    .line 109
    .local v22, "nullString":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 110
    const-string/jumbo v8, "wangdiyuan"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getNameChar is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-char v10, v21, v16

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    aget-char v8, v21, v16

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->checkType(C)Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->CHINESE:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    if-ne v8, v9, :cond_1

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 109
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 90
    .end local v16    # "i":I
    .end local v18    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v19    # "mWeiboerName":Ljava/lang/String;
    .end local v20    # "nameLenth":I
    .end local v21    # "namechar":[C
    .end local v22    # "nullString":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;
    check-cast v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;

    .restart local v15    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 114
    .restart local v16    # "i":I
    .restart local v18    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v19    # "mWeiboerName":Ljava/lang/String;
    .restart local v20    # "nameLenth":I
    .restart local v21    # "namechar":[C
    .restart local v22    # "nullString":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_2

    .line 117
    :cond_2
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " :    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 121
    .local v6, "lNow":J
    new-instance v13, Ljava/util/Date;

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCreatedTime()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v13, v8}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 122
    .local v13, "dt":Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 123
    .local v4, "lOld":J
    const-wide/32 v8, 0xea60

    const/high16 v10, 0x40000

    invoke-static/range {v4 .. v10}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v12

    .line 124
    .local v12, "dateValue":Ljava/lang/CharSequence;
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v4    # "lOld":J
    .end local v6    # "lNow":J
    .end local v12    # "dateValue":Ljava/lang/CharSequence;
    .end local v13    # "dt":Ljava/util/Date;
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0735

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v8

    :goto_4
    aput-object v8, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 131
    .local v25, "sSource":Ljava/lang/String;
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->tvSource:Landroid/widget/TextView;

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v24

    .line 135
    .local v24, "sHeadUrl":Ljava/lang/String;
    const/4 v11, 0x0

    .line 136
    .local v11, "bmpHead":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v9}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getUserHead(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 137
    if-eqz v11, :cond_4

    .line 138
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->imgHead:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    const-string v8, "exist,head url = %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v24, v9, v10

    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :goto_5
    return-object p2

    .line 125
    .end local v11    # "bmpHead":Landroid/graphics/Bitmap;
    .end local v24    # "sHeadUrl":Ljava/lang/String;
    .end local v25    # "sSource":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 126
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 129
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v30, 0x7f0f073d

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 141
    .restart local v11    # "bmpHead":Landroid/graphics/Bitmap;
    .restart local v24    # "sHeadUrl":Ljava/lang/String;
    .restart local v25    # "sSource":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "not exist,head url = %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v24, v9, v10

    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v23

    .line 143
    .local v23, "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v9, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v26

    .line 144
    .local v26, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->addNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    .line 145
    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const/4 v9, 0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1, v9}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 146
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 194
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    goto :goto_0

    .line 192
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

    .line 166
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-eq p1, v7, :cond_1

    .line 167
    const-string v7, "RepostsListAdapter onTaskDone get bitmap error,result=%s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    .end local p2    # "objData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 171
    .restart local p2    # "objData":Ljava/lang/Object;
    :cond_1
    :try_start_0
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    move-object v2, v0

    .line 172
    .local v2, "data":[B
    move-object v0, p3

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object v4, v0

    .line 173
    .local v4, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "sUrl":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "sName":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v7

    invoke-virtual {v7, v2, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z

    .line 177
    const/4 v7, 0x0

    array-length v8, v2

    const/4 v9, 0x2

    invoke-static {v2, v7, v8, v9}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 178
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 179
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v7

    invoke-virtual {v7, v1, v6, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putUserHead(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "data":[B
    .end local v4    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "sName":Ljava/lang/String;
    .end local v6    # "sUrl":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "RepostsListAdapter onTaskDone write or decode error: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public realeaseCache()V
    .locals 6

    .prologue
    .line 208
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mArrItems:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 215
    :cond_0
    return-void

    .line 210
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 211
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 212
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 213
    .local v1, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearUserHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 204
    .local p1, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->mArrItems:Ljava/util/ArrayList;

    .line 205
    return-void
.end method
