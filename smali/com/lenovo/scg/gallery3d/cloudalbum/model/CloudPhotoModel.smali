.class public Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;
.source "CloudPhotoModel.java"


# instance fields
.field private mClickPhotoId:Ljava/lang/String;

.field private mClickPhotoPos:I

.field private mGetPhotoOutUrlTask:Ljava/lang/Runnable;

.field private mGetPhotoOutUrlThread:Ljava/lang/Thread;

.field private mGetPhotoTask:Ljava/lang/Runnable;

.field private mLoadSharedPhotoTask:Ljava/lang/Runnable;

.field private mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

.field private mPhotoDelTask:Ljava/lang/Runnable;

.field private mPhotoDelThread:Ljava/lang/Thread;

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

.field private mSharedPhotoThread:Ljava/lang/Thread;

.field private mSharedPhotoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I

    .line 30
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoId:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mGetPhotoOutUrlThread:Ljava/lang/Thread;

    .line 34
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotoDelThread:Ljava/lang/Thread;

    .line 36
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mSharedPhotoThread:Ljava/lang/Thread;

    .line 38
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mSharedPhotoUrl:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    .line 72
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mGetPhotoTask:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mGetPhotoOutUrlTask:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$3;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotoDelTask:Ljava/lang/Runnable;

    .line 237
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel$4;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mLoadSharedPhotoTask:Ljava/lang/Runnable;

    .line 44
    if-eqz p2, :cond_0

    .line 45
    const-string v0, "cloud click photo position id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I

    .line 46
    const-string v0, "HWJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClickPhotoPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "cloud click photo id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    .line 49
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    .prologue
    .line 24
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mSharedPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;
    .param p1, "x1"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mOutsidePhoto:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getPhotoOutSideUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoId:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mGetPhotoOutUrlTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mGetPhotoOutUrlThread:Ljava/lang/Thread;

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mGetPhotoOutUrlThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mGetPhotoOutUrlThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    :cond_0
    return-void
.end method

.method public getSharedPhoto(Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedUrl"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    .line 230
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mSharedPhotoUrl:Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mLoadSharedPhotoTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mSharedPhotoThread:Ljava/lang/Thread;

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mSharedPhotoThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mSharedPhotoThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 235
    :cond_0
    return-void
.end method

.method public startGetData(Z)V
    .locals 6
    .param p1, "isSame"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 53
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I

    invoke-interface {v1, v2, v5, v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "photoUri":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmBigThumbUrl()Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I

    invoke-interface {v1, v2, v5, v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    goto :goto_0
.end method

.method public stratUpdateData()V
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotosList:Ljava/util/List;

    const/4 v2, 0x3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoPos:I

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V

    .line 225
    :cond_0
    return-void
.end method

.method public toDeletePhotoFromCloud(Ljava/lang/String;)V
    .locals 2
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mClickPhotoId:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotoDelTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotoDelThread:Ljava/lang/Thread;

    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotoDelThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->mPhotoDelThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    :cond_0
    return-void
.end method
