.class Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;
.super Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
.source "NetThreadTaskWeibo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SCGNetThreadPool"


# instance fields
.field private mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

.field private mContext:Landroid/content/Context;

.field private mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

.field private mDataType:Ljava/lang/Object;

.field private mDataUrl:Ljava/lang/Object;

.field private mFlagCanceled:Z

.field private mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

.field private mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

.field private mTryCnt:I

.field private mUserContext:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    .line 28
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mFlagCanceled:Z

    .line 30
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataType:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataUrl:Ljava/lang/Object;

    .line 34
    iput v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    .line 36
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    .line 39
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mContext:Landroid/content/Context;

    .line 41
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .line 43
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    .line 47
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mFlagCanceled:Z

    .line 48
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .line 50
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    .line 51
    return-void
.end method

.method private comment()V
    .locals 9

    .prologue
    .line 552
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataUrl:Ljava/lang/Object;

    check-cast v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamComment;

    .line 553
    .local v3, "param":Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamComment;
    new-instance v5, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;

    invoke-direct {v5}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;-><init>()V

    .line 554
    .local v5, "sNetRetStr":Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;
    const/4 v2, 0x0

    .line 555
    .local v2, "nTryCnt":I
    const/4 v0, 0x0

    .line 557
    .local v0, "bSuc":Z
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    iget-object v7, v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamComment;->sCommentUrl:Ljava/lang/String;

    iget-object v8, v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamComment;->sCommnetParam:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v5}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->post(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;)Z

    move-result v0

    .line 558
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 573
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-nez v6, :cond_4

    .line 577
    :goto_1
    return-void

    .line 560
    :cond_2
    if-nez v0, :cond_3

    .line 561
    add-int/lit8 v2, v2, 0x1

    .line 562
    iget v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v6, :cond_1

    .line 564
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_2
    const-string v6, "SCGNetThreadPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "comment try "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_3
    if-eqz v0, :cond_0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v1

    .line 566
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 575
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v0, :cond_5

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    .line 576
    .local v4, "resultType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    :goto_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    iget-object v7, v5, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;->sResult:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v4, v7, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 575
    .end local v4    # "resultType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    :cond_5
    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    goto :goto_3
.end method

