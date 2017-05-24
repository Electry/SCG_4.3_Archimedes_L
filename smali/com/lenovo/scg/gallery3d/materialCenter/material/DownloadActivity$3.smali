.class Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->GetData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initOnlineData()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 233
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getInstance()Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    move-result-object v3

    .line 234
    .local v3, "fm":Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;->getImageCount()I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 235
    .local v5, "size":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 236
    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;-><init>()V

    .line 237
    .local v1, "file":Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;->getImageId(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->setId(I)V

    .line 238
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;->getImageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->setImageName(Ljava/lang/String;)V

    .line 239
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;->getImageUrl(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->setImageUrl(Ljava/lang/String;)V

    .line 240
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mTypeName:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$800(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->setTypeName(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getImageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 243
    .local v2, "file_byte":[B
    if-nez v0, :cond_0

    .line 244
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/GetImageForUrl;->getHttpBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 245
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getImageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z

    .line 246
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v7, v8}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    :cond_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->imageFileList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$700(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "file":Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;
    .end local v2    # "file_byte":[B
    :cond_1
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 193
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 194
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;->getImageName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;->getImageName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 195
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "androidSer/download_imagesBymId.action?mId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mId:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$600(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Connection_Util;->GetJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v5, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3$1;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;)V

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 197
    .local v4, "listType":Ljava/lang/reflect/Type;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 198
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 199
    .local v2, "imageFileListForJson":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 200
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    move-result-object v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getImageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;->saveImageName(Ljava/lang/String;I)V

    .line 201
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    move-result-object v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;->saveImageUrl(Ljava/lang/String;I)V

    .line 202
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getId()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;->saveImageId(Ljava/lang/String;I)V

    .line 203
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;->saveImageCount(I)V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->initOnlineData()V

    .line 230
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "i":I
    .end local v2    # "imageFileListForJson":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;>;"
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "listType":Ljava/lang/reflect/Type;
    :goto_1
    return-void

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->initOnlineData()V

    goto :goto_1

    .line 211
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$700(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
