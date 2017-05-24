.class public interface abstract Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
.super Ljava/lang/Object;
.source "IImageList.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getBucketIds()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method

.method public abstract getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
.end method

.method public abstract getImageForUri(Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
.end method

.method public abstract getImageIndex(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)I
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract removeImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)Z
.end method

.method public abstract removeImageAt(I)Z
.end method
