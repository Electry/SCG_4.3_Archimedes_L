.class public interface abstract Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/CameramanService;
.super Ljava/lang/Object;
.source "CameramanService.java"


# virtual methods
.method public abstract findAllCameramanInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findAllCameramanInfoWithNoImg()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findCameramanInfo()Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;
.end method

.method public abstract findCamermanImagesByGcId(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findGcByManId(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;",
            ">;"
        }
    .end annotation
.end method