.method private getBmpData()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 371
    .local v2, "nTryCnt":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataUrl:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 372
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataUrl:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 374
    .local v5, "sUrl":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-virtual {v7, v5}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 375
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 390
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_6

    .line 391
    if-nez v0, :cond_5

    .line 392
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v7, v8, v6, v9}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    move-object v6, v0

    .line 548
    .end local v5    # "sUrl":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v6

    .line 377
    .restart local v5    # "sUrl":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 378
    add-int/lit8 v2, v2, 0x1

    .line 379
    iget v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v7, :cond_1

    .line 381
    const-wide/16 v8, 0xa

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_3
    const-string v7, "SCGNetThreadPool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBmpData large try "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_4
    if-eqz v0, :cond_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 394
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 397
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_7

    .line 398
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 400
    :cond_7
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v7, v8, v6, v9}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 406
    .end local v5    # "sUrl":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataUrl:Ljava/lang/Object;

    check-cast v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;

    .line 408
    .local v4, "param":Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-eqz v7, :cond_2

    .line 409
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumWbPicGetMode:[I

    iget-object v8, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->mode:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :goto_4
    move-object v6, v0

    .line 548
    goto :goto_2

    .line 411
    :pswitch_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/net/NetTypeReader;->getNetType(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    move-result-object v3

    .line 412
    .local v3, "netType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;
    const-string v5, ""

    .line 413
    .restart local v5    # "sUrl":Ljava/lang/String;
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_WIFI:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    if-ne v3, v7, :cond_b

    .line 414
    iget-object v5, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlLarge:Ljava/lang/String;

    .line 421
    :cond_9
    :goto_5
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-virtual {v7, v5}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 422
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 436
    :cond_a
    :goto_6
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_10

    .line 437
    if-nez v0, :cond_f

    .line 438
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v7, v8, v6, v9}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 415
    :cond_b
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    if-ne v3, v7, :cond_c

    .line 416
    iget-object v5, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlMiddle:Ljava/lang/String;

    goto :goto_5

    .line 417
    :cond_c
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_MOBILE_2G:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    if-ne v3, v7, :cond_9

    .line 418
    iget-object v5, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlSmall:Ljava/lang/String;

    goto :goto_5

    .line 424
    :cond_d
    if-nez v0, :cond_e

    .line 425
    add-int/lit8 v2, v2, 0x1

    .line 426
    iget v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v7, :cond_a

    .line 428
    const-wide/16 v8, 0xa

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    :goto_7
    const-string v7, "SCGNetThreadPool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBmpData try "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NetType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_e
    if-eqz v0, :cond_9

    goto :goto_6

    .line 429
    :catch_1
    move-exception v1

    .line 430
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 440
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 443
    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_11

    .line 444
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 446
    :cond_11
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v7, v8, v6, v9}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 453
    .end local v3    # "netType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;
    .end local v5    # "sUrl":Ljava/lang/String;
    :cond_12
    :pswitch_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    iget-object v8, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlLarge:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 454
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 469
    :cond_13
    :goto_8
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_17

    .line 470
    if-nez v0, :cond_16

    .line 471
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v7, v8, v6, v9}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 456
    :cond_14
    if-nez v0, :cond_15

    .line 457
    add-int/lit8 v2, v2, 0x1

    .line 458
    iget v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v7, :cond_13

    .line 460
    const-wide/16 v8, 0xa

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 464
    :goto_9
    const-string v7, "SCGNetThreadPool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBmpData large try "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_15
    if-eqz v0, :cond_12

    goto :goto_8

    .line 461
    :catch_2
    move-exception v1

    .line 462
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 473
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_16
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 476
    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_18

    .line 477
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 479
    :cond_18
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v7, v8, v6, v9}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 486
    :cond_19
    :pswitch_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    iget-object v8, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlLarge:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 500
    :cond_1a
    :goto_a
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 501
    if-nez v0, :cond_1d

    .line 502
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v7, v8, v6, v9}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 489
    :cond_1b
    if-nez v0, :cond_1c

    .line 490
    add-int/lit8 v2, v2, 0x1

    .line 491
    iget v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v7, :cond_1a

    .line 493
    const-wide/16 v8, 0xa

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 497
    :goto_b
    const-string v7, "SCGNetThreadPool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBmpData middle try "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1c
    if-eqz v0, :cond_19

    goto :goto_a

    .line 494
    :catch_3
    move-exception v1

    .line 495
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 504
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1d
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 507
    :cond_1e
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 508
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 510
    :cond_1f
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v7, v8, v6, v9}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 517
    :cond_20
    :pswitch_3
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    iget-object v8, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlLarge:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 518
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 531
    :cond_21
    :goto_c
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_25

    .line 532
    if-nez v0, :cond_24

    .line 533
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v7, v8, v6, v9}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 520
    :cond_22
    if-nez v0, :cond_23

    .line 521
    add-int/lit8 v2, v2, 0x1

    .line 522
    iget v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v7, :cond_21

    .line 524
    const-wide/16 v8, 0xa

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 528
    :goto_d
    const-string v7, "SCGNetThreadPool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBmpData small try "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_23
    if-eqz v0, :cond_20

    goto :goto_c

    .line 525
    :catch_4
    move-exception v1

    .line 526
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 535
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_24
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 538
    :cond_25
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_26

    .line 539
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 541
    :cond_26
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v7, v8, v6, v9}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isCanceled()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 155
    .local v0, "bFlag":Z
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mFlagCanceled:Z

    .line 157
    return v0
.end method

.method private repost()V
    .locals 9

    .prologue
    .line 580
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataUrl:Ljava/lang/Object;

    check-cast v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;

    .line 581
    .local v2, "param":Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;
    new-instance v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;

    invoke-direct {v4}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;-><init>()V

    .line 582
    .local v4, "sNetRetStr":Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;
    const/4 v0, 0x0

    .line 583
    .local v0, "bSuc":Z
    const/4 v1, 0x0

    .line 584
    .local v1, "nTryCnt":I
    iget-object v5, v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostFile:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 586
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    iget-object v6, v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostUrl:Ljava/lang/String;

    iget-object v7, v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostParam:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v4}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->post(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;)Z

    move-result v0

    .line 587
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 619
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-nez v5, :cond_6

    .line 622
    :goto_1
    return-void

    .line 589
    :cond_2
    if-nez v0, :cond_3

    .line 590
    add-int/lit8 v1, v1, 0x1

    .line 591
    iget v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v1, v5, :cond_1

    .line 593
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_2
    const-string v5, "SCGNetThreadPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "repost try "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_3
    if-eqz v0, :cond_0

    goto :goto_0

    .line 603
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    iget-object v6, v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostUrl:Ljava/lang/String;

    iget-object v7, v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostParam:Ljava/lang/String;

    iget-object v8, v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostFile:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;)Z

    move-result v0

    .line 604
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 606
    if-nez v0, :cond_5

    .line 607
    add-int/lit8 v1, v1, 0x1

    .line 608
    iget v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v1, v5, :cond_1

    .line 610
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 613
    :goto_3
    const-string v5, "SCGNetThreadPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "repost with file try "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_5
    if-eqz v0, :cond_4

    goto :goto_0

    .line 620
    :cond_6
    if-eqz v0, :cond_7

    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    .line 621
    .local v3, "resultType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    :goto_4
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    iget-object v6, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;->sResult:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v5, v3, v6, v7}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 620
    .end local v3    # "resultType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    :cond_7
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    goto :goto_4

    .line 594
    :catch_0
    move-exception v5

    goto :goto_2

    .line 611
    :catch_1
    move-exception v5

    goto :goto_3
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mFlagCanceled:Z

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->cancel()V

    .line 149
    return-void
