.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendWeiBoAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "panhui4_FriendWeiBoAdapter"


# instance fields
.field private ctx:Landroid/content/Context;

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

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsLoadImage:Z

.field private mIsLoading:Z

.field private mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

.field private mResManagerImage:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

.field private mResManagerPhoto:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mIsLoadImage:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->ctx:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mIsLoadImage:Z

    .line 58
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->createResourceManager(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerImage:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    .line 59
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->createResourceManager(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerPhoto:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mArrShowItem:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->getIntentForSingleImage(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;J)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->getIntentForFriendDetail(J)V

    return-void
.end method

.method private getIntentForFriendDetail(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->ctx:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->ctx:Landroid/content/Context;

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    return-void
.end method

.method private getIntentForSingleImage(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;I)V
    .locals 3
    .param p1, "dataItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p2, "index"    # I

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->ctx:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v1, "uids"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStatusesIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerImage:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerImage:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->release()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerPhoto:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerPhoto:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->release()V

    .line 85
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mArrShowItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageManager()Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerImage:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 127
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPhotoManager()Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerPhoto:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 30
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mArrShowItem:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 158
    .local v6, "dataItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnailsSize()I

    move-result v8

    .line 160
    .local v8, "imageCount":I
    const/16 v26, 0x5

    move/from16 v0, v26

    if-le v8, v0, :cond_0

    .line 161
    const/4 v8, 0x5

    .line 163
    :cond_0
    const/4 v9, 0x0

    .line 164
    .local v9, "imgPic":Landroid/widget/ImageView;
    const/4 v10, 0x0

    .line 165
    .local v10, "imgPic2":Landroid/widget/ImageView;
    const/4 v11, 0x0

    .line 166
    .local v11, "imgPic3":Landroid/widget/ImageView;
    const/4 v12, 0x0

    .line 167
    .local v12, "imgPic4":Landroid/widget/ImageView;
    const/4 v13, 0x0

    .line 169
    .local v13, "imgPic5":Landroid/widget/ImageView;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v26

    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v4, v0

    .line 171
    .local v4, "a":I
    const/16 v18, -0x1

    .line 172
    .local v18, "resId":I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_3

    .line 173
    const v18, 0x7f040090

    .line 198
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 202
    .local v5, "adapterView":Landroid/view/View;
    packed-switch v8, :pswitch_data_0

    .line 285
    :goto_1
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v15

    .line 286
    .local v15, "name":Ljava/lang/String;
    const v26, 0x7f1003e2

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 287
    .local v16, "nameView":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const/4 v14, 0x1

    .line 294
    .local v14, "isLoadImage":Z
    const-string/jumbo v26, "panhui4_FriendWeiBoAdapter"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "isLoadImage="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_9

    .line 297
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v19

    .line 305
    .local v19, "uri":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerImage:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15, v9}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->loadImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 370
    .end local v19    # "uri":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v19

    .line 371
    .restart local v19    # "uri":Ljava/lang/String;
    const v26, 0x7f10034b

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 375
    .local v17, "photo":Landroid/widget/ImageView;
    new-instance v26, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$6;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$6;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    if-eqz v14, :cond_2

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerPhoto:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v15, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->loadImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 390
    :cond_2
    return-object v5

    .line 174
    .end local v5    # "adapterView":Landroid/view/View;
    .end local v14    # "isLoadImage":Z
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "nameView":Landroid/widget/TextView;
    .end local v17    # "photo":Landroid/widget/ImageView;
    .end local v19    # "uri":Ljava/lang/String;
    :cond_3
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v8, v0, :cond_4

    .line 175
    const v18, 0x7f040091

    goto/16 :goto_0

    .line 176
    :cond_4
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v8, v0, :cond_6

    .line 177
    const/16 v26, 0x4

    move/from16 v0, v26

    if-le v4, v0, :cond_5

    .line 178
    const v18, 0x7f040093

    goto/16 :goto_0

    .line 180
    :cond_5
    const v18, 0x7f040092

    goto/16 :goto_0

    .line 183
    :cond_6
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v8, v0, :cond_8

    .line 184
    const/16 v26, 0x4

    move/from16 v0, v26

    if-le v4, v0, :cond_7

    .line 185
    const v18, 0x7f040095

    goto/16 :goto_0

    .line 187
    :cond_7
    const v18, 0x7f040094

    goto/16 :goto_0

    .line 191
    :cond_8
    const v18, 0x7f040096

    goto/16 :goto_0

    .line 204
    .restart local v5    # "adapterView":Landroid/view/View;
    :pswitch_0
    const v26, 0x7f1003ed

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "imgPic5":Landroid/widget/ImageView;
    check-cast v13, Landroid/widget/ImageView;

    .line 205
    .restart local v13    # "imgPic5":Landroid/widget/ImageView;
    new-instance v26, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :pswitch_1
    const v26, 0x7f1003ea

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "imgPic4":Landroid/widget/ImageView;
    check-cast v12, Landroid/widget/ImageView;

    .line 220
    .restart local v12    # "imgPic4":Landroid/widget/ImageView;
    new-instance v26, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :pswitch_2
    const v26, 0x7f1003e7

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "imgPic3":Landroid/widget/ImageView;
    check-cast v11, Landroid/widget/ImageView;

    .line 234
    .restart local v11    # "imgPic3":Landroid/widget/ImageView;
    new-instance v26, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :pswitch_3
    const v26, 0x7f1003e4

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "imgPic2":Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .line 248
    .restart local v10    # "imgPic2":Landroid/widget/ImageView;
    new-instance v26, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$4;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :pswitch_4
    const v26, 0x7f1003e0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "imgPic":Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 262
    .restart local v9    # "imgPic":Landroid/widget/ImageView;
    new-instance v26, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$5;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$5;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 309
    .restart local v14    # "isLoadImage":Z
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "nameView":Landroid/widget/TextView;
    :cond_9
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnails()Ljava/util/ArrayList;

    move-result-object v25

    .line 310
    .local v25, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStatusesIds()Ljava/util/ArrayList;

    move-result-object v7

    .line 311
    .local v7, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    packed-switch v8, :pswitch_data_1

    goto/16 :goto_2

    .line 349
    :cond_a
    :goto_3
    :pswitch_5
    if-eqz v9, :cond_1

    .line 350
    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 353
    .local v20, "uri1":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerImage:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15, v9}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->loadImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 313
    .end local v20    # "uri1":Ljava/lang/String;
    :pswitch_6
    if-eqz v13, :cond_b

    .line 314
    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 317
    .local v24, "uri5":Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerImage:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v15, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->loadImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 322
    .end local v24    # "uri5":Ljava/lang/String;
    :cond_b
    :pswitch_7
    if-eqz v12, :cond_c

    .line 323
    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 326
    .local v23, "uri4":Ljava/lang/String;
    if-eqz v14, :cond_c

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerImage:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15, v12}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->loadImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 331
    .end local v23    # "uri4":Ljava/lang/String;
    :cond_c
    :pswitch_8
    if-eqz v11, :cond_d

    .line 332
    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 335
    .local v22, "uri3":Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerImage:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15, v11}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->loadImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 340
    .end local v22    # "uri3":Ljava/lang/String;
    :cond_d
    :pswitch_9
    if-eqz v10, :cond_a

    .line 341
    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 344
    .local v21, "uri2":Ljava/lang/String;
    if-eqz v14, :cond_a

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mResManagerImage:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15, v10}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->loadImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_3

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 311
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoadImage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 395
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    if-nez v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getScrollState()I

    move-result v1

    if-nez v1, :cond_0

    .line 401
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsLoadImage(Z)V
    .locals 0
    .param p1, "load"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mIsLoadImage:Z

    .line 102
    return-void
.end method

.method public setListView(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)V
    .locals 0
    .param p1, "listview"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .line 106
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mIsLoading:Z

    .line 89
    return-void
.end method

.method public setmArrShowItem(Ljava/util/ArrayList;)V
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
    .line 109
    .local p1, "mArrShowItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->mArrShowItem:Ljava/util/ArrayList;

    .line 110
    return-void
.end method
