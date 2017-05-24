.class public Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;
.source "CloudAlbumSetModel.java"


# instance fields
.field private mAddAlbumTask:Ljava/lang/Runnable;

.field private mAddAlbumThread:Ljava/lang/Thread;

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumListFromDB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumListFromNet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumName:Ljava/lang/String;

.field private mAlbumSetThread:Ljava/lang/Thread;

.field private mAlbums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mDelAlbumIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDelAlbumTask:Ljava/lang/Runnable;

.field private mDelAlbumThread:Ljava/lang/Thread;

.field private mGetAlbumOutUrlTask:Ljava/lang/Runnable;

.field private mGetOutsideUrlThread:Ljava/lang/Thread;

.field private mIsCloudDataChanged:Z

.field private mIsLoadAlbumSet:Z

.field private mLoadAlbumSetTask:Ljava/lang/Runnable;

.field private mNewAlbumName:Ljava/lang/String;

.field private mRenameAlbumID:Ljava/lang/String;

.field private mRenameTask:Ljava/lang/Runnable;

.field private mRenameThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsLoadAlbumSet:Z

    .line 38
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumSetThread:Ljava/lang/Thread;

    .line 40
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAddAlbumThread:Ljava/lang/Thread;

    .line 42
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameThread:Ljava/lang/Thread;

    .line 44
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumThread:Ljava/lang/Thread;

    .line 46
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    .line 56
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumName:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mNewAlbumName:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameAlbumID:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumId:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mGetOutsideUrlThread:Ljava/lang/Thread;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsCloudDataChanged:Z

    .line 119
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mLoadAlbumSetTask:Ljava/lang/Runnable;

    .line 393
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mGetAlbumOutUrlTask:Ljava/lang/Runnable;

    .line 436
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAddAlbumTask:Ljava/lang/Runnable;

    .line 500
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumTask:Ljava/lang/Runnable;

    .line 575
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameTask:Ljava/lang/Runnable;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsLoadAlbumSet:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->getDBAlbumSetData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameAlbumID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mNewAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->getNetWorkAlbumSetData()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->isChangedData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    return-object p1
.end method

.method private forcedGetAlbumSet()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mLoadAlbumSetTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumSetThread:Ljava/lang/Thread;

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumSetThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumSetThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    :cond_0
    return-void
.end method