.end method

.method public getPicData()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 194
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-nez v6, :cond_0

    .line 365
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataUrl:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 196
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataUrl:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 197
    .local v5, "sUrl":Ljava/lang/String;
    const/4 v2, 0x0

    .line 198
    .local v2, "nTryCnt":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/net/NetTypeReader;->getNetType(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    move-result-object v3

    .line 199
    .local v3, "netType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;
    const/4 v0, 0x0

    .line 201
    .local v0, "data":[B
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-virtual {v6, v5}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 202
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 214
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_6

    .line 215
    if-nez v0, :cond_5

    .line 216
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    :cond_3
    if-nez v0, :cond_4

    .line 204
    add-int/lit8 v2, v2, 0x1

    .line 205
    iget v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v6, :cond_2

    .line 207
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_2
    const-string v6, "SCGNetThreadPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPicData try "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " netType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_4
    if-eqz v0, :cond_1

    goto :goto_1

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    .end local v0    # "data":[B
    .end local v2    # "nTryCnt":I
    .end local v3    # "netType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;
    .end local v5    # "sUrl":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataUrl:Ljava/lang/Object;

    check-cast v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;

    .line 227
    .local v4, "param":Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;
    const/4 v2, 0x0

    .line 229
    .restart local v2    # "nTryCnt":I
    sget-object v6, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumWbPicGetMode:[I

    iget-object v7, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->mode:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 231
    :pswitch_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/net/NetTypeReader;->getNetType(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    move-result-object v3

    .line 232
    .restart local v3    # "netType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;
    const-string v5, ""

    .line 233
    .restart local v5    # "sUrl":Ljava/lang/String;
    sget-object v6, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_WIFI:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    if-ne v3, v6, :cond_b

    .line 234
    iget-object v5, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlLarge:Ljava/lang/String;

    .line 240
    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 242
    .restart local v0    # "data":[B
    :cond_9
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-virtual {v6, v5}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 243
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 258
    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_10

    .line 259
    if-nez v0, :cond_f

    .line 260
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 235
    .end local v0    # "data":[B
    :cond_b
    sget-object v6, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    if-ne v3, v6, :cond_c

    .line 236
    iget-object v5, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlMiddle:Ljava/lang/String;

    goto :goto_3

    .line 237
    :cond_c
    sget-object v6, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_MOBILE_2G:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    if-ne v3, v6, :cond_8

    .line 238
    iget-object v5, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlSmall:Ljava/lang/String;

    goto :goto_3

    .line 245
    .restart local v0    # "data":[B
    :cond_d
    if-nez v0, :cond_e

    .line 246
    add-int/lit8 v2, v2, 0x1

    .line 247
    iget v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v6, :cond_a

    .line 250
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :goto_5
    const-string v6, "SCGNetThreadPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPicData try "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " netType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_e
    if-eqz v0, :cond_9

    goto :goto_4

    .line 251
    :catch_1
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 262
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 265
    :cond_10
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 271
    .end local v0    # "data":[B
    .end local v3    # "netType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;
    .end local v5    # "sUrl":Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .line 273
    .restart local v0    # "data":[B
    :cond_11
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    iget-object v7, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlLarge:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 274
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 288
    :cond_12
    :goto_6
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_16

    .line 289
    if-nez v0, :cond_15

    .line 290
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 275
    :cond_13
    if-nez v0, :cond_14

    .line 276
    add-int/lit8 v2, v2, 0x1

    .line 277
    iget v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v6, :cond_12

    .line 279
    const-wide/16 v6, 0xa

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 283
    :goto_7
    const-string v6, "SCGNetThreadPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPicData large try "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_14
    if-eqz v0, :cond_11

    goto :goto_6

    .line 280
    :catch_2
    move-exception v1

    .line 281
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 292
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_15
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 295
    :cond_16
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 301
    .end local v0    # "data":[B
    :pswitch_2
    const/4 v0, 0x0

    .line 303
    .restart local v0    # "data":[B
    :cond_17
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    iget-object v7, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlMiddle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 304
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 319
    :cond_18
    :goto_8
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 320
    if-nez v0, :cond_1b

    .line 321
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 306
    :cond_19
    if-nez v0, :cond_1a

    .line 307
    add-int/lit8 v2, v2, 0x1

    .line 308
    iget v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v6, :cond_18

    .line 310
    const-wide/16 v6, 0xa

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 314
    :goto_9
    const-string v6, "SCGNetThreadPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPicData middle try "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_1a
    if-eqz v0, :cond_17

    goto :goto_8

    .line 311
    :catch_3
    move-exception v1

    .line 312
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 323
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1b
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 326
    :cond_1c
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 332
    .end local v0    # "data":[B
    :pswitch_3
    const/4 v0, 0x0

    .line 334
    .restart local v0    # "data":[B
    :cond_1d
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    iget-object v7, v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlSmall:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 335
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 350
    :cond_1e
    :goto_a
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_22

    .line 351
    if-nez v0, :cond_21

    .line 352
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 337
    :cond_1f
    if-nez v0, :cond_20

    .line 338
    add-int/lit8 v2, v2, 0x1

    .line 339
    iget v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v6, :cond_1e

    .line 341
    const-wide/16 v6, 0xa

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 345
    :goto_b
    const-string v6, "SCGNetThreadPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPicData small try "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_20
    if-eqz v0, :cond_1d

    goto :goto_a

    .line 342
    :catch_4
    move-exception v1

    .line 343
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 354
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_21
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 357
    :cond_22
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getStringData()V
    .locals 10

    .prologue
    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, "nTryCnt":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataUrl:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 164
    .local v5, "sUrl":Ljava/lang/String;
    new-instance v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;-><init>()V

    .line 166
    .local v3, "netRetString":Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;
    const/4 v0, 0x0

    .line 168
    .local v0, "bSuc":Z
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-virtual {v6, v5, v3}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetString(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;)Z

    move-result v0

    .line 169
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 184
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-nez v6, :cond_4

    .line 191
    :goto_1
    return-void

    .line 171
    :cond_2
    if-nez v0, :cond_3

    .line 172
    add-int/lit8 v2, v2, 0x1

    .line 173
    iget v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-gt v2, v6, :cond_1

    .line 175
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_2
    const-string v6, "SCGNetThreadPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStringData try "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_3
    if-eqz v0, :cond_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_6

    .line 186
    if-eqz v0, :cond_5

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    .line 187
    .local v4, "resultType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    :goto_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    iget-object v7, v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;->sResult:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v4, v7, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 186
    .end local v4    # "resultType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    :cond_5
    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    goto :goto_3

    .line 189
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "sName":Ljava/lang/String;
    const-string v3, "SCGNetThreadPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " running"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    if-ne v3, v4, :cond_4

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataType:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    .line 68
    .local v0, "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataType:[I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 100
    .end local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    :cond_2
    :goto_1
    const-string v3, "SCGNetThreadPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " done"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v2    # "sName":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    invoke-interface {v3, p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;->onTaskGc(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    goto :goto_0

    .line 70
    .restart local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    .restart local v2    # "sName":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->getStringData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 101
    .end local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    .end local v2    # "sName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "NetThreadTaskWeibo get net data %s,error:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataType:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-eqz v3, :cond_3

    .line 106
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    invoke-interface {v3, v4, v7, v5}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    .restart local v2    # "sName":Ljava/lang/String;
    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->getPicData()V

    goto :goto_1

    .line 78
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->getBmpData()Landroid/graphics/Bitmap;

    goto :goto_1

    .line 83
    .end local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_POST:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    if-ne v3, v4, :cond_5

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataType:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    .line 85
    .local v0, "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataPostType:[I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 87
    :pswitch_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->comment()V

    goto :goto_1

    .line 91
    :pswitch_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->repost()V

    goto :goto_1

    .line 97
    .end local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_DEL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 85
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
    .param p2, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    .line 132
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mUserContext:Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public setTaskGcListener(Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    .line 139
    return-void
.end method

.method public setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "dataType"    # Ljava/lang/Object;
    .param p2, "dataUrl"    # Ljava/lang/Object;
    .param p3, "nRetryCnt"    # I

    .prologue
    const/4 v1, 0x5

    .line 119
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataType:Ljava/lang/Object;

    .line 120
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mDataUrl:Ljava/lang/Object;

    .line 122
    iput p3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    .line 123
    iget v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    if-le v0, v1, :cond_0

    .line 124
    iput v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;->mTryCnt:I

    .line 126
    :cond_0
    return-void
.end method
