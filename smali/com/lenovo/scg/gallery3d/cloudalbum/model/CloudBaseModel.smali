.class public abstract Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;
.super Ljava/lang/Object;
.source "CloudBaseModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;
    }
.end annotation


# static fields
.field public static mBigThumbHeight:I

.field public static mBigThumbWidth:I

.field public static mSmallThumbHeight:I

.field public static mSmallThumbWidth:I


# instance fields
.field protected mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

.field protected mContext:Landroid/content/Context;

.field protected mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

.field protected mIsSameData:Z

.field protected mIsShowNetError:Z

.field protected mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x280

    const/16 v0, 0x90

    .line 91
    sput v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbWidth:I

    .line 93
    sput v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbHeight:I

    .line 95
    sput v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbWidth:I

    .line 97
    sput v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    .line 85
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    .line 87
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 89
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mContext:Landroid/content/Context;

    .line 99
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mIsShowNetError:Z

    .line 101
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mIsSameData:Z

    .line 17
    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 19
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mContext:Landroid/content/Context;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbWidth:I

    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbHeight:I

    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbWidth:I

    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbHeight:I

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-nez v0, :cond_2

    .line 28
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v0, :cond_5

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "albumset_table"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->isTableExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CREATE TABLE if not exists albumset_table(album_id INTEGER PRIMARY KEY,album_version LONG,album_name TEXT,album_url TEXT,photo_count INTEGER,album_size LONG default 0)"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->createCloudTable(Ljava/lang/String;)V

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "album_table"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->isTableExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CREATE TABLE if not exists album_table(photo_id INTEGER PRIMARY KEY,album_id TEXT,photo_name TEXT,photo_small_thumb_url TEXT,photo_big_thumb_url TEXT,photo_url TEXT,photo_download INTEGER default 0,photo_size LONG default 0)"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->createCloudTable(Ljava/lang/String;)V

    .line 40
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "image_table"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->isTableExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CREATE TABLE if not exists image_table(image_id INTEGER PRIMARY KEY,image_path TEXT,image_size LONG default 0)"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->createCloudTable(Ljava/lang/String;)V

    .line 44
    :cond_5
    return-void
.end method


# virtual methods
.method public setModelChangedListener(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    .line 69
    return-void
.end method

.method public abstract startGetData(Z)V
.end method

.method public abstract stratUpdateData()V
.end method

.method protected throwErrorInfo(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 72
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onShowSyncLoading(Z)V

    .line 75
    :cond_0
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mIsShowNetError:Z

    if-nez v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_1

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "errorBundle":Landroid/os/Bundle;
    const-string v1, "cloud_error"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onError(Landroid/os/Bundle;)V

    .line 83
    .end local v0    # "errorBundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
