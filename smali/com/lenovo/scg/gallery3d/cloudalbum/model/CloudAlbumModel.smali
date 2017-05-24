.class public Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;
.source "CloudAlbumModel.java"


# instance fields
.field private mAlbumThread:Ljava/lang/Thread;

.field private mCloudPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurAlbum:Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

.field private mCurClickAlbumId:Ljava/lang/String;

.field private mDelPhotoIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDelPhotoTask:Ljava/lang/Runnable;

.field private mDelPhotoThread:Ljava/lang/Thread;

.field private mGetOutUrlTask:Ljava/lang/Runnable;

.field private mGetOutUrlThread:Ljava/lang/Thread;

.field private mGetSingleOutUrlTask:Ljava/lang/Runnable;

.field private mGetSingleOutUrlThread:Ljava/lang/Thread;

.field private mIsLoadAlbum:Z

.field private mLoadAlbumTask:Ljava/lang/Runnable;

.field private mLoadSharedAlbumTask:Ljava/lang/Runnable;

.field private mOutsideList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoListFromDB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoListFromNet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectPhotoId:Ljava/lang/String;

.field private mSharedAlbumThread:Ljava/lang/Thread;

.field private mSharedAlbumUrl:Ljava/lang/String;

.field private mSharedPhotoStg:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mIsLoadAlbum:Z

    .line 33
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurAlbum:Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    .line 35
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mAlbumThread:Ljava/lang/Thread;

    .line 37
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetOutUrlThread:Ljava/lang/Thread;

    .line 39
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedAlbumThread:Ljava/lang/Thread;

    .line 41
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedAlbumUrl:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurClickAlbumId:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoIds:Ljava/util/List;

    .line 47
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoIds:Ljava/util/List;

    .line 49
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoThread:Ljava/lang/Thread;

    .line 51
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSelectPhotoId:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetSingleOutUrlThread:Ljava/lang/Thread;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    .line 63
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;

    .line 65
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedPhotoStg:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    .line 112
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mLoadAlbumTask:Ljava/lang/Runnable;

    .line 378
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetOutUrlTask:Ljava/lang/Runnable;

    .line 439
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetSingleOutUrlTask:Ljava/lang/Runnable;

    .line 493
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoTask:Ljava/lang/Runnable;

    .line 577
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mLoadSharedAlbumTask:Ljava/lang/Runnable;

    .line 69
    if-eqz p2, :cond_0

    .line 70
    const-string v0, "cloud click album id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurClickAlbumId:Ljava/lang/String;

    .line 71
    const-string v0, "HWJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "albumset mCurClickAlbumId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurClickAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mIsLoadAlbum:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSelectPhotoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurClickAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mAlbumThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedAlbumUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedPhotoStg:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    .param p1, "x1"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedPhotoStg:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurAlbum:Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    return-object v0
.end method

.method private forcedGetPhotosList()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mLoadAlbumTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mAlbumThread:Ljava/lang/Thread;

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mAlbumThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mAlbumThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    :cond_0
    return-void
.end method

