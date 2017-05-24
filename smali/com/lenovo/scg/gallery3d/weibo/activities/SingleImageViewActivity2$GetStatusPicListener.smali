.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;
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
    name = "GetStatusPicListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 0

    .prologue
    .line 2530
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2531
    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 2536
    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-ne p1, v2, :cond_0

    .line 2537
    const-string v2, "GetStatusPicListener Task Canceled, objData = %s userContext =%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2539
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideWait()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    .line 2575
    .end local p2    # "objData":Ljava/lang/Object;
    :goto_0
    return-void

    .line 2542
    .restart local p2    # "objData":Ljava/lang/Object;
    :cond_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-ne p1, v2, :cond_1

    .line 2543
    const-string v2, "GetStatusPicListener Task failed, objData = %s userContext =%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2545
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideWait()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    goto :goto_0

    .line 2548
    :cond_1
    if-nez p2, :cond_2

    .line 2549
    const-string v2, "GetStatusPicListener pic=null, objData = %s userContext =%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2551
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideWait()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    goto :goto_0

    .line 2555
    :cond_2
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [B

    .line 2557
    .local v1, "data":[B
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object v9, v0

    .line 2558
    .local v9, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicOriginal()Ljava/lang/String;

    move-result-object v12

    .line 2559
    .local v12, "sUrl":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v11

    .line 2560
    .local v11, "sName":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v2

    invoke-virtual {v2, v1, v11, v12}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z

    .line 2562
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x2

    const/16 v5, 0x2d0

    const/16 v6, 0x2d0

    invoke-static/range {v1 .. v6}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIIIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2563
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_3

    .line 2565
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 2566
    .local v10, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2572
    .end local v10    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideWait()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    goto :goto_0

    .line 2568
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v11    # "sName":Ljava/lang/String;
    .end local v12    # "sUrl":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 2569
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "GetHeadPicListener onTaskDone write or decode error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2570
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2572
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideWait()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideWait()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    throw v2
.end method
