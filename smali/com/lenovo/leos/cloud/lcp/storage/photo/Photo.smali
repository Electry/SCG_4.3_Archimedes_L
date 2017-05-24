.class public interface abstract Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
.super Ljava/lang/Object;
.source "Photo.java"


# virtual methods
.method public abstract delete()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract getData()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getData(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHeight()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOutsideUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract getSize()J
.end method

.method public abstract getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract rotate(III)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract save(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
