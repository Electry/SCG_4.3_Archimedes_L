.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetHeadPicListener;
.super Ljava/lang/Object;
.source "SingleImageViewActivity2.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetHeadPicListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 0

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetHeadPicListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;

    .prologue
    .line 2495
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetHeadPicListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 2500
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-eq p1, v7, :cond_1

    .line 2501
    const-string v7, "get user head pic failed"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2524
    .end local p2    # "objData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 2505
    .restart local p2    # "objData":Ljava/lang/Object;
    :cond_1
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object v2, p2

    check-cast v2, [B

    .line 2506
    .local v2, "data":[B
    if-eqz v2, :cond_0

    .line 2510
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object v4, v0

    .line 2511
    .local v4, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v6

    .line 2512
    .local v6, "sUrl":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v5

    .line 2513
    .local v5, "sName":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v7

    invoke-virtual {v7, v2, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z

    .line 2515
    const/4 v7, 0x0

    array-length v8, v2

    const/4 v9, 0x2

    invoke-static {v2, v7, v8, v9}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2516
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 2517
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v7

    invoke-virtual {v7, v1, v6, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putUserHead(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetHeadPicListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2520
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "sName":Ljava/lang/String;
    .end local v6    # "sUrl":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2521
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "GetHeadPicListener onTaskDone write or decode error: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2522
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
