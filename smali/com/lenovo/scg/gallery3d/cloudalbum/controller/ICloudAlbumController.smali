.class public interface abstract Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
.super Ljava/lang/Object;
.source "ICloudAlbumController.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;


# virtual methods
.method public abstract cancelLoadData()V
.end method

.method public abstract requestMultSharedUrl(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestSharedAlbumData(Ljava/lang/String;)V
.end method

.method public abstract requestSingelOutsideUrl(Ljava/lang/String;)V
.end method

.method public abstract startPhotoPage(Landroid/os/Bundle;)V
.end method

.method public abstract toDeletePhoto(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
