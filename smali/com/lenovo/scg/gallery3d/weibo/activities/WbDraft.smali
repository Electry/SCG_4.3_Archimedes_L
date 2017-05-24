.class public Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;
.super Landroid/app/Activity;
.source "WbDraft.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$DeleteItemListener;,
        Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;,
        Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;
    }
.end annotation


# static fields
.field private static final INDEX_ACTION:I = 0x2

.field private static final INDEX_CONTENT:I = 0x3

.field private static final INDEX_DRAFT_INDEX:I = 0x9

.field private static final INDEX_DRAFT_TIME:I = 0x8

.field private static final INDEX_NAME:I = 0x1

.field private static final INDEX_PICURL:I = 0x4

.field private static final INDEX_POSLAT:I = 0x5

.field private static final INDEX_POSLONG:I = 0x6

.field private static final INDEX_SHARE_TYPE:I = 0x7

.field private static final INDEX_SUID:I

.field private static final PROJECTION_DRAFT:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

.field private mDialogDel:Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

.field private mDraftItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLvDraft:Landroid/widget/ListView;

.field private mRlEmpty:Landroid/widget/RelativeLayout;

.field private mRunnableGetDrafts:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "status_uid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "nick"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "pic_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "pic_lat"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "pic_long"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "share_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "draft_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->PROJECTION_DRAFT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mLvDraft:Landroid/widget/ListView;

    .line 43
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    .line 45
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    .line 47
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDialogDel:Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

    .line 49
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mRlEmpty:Landroid/widget/RelativeLayout;

    .line 298
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mRunnableGetDrafts:Ljava/lang/Runnable;

    .line 351
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mHandler:Landroid/os/Handler;

    .line 383
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->PROJECTION_DRAFT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->checkLeakFile()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mRlEmpty:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mLvDraft:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mRunnableGetDrafts:Ljava/lang/Runnable;

    return-object v0
.end method

.method private cancelDelDialog()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDialogDel:Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDialogDel:Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->dismiss()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDialogDel:Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

    .line 245
    :cond_0
    return-void
.end method

