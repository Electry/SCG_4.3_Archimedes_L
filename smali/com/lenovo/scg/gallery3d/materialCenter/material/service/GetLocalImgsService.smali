.class public interface abstract Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;
.super Ljava/lang/Object;
.source "GetLocalImgsService.java"


# virtual methods
.method public abstract delAllLocalImgsByTypeName(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getAllMaterialTypeList_local(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImgLocalByMTypeName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;",
            ">;"
        }
    .end annotation
.end method