.method private getDBAlbumSetData()V
    .locals 6

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, "albumSetCursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 333
    :cond_0
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mIsSameUserId:Z

    if-nez v2, :cond_2

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 338
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "albumset_table"

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->isTableExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 339
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    goto :goto_0

    .line 342
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->queryAllAlbumFromDB()Landroid/database/Cursor;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_7

    .line 344
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 346
    :cond_4
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;-><init>()V

    .line 348
    .local v0, "album":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "album_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmAlbumId(Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "album_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmAlbumName(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "album_version"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmAlbumVersion(J)V

    .line 351
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "album_url"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmPosterUri(Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "photo_count"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmPhotosCount(I)V

    .line 353
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "album_size"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setSize(J)V

    .line 354
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 355
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_5
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db album.getmAlbumId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db album.getmAlbumVersion() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumVersion()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db album.getmAlbumName() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db album.getmPosterUri() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmPosterUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db album.getmPhotosCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmPhotosCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db album.getmAlbumVersion() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumVersion()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v2, "WYJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db album.getSize() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 365
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 366
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsShowNetError:Z

    .line 370
    .end local v0    # "album":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 371
    const/4 v1, 0x0

    .line 374
    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    goto/16 :goto_0
.end method

.method private getNetWorkAlbumSetData()V
    .locals 4

    .prologue
    .line 176
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 177
    const-string v1, "HWJ"

    const-string/jumbo v2, "not login "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 237
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onShowSyncLoading(Z)V

    .line 185
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/DefaultPhotoStorageFactory;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;->getPhotoStorage(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    move-result-object v1

    sput-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    .line 186
    sget-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    .line 188
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 191
    :cond_2
    sget-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->allAlbums()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    .line 192
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    sput-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudAlbumsList:Ljava/util/List;

    .line 195
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->saveCloudDataToLocal()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    .line 236
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmAlbumList(Ljava/util/List;)V

    goto :goto_0

    .line 196
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 197
    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 212
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    .line 213
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmAlbumList(Ljava/util/List;)V

    .line 214
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V
    :try_end_3
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 230
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 232
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    .line 201
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmAlbumList(Ljava/util/List;)V

    .line 202
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 222
    :catch_2
    move-exception v0

    .line 223
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    const/4 v1, 0x6

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 225
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->printStackTrace()V

    .line 226
    const-string v1, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BusinessException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 207
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :cond_6
    const/16 v1, 0x11

    :try_start_6
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    :cond_7
    const/16 v1, 0x8

    :try_start_7
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 218
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 220
    const-string v1, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method private isChangedData()Z
    .locals 5

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "isChange":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    .line 160
    .local v1, "isNetworkCon":Z
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsCloudDataChanged:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 163
    :goto_0
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v0

    .line 160
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveCloudDataToLocal()V
    .locals 20

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 241
    const-string v2, "HWJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "albums.size() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 245
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v2, :cond_1

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 248
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ne v2, v15, :cond_2

    .line 249
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsSameData:Z

    .line 251
    :cond_2
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_d

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "albumId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getName()Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "albumName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getVersion()J

    move-result-wide v4

    .line 256
    .local v4, "albumVersion":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getSize()J

    move-result-wide v9

    .line 257
    .local v9, "albumSize":J
    const/4 v7, 0x0

    .line 258
    .local v7, "albumUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getPhotoCount()I

    move-result v8

    .line 260
    .local v8, "albumPhotoCount":I
    new-instance v11, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-direct {v11}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;-><init>()V

    .line 261
    .local v11, "album":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    invoke-virtual {v11, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmAlbumId(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v11, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmAlbumName(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmAlbumCount(I)V

    .line 264
    invoke-virtual {v11, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmPhotosCount(I)V

    .line 265
    const-string v2, "HWJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "albumPhotoCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v11, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmAlbumVersion(J)V

    .line 267
    invoke-virtual {v11, v9, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setSize(J)V

    .line 269
    if-nez v8, :cond_8

    .line 270
    const/4 v7, 0x0

    .line 291
    :cond_3
    :goto_1
    invoke-virtual {v11, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmPosterUri(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsSameData:Z

    if-eqz v2, :cond_c

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v2, :cond_6

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->queryAlbumIsExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumVersion()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getVersion()J

    move-result-wide v18

    cmp-long v2, v16, v18

    if-nez v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 299
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsCloudDataChanged:Z

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updataAlbumByAlbumId(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)Z

    .line 312
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v3    # "albumId":Ljava/lang/String;
    .end local v4    # "albumVersion":J
    .end local v6    # "albumName":Ljava/lang/String;
    .end local v7    # "albumUri":Ljava/lang/String;
    .end local v8    # "albumPhotoCount":I
    .end local v9    # "albumSize":J
    .end local v11    # "album":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 273
    .restart local v3    # "albumId":Ljava/lang/String;
    .restart local v4    # "albumVersion":J
    .restart local v6    # "albumName":Ljava/lang/String;
    .restart local v7    # "albumUri":Ljava/lang/String;
    .restart local v8    # "albumPhotoCount":I
    .restart local v9    # "albumSize":J
    .restart local v11    # "album":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v15}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getPhotoCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v2, v15, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getPhotos(II)Ljava/util/List;

    move-result-object v14

    .line 275
    .local v14, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;>;"
    if-eqz v14, :cond_9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 276
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    sget v15, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mSmallThumbWidth:I

    sget v16, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mSmallThumbHeight:I

    move/from16 v0, v16

    invoke-interface {v2, v15, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 278
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    sget v15, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mSmallThumbWidth:I

    sget v16, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mSmallThumbHeight:I

    move/from16 v0, v16

    invoke-interface {v2, v15, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getCover(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    sget v15, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mSmallThumbWidth:I

    sget v16, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mSmallThumbHeight:I

    move/from16 v0, v16

    invoke-interface {v2, v15, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getCover(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_1

    .line 281
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 286
    .end local v14    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;>;"
    :catch_0
    move-exception v12

    .line 287
    .local v12, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 288
    const-string v2, "HWJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "albumSetThumb = null IllegalArgumentException e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 303
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->insertDataToAlbumSetTable(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_2

    .line 307
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsCloudDataChanged:Z

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v2, :cond_6

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->insertDataToAlbumSetTable(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_2

    .line 315
    .end local v3    # "albumId":Ljava/lang/String;
    .end local v4    # "albumVersion":J
    .end local v6    # "albumName":Ljava/lang/String;
    .end local v7    # "albumUri":Ljava/lang/String;
    .end local v8    # "albumPhotoCount":I
    .end local v9    # "albumSize":J
    .end local v11    # "album":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v2, :cond_e

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 325
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmAlbumList(Ljava/util/List;)V

    .line 326
    .end local v13    # "i":I
    :goto_3
    return-void

    .line 319
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v2, :cond_10

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 322
    :cond_10
    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    goto :goto_3
.end method


# virtual methods
.method public addAlbumInCloud(Ljava/lang/String;)V
    .locals 2
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumName:Ljava/lang/String;

    .line 430
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAddAlbumTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAddAlbumThread:Ljava/lang/Thread;

    .line 431
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAddAlbumThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAddAlbumThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 434
    :cond_0
    return-void
.end method

.method public cancelLoadAlbumSet()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsLoadAlbumSet:Z

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumSetThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumSetThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumSetThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumSetThread:Ljava/lang/Thread;

    .line 173
    :cond_0
    return-void
.end method

.method public getAlbumOutsideUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumId:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mGetAlbumOutUrlTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mGetOutsideUrlThread:Ljava/lang/Thread;

    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mGetOutsideUrlThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mGetOutsideUrlThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    goto :goto_0
.end method

.method public renameAlbum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "newAlbumName"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mNewAlbumName:Ljava/lang/String;

    .line 566
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameAlbumID:Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameThread:Ljava/lang/Thread;

    .line 569
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 573
    :cond_0
    return-void
.end method

.method public startGetData(Z)V
    .locals 4
    .param p1, "isSame"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mIsSameUserId:Z

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->deleteCloudDBTable()V

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->forcedGetAlbumSet()V

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mIsLoadAlbumSet:Z

    if-eqz v0, :cond_1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->getmAlbumList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 91
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->getmAlbumList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    invoke-interface {v0, v1, v3, v2, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    goto :goto_0

    .line 98
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->forcedGetAlbumSet()V

    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    invoke-interface {v0, v1, v3, v2, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    goto :goto_0

    .line 106
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->forcedGetAlbumSet()V

    goto :goto_0
.end method

.method public stratUpdateData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 618
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->getDBAlbumSetData()V

    .line 619
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 620
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    .line 627
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmAlbumList(Ljava/util/List;)V

    .line 629
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    .line 632
    :cond_1
    return-void

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->getNetWorkAlbumSetData()V

    .line 623
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromNet:Ljava/util/List;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;

    goto :goto_0
.end method

.method public toDeleteAlbumFromCloud(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, "albumIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;

    .line 492
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumThread:Ljava/lang/Thread;

    .line 494
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 498
    :cond_0
    return-void
.end method
