.class public Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
.super Ljava/lang/Object;
.source "PhotoGrapherWorkPhotoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mId:J

.field private mIsPhotoGrapherPhoto:Z

.field private mLargePhotoUrl:Ljava/lang/String;

.field private mOriBitmap:Landroid/graphics/Bitmap;

.field private mPhotoUrl:Ljava/lang/String;

.field private mSort:Ljava/lang/String;

.field private mUpdateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mId:J

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mId:J

    return-wide v0
.end method

.method public getLargePhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mLargePhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mOriBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mSort:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public isPhotoGrapherPhoto()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mIsPhotoGrapherPhoto:Z

    return v0
.end method

.method public releaseBitmap()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mOriBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mOriBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mOriBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    :cond_1
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mId:J

    .line 98
    return-void
.end method

.method public setLargePhotoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "largePhotoUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mLargePhotoUrl:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setOriBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mOriBitmap:Landroid/graphics/Bitmap;

    .line 72
    return-void
.end method

.method public setPhotoGrapherPhoto(Z)V
    .locals 0
    .param p1, "isPhotoGrapherPhoto"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mIsPhotoGrapherPhoto:Z

    .line 52
    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "photoUrl"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mPhotoUrl:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0
    .param p1, "sort"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mSort:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUpdateTime"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->mUpdateTime:Ljava/lang/String;

    .line 84
    return-void
.end method
