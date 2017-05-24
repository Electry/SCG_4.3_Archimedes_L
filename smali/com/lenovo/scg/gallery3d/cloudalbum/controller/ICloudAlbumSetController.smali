.class public interface abstract Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
.super Ljava/lang/Object;
.source "ICloudAlbumSetController.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;


# virtual methods
.method public abstract addNewAlbum(Ljava/lang/String;)V
.end method

.method public abstract cancelLoadData()V
.end method

.method public abstract renameAlbum(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestAlbumOutsideUrl(Ljava/lang/String;)V
.end method

.method public abstract startAlbumPage(Landroid/os/Bundle;)V
.end method

.method public abstract toDeleteAlbum(Ljava/util/List;)V
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