.method private checkLeakFile()V
    .locals 17

    .prologue
    .line 258
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "sharecenter/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v4, "fileDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "fileList":[Ljava/lang/String;
    if-nez v5, :cond_1

    .line 296
    :cond_0
    return-void

    .line 262
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v1, "arrFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v13, v5

    if-ge v6, v13, :cond_2

    .line 264
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v5, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 267
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 268
    .local v12, "size":I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v12, :cond_5

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 270
    .local v8, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    iget-object v13, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sFile:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 268
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 271
    :cond_4
    iget-object v13, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sFile:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 272
    .local v7, "index":I
    if-ltz v7, :cond_3

    .line 273
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 279
    .end local v7    # "index":I
    .end local v8    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    :cond_5
    const-string/jumbo v11, "share_failed_file_"

    .line 280
    .local v11, "sFlag":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 281
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v12, :cond_0

    .line 282
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 283
    .local v10, "sFile":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_6

    .line 285
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v3, "fDel":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 287
    const-string v13, "delete shared file path=%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v3    # "fDel":Ljava/io/File;
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 289
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "delete shared file error,path=%s,error=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private delAll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 225
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 226
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 227
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 229
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v5, v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "id":Ljava/lang/String;
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v2, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 234
    iget-object v5, v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sFile:Ljava/lang/String;

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->deleteShareFile(Ljava/lang/String;)V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    return-void
.end method

.method private delSingle()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 208
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDialogDel:Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->getItem()Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    move-result-object v3

    .line 209
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 210
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 222
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 213
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v4, v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "id":Ljava/lang/String;
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v8

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sFile:Ljava/lang/String;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->deleteShareFile(Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showDelDialog(Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V
    .locals 1
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->cancelDelDialog()V

    .line 250
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDialogDel:Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDialogDel:Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->setItem(Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDialogDel:Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->setCancelListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDialogDel:Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->setDelAllListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDialogDel:Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->setDelSingleListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 204
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->cancelDelDialog()V

    .line 205
    return-void

    .line 191
    :sswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->finish()V

    goto :goto_0

    .line 194
    :sswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->delSingle()V

    goto :goto_0

    .line 197
    :sswitch_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->delAll()V

    goto :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100a04 -> :sswitch_1
        0x7f100a0c -> :sswitch_2
        0x7f100a0e -> :sswitch_3
        0x7f100a10 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->requestWindowFeature(I)Z

    .line 86
    const v1, 0x7f0401a1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->setContentView(I)V

    .line 87
    const v1, 0x7f100a04

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 88
    .local v0, "btn":Landroid/widget/ImageButton;
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f100a06

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/ImageButton;
    check-cast v0, Landroid/widget/ImageButton;

    .line 90
    .restart local v0    # "btn":Landroid/widget/ImageButton;
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f100a08

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mLvDraft:Landroid/widget/ListView;

    .line 93
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mLvDraft:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mLvDraft:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 95
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    .line 96
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$DeleteItemListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$DeleteItemListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->setOnItemDeleteListener(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;)V

    .line 97
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mLvDraft:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    .line 100
    const v1, 0x7f100a09

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mRlEmpty:Landroid/widget/RelativeLayout;

    .line 102
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 103
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 135
    .local v4, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    iget v8, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    iget v8, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    const/16 v9, 0x65

    if-ne v8, v9, :cond_2

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, "bChecked":Z
    iget v8, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    const/16 v9, 0x65

    if-ne v8, v9, :cond_1

    .line 138
    const/4 v0, 0x1

    .line 140
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v5, "mIntent":Landroid/content/Intent;
    const-string/jumbo v8, "weibo_uid"

    iget-wide v10, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->lStatusId:J

    invoke-virtual {v5, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 142
    const-string/jumbo v8, "weibo_isreply"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    const-string/jumbo v8, "screen_name"

    iget-object v9, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sScreenName:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v8, "from_draft"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v8, "draft_content"

    iget-object v9, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sContent:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v8, "draft_check_flag"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v0    # "bChecked":Z
    .end local v5    # "mIntent":Landroid/content/Intent;
    :goto_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 177
    .local v1, "cr":Landroid/content/ContentResolver;
    iget v8, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "id":Ljava/lang/String;
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v1, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 184
    return-void

    .line 149
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "id":Ljava/lang/String;
    :cond_2
    iget v8, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    if-eqz v8, :cond_3

    iget v8, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_5

    .line 151
    :cond_3
    const/4 v0, 0x0

    .line 152
    .restart local v0    # "bChecked":Z
    iget v8, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_4

    .line 153
    const/4 v0, 0x1

    .line 155
    :cond_4
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .restart local v5    # "mIntent":Landroid/content/Intent;
    const-string/jumbo v8, "weibo_uid"

    iget-wide v10, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->lStatusId:J

    invoke-virtual {v5, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 157
    const-string/jumbo v8, "weibo_isreply"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    const-string/jumbo v8, "screen_name"

    iget-object v9, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sScreenName:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v8, "from_draft"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    const-string v8, "draft_content"

    iget-object v9, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sContent:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v8, "draft_check_flag"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    .end local v0    # "bChecked":Z
    .end local v5    # "mIntent":Landroid/content/Intent;
    :cond_5
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v6, "shareIntent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    iget-object v8, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sFile:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "f":Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 168
    .local v7, "uri":Landroid/net/Uri;
    const-string v8, "image_uri"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    const-string v8, "is_from_draft"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    const-string v8, "draft_content"

    iget-object v9, v4, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sContent:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 126
    .local v0, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->showDelDialog(Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V

    .line 128
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mRunnableGetDrafts:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    .local v0, "td":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 118
    return-void
.end method
