.class Lcom/lenovo/scg/camera/PhotoModule$17;
.super Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoModule;->handleSomething(Lcom/lenovo/scg/camera/MediaSavePara;Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask",
        "<",
        "Lcom/lenovo/scg/camera/MediaSavePara;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;

.field final synthetic val$para:Lcom/lenovo/scg/camera/MediaSavePara;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/MediaSavePara;)V
    .locals 0

    .prologue
    .line 2366
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iput-object p2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public handle()Lcom/lenovo/scg/camera/MediaSavePara;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2370
    const-string/jumbo v2, "panhui10"

    const-string v3, "handleSomething, handle!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    const-string v2, "handleSomething, handle!!"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2373
    const-string/jumbo v2, "panhui10"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trim11 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-boolean v4, v4, Lcom/lenovo/scg/camera/MediaSavePara;->trim11:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-object v4, v4, Lcom/lenovo/scg/camera/MediaSavePara;->type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mirror = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-boolean v4, v4, Lcom/lenovo/scg/camera/MediaSavePara;->mirror:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const/4 v0, 0x0

    .line 2389
    .local v0, "data2":[B
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-object v2, v2, Lcom/lenovo/scg/camera/MediaSavePara;->type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    sget-object v3, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->RGBA:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    if-ne v2, v3, :cond_1

    .line 2391
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-object v2, v2, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v3, v3, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v4, v4, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->RGBA2JPEG([BII)[B

    move-result-object v0

    .line 2407
    :cond_0
    :goto_0
    const-string/jumbo v2, "panhui10"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mediaSave, width1111 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v4, v4, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v4, v4, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    if-eqz v0, :cond_4

    .line 2411
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->getJPEGHeaderSize([B)[I

    move-result-object v1

    .line 2412
    .local v1, "size":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    const/4 v3, 0x0

    aget v3, v1, v3

    iput v3, v2, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    .line 2413
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, v2, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    .line 2415
    const-string/jumbo v2, "panhui10"

    const-string/jumbo v3, "mediaSave, data2 != null, get width,height again!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    .end local v1    # "size":[I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iput-object v0, v2, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 2431
    const-string/jumbo v2, "panhui10"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mediaSave, width2222 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v4, v4, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v4, v4, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    return-object v2

    .line 2392
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-object v2, v2, Lcom/lenovo/scg/camera/MediaSavePara;->type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    sget-object v3, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->YUV:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    if-ne v2, v3, :cond_3

    .line 2393
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-boolean v2, v2, Lcom/lenovo/scg/camera/MediaSavePara;->trim11:Z

    if-eqz v2, :cond_2

    .line 2395
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-object v2, v2, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v3, v3, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v4, v4, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/scg/common/utils/file/FileUtils;->ClipYUV2Square([BII[I)[B

    move-result-object v0

    goto/16 :goto_0

    .line 2398
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-object v2, v2, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v3, v3, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v4, v4, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->YUV2JPEG([BII)[B

    move-result-object v0

    goto/16 :goto_0

    .line 2400
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-object v2, v2, Lcom/lenovo/scg/camera/MediaSavePara;->type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    sget-object v3, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->JPG:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    if-ne v2, v3, :cond_0

    .line 2401
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-boolean v2, v2, Lcom/lenovo/scg/camera/MediaSavePara;->trim11:Z

    if-eqz v2, :cond_0

    .line 2403
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-object v2, v2, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v3, v3, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget v4, v4, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/scg/common/utils/file/FileUtils;->ClipJpeg2Square([BII[I)[B

    move-result-object v0

    goto/16 :goto_0

    .line 2418
    :cond_4
    const-string/jumbo v2, "panhui10"

    const-string/jumbo v3, "mediaSave, data2 = para.data!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$17;->val$para:Lcom/lenovo/scg/camera/MediaSavePara;

    iget-object v0, v2, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    goto/16 :goto_1
.end method

.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2366
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule$17;->handle()Lcom/lenovo/scg/camera/MediaSavePara;

    move-result-object v0

    return-object v0
.end method