.method private saveCloudPhoto()V
    .locals 15

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 296
    const/4 v11, 0x0

    .line 297
    .local v11, "isNotNeedInstertDB":Z
    const-string v0, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCloudPhotoList.size() = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 305
    const/4 v11, 0x1

    .line 307
    :cond_2
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_9

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 309
    new-instance v12, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-direct {v12}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;-><init>()V

    .line 310
    .local v12, "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "photoId":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "photoName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 313
    .local v5, "bigThumbUrl":Ljava/lang/String;
    const/4 v4, 0x0

    .line 314
    .local v4, "smallThumbUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, "photoUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getSize()J

    move-result-wide v8

    .line 317
    .local v8, "size":J
    invoke-virtual {v12, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoId(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v12, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoName(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getWidth()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoWidth(I)V

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getHeight()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoHeight(I)V

    .line 321
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurAlbum:Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentId(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurAlbum:Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentName(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v12, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setSize(J)V

    .line 324
    invoke-virtual {v12, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoUri(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    sget v2, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mBigThumbWidth:I

    sget v7, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mBigThumbHeight:I

    invoke-interface {v0, v2, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v14

    .line 327
    .local v14, "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    if-eqz v14, :cond_3

    .line 328
    invoke-interface {v14}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 330
    :cond_3
    invoke-virtual {v12, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmBigThumbUrl(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    sget v2, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSmallThumbWidth:I

    sget v7, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSmallThumbHeight:I

    invoke-interface {v0, v2, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v14

    .line 333
    if-eqz v14, :cond_4

    .line 334
    invoke-interface {v14}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 336
    :cond_4
    invoke-virtual {v12, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmSmallThumbUrl(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->queryPhotoIsDownload(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 338
    .local v13, "photoCursor":Landroid/database/Cursor;
    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "photo_download"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoDownload(I)V

    .line 344
    :goto_1
    if-eqz v13, :cond_5

    .line 345
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 346
    const/4 v13, 0x0

    .line 349
    :cond_5
    if-nez v11, :cond_6

    .line 350
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurClickAlbumId:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->insertDataToAlbumTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 352
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v1    # "photoId":Ljava/lang/String;
    .end local v3    # "photoName":Ljava/lang/String;
    .end local v4    # "smallThumbUrl":Ljava/lang/String;
    .end local v5    # "bigThumbUrl":Ljava/lang/String;
    .end local v6    # "photoUrl":Ljava/lang/String;
    .end local v8    # "size":J
    .end local v12    # "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .end local v13    # "photoCursor":Landroid/database/Cursor;
    .end local v14    # "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 341
    .restart local v1    # "photoId":Ljava/lang/String;
    .restart local v3    # "photoName":Ljava/lang/String;
    .restart local v4    # "smallThumbUrl":Ljava/lang/String;
    .restart local v5    # "bigThumbUrl":Ljava/lang/String;
    .restart local v6    # "photoUrl":Ljava/lang/String;
    .restart local v8    # "size":J
    .restart local v12    # "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .restart local v13    # "photoCursor":Landroid/database/Cursor;
    .restart local v14    # "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoDownload(I)V

    goto :goto_1

    .line 355
    .end local v1    # "photoId":Ljava/lang/String;
    .end local v3    # "photoName":Ljava/lang/String;
    .end local v4    # "smallThumbUrl":Ljava/lang/String;
    .end local v5    # "bigThumbUrl":Ljava/lang/String;
    .end local v6    # "photoUrl":Ljava/lang/String;
    .end local v8    # "size":J
    .end local v12    # "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .end local v13    # "photoCursor":Landroid/database/Cursor;
    .end local v14    # "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    :cond_9
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v0, :cond_a

    .line 356
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 366
    :cond_a
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmPhotoList(Ljava/util/List;)V

    .line 368
    .end local v10    # "i":I
    .end local v11    # "isNotNeedInstertDB":Z
    :cond_b
    :goto_2
    return-void

    .line 359
    :cond_c
    const-string v0, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCloudPhotoList.size() = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v0, :cond_d

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 363
    :cond_d
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V

    goto :goto_2
.end method


# virtual methods
.method public cancelLoadAlbumThread()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mIsLoadAlbum:Z

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mAlbumThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mAlbumThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mAlbumThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mAlbumThread:Ljava/lang/Thread;

    .line 186
    :cond_0
    return-void
.end method

.method protected getAlbumFromNet()V
    .locals 4

    .prologue
    .line 240
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "HWJ"

    const-string v2, "-------------219-------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onShowSyncLoading(Z)V

    .line 245
    :cond_0
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    if-eqz v1, :cond_2

    .line 246
    sget-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurClickAlbumId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->albumById(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurAlbum:Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurAlbum:Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_2

    .line 249
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurAlbum:Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurAlbum:Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getPhotoCount()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getPhotos(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    .line 250
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 251
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 253
    sget-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 254
    sget-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    sput-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    .line 258
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->saveCloudPhoto()V
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    .line 289
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmPhotoList(Ljava/util/List;)V

    .line 290
    :goto_0
    return-void

    .line 259
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromNet:Ljava/util/List;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    .line 261
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmPhotoList(Ljava/util/List;)V

    .line 262
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V
    :try_end_2
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    const/16 v1, 0xa

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V

    .line 271
    const-string v1, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LcpPhotoException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 277
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :catch_1
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V

    .line 279
    const-string v1, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoadAlbumTask IOException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const/16 v1, 0x11

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V
    :try_end_4
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 282
    :catch_2
    move-exception v0

    .line 283
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V

    .line 284
    const-string v1, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoadAlbumTask BusinessException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected getDBAlbumData()V
    .locals 6

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "albumCursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "album_table"

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->isTableExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurClickAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->queryPhotoByAlbum(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_6

    .line 201
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 203
    :cond_3
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;-><init>()V

    .line 205
    .local v1, "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurClickAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentId(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "photo_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoId(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "photo_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoName(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "photo_small_thumb_url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmSmallThumbUrl(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "photo_big_thumb_url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmBigThumbUrl(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "photo_url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoUri(Ljava/lang/String;)V

    .line 211
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "photo_download"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoDownload(I)V

    .line 212
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "photo_size"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setSize(J)V

    .line 213
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 214
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_4
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db photo.getmParentId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db photo.getmPhotoId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db photo.getmPhotoName() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db photo.getmSmallThumbUrl() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmSmallThumbUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db photo.getmPhotoUri() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v2, "WYJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db photo.getmPhotoDownload() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoDownload()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v2, "WYJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db photo.getSize() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 224
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoListFromDB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 225
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mIsShowNetError:Z

    .line 229
    .end local v1    # "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 230
    const/4 v0, 0x0

    .line 233
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    goto/16 :goto_0
.end method

.method public getMultSharedUrl(Ljava/util/List;)V
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
    .line 371
    .local p1, "photoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoIds:Ljava/util/List;

    .line 372
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetOutUrlTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetOutUrlThread:Ljava/lang/Thread;

    .line 373
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetOutUrlThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetOutUrlThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 376
    :cond_0
    return-void
.end method

.method public getSharedAlbumUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedUrl"    # Ljava/lang/String;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    .line 570
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedAlbumUrl:Ljava/lang/String;

    .line 571
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mLoadSharedAlbumTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedAlbumThread:Ljava/lang/Thread;

    .line 572
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedAlbumThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedAlbumThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 575
    :cond_0
    return-void
.end method

.method public getSingleOutSideUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSelectPhotoId:Ljava/lang/String;

    .line 433
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetSingleOutUrlTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetSingleOutUrlThread:Ljava/lang/Thread;

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetSingleOutUrlThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mGetSingleOutUrlThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 437
    :cond_0
    return-void
.end method

.method public startGetData(Z)V
    .locals 4
    .param p1, "isSame"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 77
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mIsLoadAlbum:Z

    if-eqz v0, :cond_0

    .line 78
    if-eqz p1, :cond_3

    .line 79
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->getmPhotoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->getmPhotoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "HWJ"

    const-string v1, "----------83----------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    invoke-interface {v0, v1, v3, v2, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->forcedGetPhotosList()V

    goto :goto_0

    .line 90
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->forcedGetPhotosList()V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "HWJ"

    const-string v1, "----------95----------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;

    invoke-interface {v0, v1, v3, v2, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    goto :goto_0

    .line 99
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->forcedGetPhotosList()V

    goto :goto_0
.end method

.method public stratUpdateData()V
    .locals 2

    .prologue
    .line 563
    const-string v0, "HWJ"

    const-string v1, "-----stratUpdateData()-------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->forcedGetPhotosList()V

    .line 565
    return-void
.end method

.method public toDeletePhotoFromCloud(Ljava/util/List;)V
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
    .line 483
    .local p1, "photoIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoIds:Ljava/util/List;

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoThread:Ljava/lang/Thread;

    .line 487
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 491
    :cond_0
    return-void
.end method
