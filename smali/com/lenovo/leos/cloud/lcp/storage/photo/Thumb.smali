.class public interface abstract Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
.super Ljava/lang/Object;
.source "Thumb.java"


# virtual methods
.method public abstract getData()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHeight()I
.end method

.method public abstract getOutsideUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method
