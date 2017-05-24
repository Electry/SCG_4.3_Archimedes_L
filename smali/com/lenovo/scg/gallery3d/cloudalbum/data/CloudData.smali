.class public Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;
.super Ljava/lang/Object;
.source "CloudData.java"


# static fields
.field private static mAlbumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private static mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mAlbumList:Ljava/util/List;

    .line 18
    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mPhotoList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCloudData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mAlbumList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mAlbumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mAlbumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    sput-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mAlbumList:Ljava/util/List;

    .line 40
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mPhotoList:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mPhotoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 41
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mPhotoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    sput-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mPhotoList:Ljava/util/List;

    .line 44
    :cond_1
    return-void
.end method

.method public static getmAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mAlbumList:Ljava/util/List;

    return-object v0
.end method

.method public static getmPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public static setmAlbumList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "mAlbumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    sput-object p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mAlbumList:Ljava/util/List;

    .line 26
    return-void
.end method

.method public static setmPhotoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "mPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    sput-object p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->mPhotoList:Ljava/util/List;

    .line 34
    return-void
.end method
