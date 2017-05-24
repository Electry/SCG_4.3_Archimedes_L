.class public interface abstract Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
.super Ljava/lang/Object;
.source "Album.java"


# virtual methods
.method public abstract addPhoto(Ljava/lang/String;JLjava/io/InputStream;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract addPhoto(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoAux;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract addPhoto(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoAux;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract delete()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract getCover(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
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

.method public abstract getOutsideUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract getOutsideUrl(Ljava/util/List;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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

.method public abstract getPhotoCount()I
.end method

.method public abstract getPhotos(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
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

.method public abstract getSize()J
.end method

.method public abstract getVersion()J
.end method

.method public abstract rename(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method
