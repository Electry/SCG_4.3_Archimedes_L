.class Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;
.super Ljava/lang/Object;
.source "MaterialMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getNetData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadNetData()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 294
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->getMaterialTypeCount()I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    .line 295
    .local v8, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_5

    .line 296
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->getMaterialTypeImageUrl(I)Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, "sUrl":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->getMaterialTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "sTypeName":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->getMaterialTypeId(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 299
    .local v5, "id":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getInstance()Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 300
    .local v1, "bmpOld":Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/GetImageForUrl;->getHttpBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 303
    .local v2, "data":[B
    if-eqz v2, :cond_1

    .line 304
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Util_ForLocal;->checkSDCard()Z

    move-result v10

    if-nez v10, :cond_0

    .line 306
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/download_test/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    :cond_0
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->createDirectory(Ljava/lang/String;)Z

    .line 309
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->writeFile(Ljava/lang/String;[B)Z

    .line 310
    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v2, v10, v11, v12}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_1

    .line 312
    new-instance v9, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V

    .line 313
    .local v9, "type":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;
    iput-object v0, v9, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->bmp:Landroid/graphics/Bitmap;

    .line 314
    iput-object v6, v9, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->sCaption:Ljava/lang/String;

    .line 315
    iput v5, v9, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->id:I

    .line 316
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, v8, :cond_2

    .line 317
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 321
    :goto_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getInstance()Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    move-result-object v10

    invoke-virtual {v10, v2, v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z

    .line 295
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "data":[B
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v9    # "type":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 319
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "data":[B
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v9    # "type":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;
    :cond_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 325
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "data":[B
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v9    # "type":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->createDirectory(Ljava/lang/String;)Z

    .line 326
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/GetImageForUrl;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->writeFile(Ljava/lang/String;[B)Z

    .line 327
    new-instance v9, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {v9, v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V

    .line 328
    .restart local v9    # "type":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;
    iput-object v1, v9, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->bmp:Landroid/graphics/Bitmap;

    .line 329
    iput-object v6, v9, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->sCaption:Ljava/lang/String;

    .line 330
    iput v5, v9, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->id:I

    .line 331
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, v8, :cond_4

    .line 332
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 334
    :cond_4
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 338
    .end local v1    # "bmpOld":Landroid/graphics/Bitmap;
    .end local v5    # "id":I
    .end local v6    # "sTypeName":Ljava/lang/String;
    .end local v7    # "sUrl":Ljava/lang/String;
    .end local v9    # "type":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;
    :cond_5
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 339
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 268
    const-string v2, ""

    .line 269
    .local v2, "jsonString":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->getMaterialTypeId(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->getMaterialTypeId(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    :cond_0
    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList:Ljava/util/List;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 272
    :cond_1
    const-string v4, "androidSer/download_materialType.action?"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Connection_Util;->GetJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    new-instance v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;)V

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 274
    .local v3, "listType":Ljava/lang/reflect/Type;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 275
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sput-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList:Ljava/util/List;

    .line 276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 277
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->getmId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->saveMaterialTypeId(ILjava/lang/String;)V

    .line 278
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    move-result-object v5

    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->getType_img_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->saveMaterialTypeImageUrl(ILjava/lang/String;)V

    .line 279
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    move-result-object v5

    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->saveMaterialTypeName(ILjava/lang/String;)V

    .line 280
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->saveMaterialTypeCount(I)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "i":I
    .end local v3    # "listType":Ljava/lang/reflect/Type;
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->loadNetData()V

    .line 290
    :goto_1
    return-void

    .line 285
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->loadNetData()V

    goto :goto_1

    .line 288
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
