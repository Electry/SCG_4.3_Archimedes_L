.class public Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl;
.super Ljava/lang/Object;
.source "CameramanServiceImpl.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/CameramanService;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameramanServiceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findAllCameramanInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    const-string v6, "cameraman/download_cameraman.action?"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Connection_Util;->GetJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, "jsonString":Ljava/lang/String;
    new-instance v6, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$1;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl;)V

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 24
    .local v5, "listType":Ljava/lang/reflect/Type;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 25
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 27
    .local v1, "cmList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;>;"
    :try_start_0
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-object v1

    .line 28
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public findAllCameramanInfoWithNoImg()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-string v6, "cameraman/download_cameramanWithNoImg.action?"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Connection_Util;->GetJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "jsonString":Ljava/lang/String;
    new-instance v6, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$4;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$4;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl;)V

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 72
    .local v5, "listType":Ljava/lang/reflect/Type;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 73
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 75
    .local v1, "cmList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;>;"
    :try_start_0
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public findCameramanInfo()Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;
    .locals 7

    .prologue
    .line 86
    const-string v6, "cameraman/download_CameramanFirst.action?"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Connection_Util;->GetJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "jsonString":Ljava/lang/String;
    new-instance v6, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$5;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$5;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl;)V

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 88
    .local v5, "listType":Ljava/lang/reflect/Type;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 89
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 91
    .local v1, "cameramanInfo":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;
    :try_start_0
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public findCamermanImagesByGcId(JJ)Ljava/util/List;
    .locals 9
    .param p1, "cgId"    # J
    .param p3, "manId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cameraman/download_CameramanImageByType.action?manId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&cgId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Connection_Util;->GetJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "jsonString":Ljava/lang/String;
    new-instance v6, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$3;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$3;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl;)V

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 56
    .local v5, "listType":Ljava/lang/reflect/Type;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 57
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 59
    .local v1, "ciList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;>;"
    :try_start_0
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public findGcByManId(J)Ljava/util/List;
    .locals 9
    .param p1, "manId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cameraman/download_CamermanGcByMId.action?manId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Connection_Util;->GetJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "jsonString":Ljava/lang/String;
    new-instance v6, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$2;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$2;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl;)V

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 40
    .local v5, "listType":Ljava/lang/reflect/Type;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 41
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 43
    .local v1, "cgList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;>;"
    :try_start_0
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
