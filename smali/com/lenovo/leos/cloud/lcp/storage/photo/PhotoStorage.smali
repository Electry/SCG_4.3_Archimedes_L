.class public interface abstract Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
.super Ljava/lang/Object;
.source "PhotoStorage.java"


# virtual methods
.method public abstract addAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumAux;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public abstract albumById(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public abstract allAlbums()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public abstract getAlbumCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public abstract getAlbumOutsideByList(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract getAlbumOutsideByList(Ljava/util/List;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract getData(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInfoByAlbum(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract getInfoByPhoto(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract getOutsidePhotoInfo(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract getPhotoByIds(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract getPhotoCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public abstract getStoreInfo()Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract isPhotoOnCloud(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public abstract isPhotoOnCloud([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public abstract movePhoto(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public abstract save(Ljava/lang/String;Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
