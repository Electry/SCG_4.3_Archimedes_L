.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/service/impl/GetLocalImgServiceImpl;
.super Ljava/lang/Object;
.source "GetLocalImgServiceImpl.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delAllLocalImgsByTypeName(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Z
    .locals 10
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
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

    .prologue
    .line 76
    .local p3, "imgs":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "filePath":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Util_ForLocal;->checkSDCard()Z

    move-result v8

    if-nez v8, :cond_0

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/download_test/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, "files":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v2, v0, v6

    .line 83
    .local v2, "f":Ljava/io/File;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 82
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "files":Ljava/io/File;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const/4 v8, 0x0

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v8

    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v4    # "files":Ljava/io/File;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_3
    const/4 v8, 0x1

    goto :goto_2
.end method

.method public getAllMaterialTypeList_local(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
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

    .prologue
    .line 21
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v5, "materialTypeList_local":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;>;"
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Util_ForLocal;->checkSDCard()Z

    move-result v8

    if-nez v8, :cond_0

    .line 24
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/download_test/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "fileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 28
    .local v2, "filedirs":[Ljava/io/File;
    if-eqz v2, :cond_2

    array-length v8, v2

    if-eqz v8, :cond_2

    .line 29
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_2

    .line 30
    const-string v7, ""

    .line 31
    .local v7, "typeName":Ljava/lang/String;
    new-instance v6, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;

    invoke-direct {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;-><init>()V

    .line 33
    .local v6, "ml":Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;
    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v2, v3

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->setmTypeName(Ljava/lang/String;)V

    .line 35
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v4, "imgFile":Ljava/io/File;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/GetImageForUrl;->fileToBit(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->setImgBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->setImgUrl(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v1, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/impl/GetLocalImgServiceImpl;->getImgLocalByMTypeName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 39
    invoke-virtual {p0, v1, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/impl/GetLocalImgServiceImpl;->getImgLocalByMTypeName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->setImg_local_List(Ljava/util/List;)V

    .line 41
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 46
    .end local v3    # "i":I
    .end local v4    # "imgFile":Ljava/io/File;
    .end local v6    # "ml":Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;
    .end local v7    # "typeName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public getImgLocalByMTypeName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mTypeName"    # Ljava/lang/String;
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

    .prologue
    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v4, "img_local_List":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "imgs_path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "fileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 56
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    array-length v6, v1

    if-lez v6, :cond_1

    .line 57
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_1

    .line 58
    aget-object v6, v1, v2

    if-eqz v6, :cond_0

    .line 59
    new-instance v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;-><init>()V

    .line 60
    .local v3, "img_local":Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->setFileName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3, p2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->setmTypeName(Ljava/lang/String;)V

    .line 62
    aget-object v6, v1, v2

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/GetImageForUrl;->fileToBit(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->setImg_local(Landroid/graphics/Bitmap;)V

    .line 63
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v3    # "img_local":Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_1
    return-object v4
.end method
