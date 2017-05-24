.class Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;
.super Landroid/os/HandlerThread;
.source "RewindMode.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/RewindMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RewindWorkThread"
.end annotation


# static fields
.field public static final ADD_IMG:I = 0x2

.field public static final CACHE_IMG:I = 0x4

.field public static final DETECT_IMG:I = 0x3

.field public static final INIT_ENG:I = 0x1

.field public static final PRE_DECODE:I = 0x8

.field public static final QUIT:I = 0x9

.field public static final RESET_ENG:I = 0x7

.field public static final SAVE_IMG:I = 0x6

.field public static final SWAP_FACE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "REwindWorkThread"


# instance fields
.field private mCaptureNum:I

.field private mDecodeListener:Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;

.field private mDecoder:Lcom/lenovo/scg/camera/rewind/DecodeTool;

.field private mGroupShot:Lcom/morpho/core/GroupShot;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

.field private mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

.field private mbInit:Z

.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/RewindMode;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/RewindMode;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1377
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    .line 1378
    const-string v0, "REwindWorkThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1322
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    .line 1324
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    .line 1326
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecoder:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    .line 1358
    new-instance v0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;-><init>(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecodeListener:Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;

    .line 1379
    iput v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mCaptureNum:I

    .line 1380
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mbInit:Z

    .line 1381
    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    .prologue
    .line 1318
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mbInit:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)Lcom/morpho/core/GroupShot;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    .prologue
    .line 1318
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mCaptureNum:I

    return v0
.end method

.method static synthetic access$1508(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    .prologue
    .line 1318
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mCaptureNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mCaptureNum:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)Lcom/lenovo/scg/camera/mode/RewindMode$Size;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 1318
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->saveFile([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->onDetectImage()V

    return-void
.end method

.method private cacheFaceRectsBitmapOpt(ILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "previewIndex"    # I
    .param p2, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1606
    const-string v4, "REwindWorkThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cacheFaceRectsBitmapOpt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->getTargetRects()Ljava/util/ArrayList;

    move-result-object v3

    .line 1608
    .local v3, "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    .line 1609
    .local v2, "rect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    invoke-direct {p0, p2, v2}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->getTargetImageBitmap(Landroid/graphics/Bitmap;Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1610
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2200(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    iget v6, v2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->id:I

    # invokes: Lcom/lenovo/scg/camera/mode/RewindMode;->generateFaceTag(II)Ljava/lang/String;
    invoke-static {v5, v6, p1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2500(Lcom/lenovo/scg/camera/mode/RewindMode;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1612
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "rect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    :cond_0
    return-void
.end method

.method private cachePreviewAndFaceRectBitmaps()V
    .locals 10

    .prologue
    .line 1634
    const-string v6, "REwindWorkThread"

    const-string v7, "cache bitmaps run"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1637
    .local v4, "timeStart":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x5

    if-ge v2, v6, :cond_3

    .line 1639
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2000(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v6

    if-eq v2, v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->getTargetNum()I

    move-result v6

    if-gtz v6, :cond_0

    .line 1637
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1643
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v3, v6, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    .line 1644
    .local v3, "width":I
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v1, v6, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    .line 1645
    .local v1, "height":I
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v6, v6, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    if-gt v6, v3, :cond_1

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v6, v6, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    if-gt v6, v1, :cond_1

    .line 1646
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v3, v6, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    .line 1647
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v1, v6, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    .line 1649
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1650
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    invoke-virtual {v6, v2, v3, v1, v0}, Lcom/morpho/core/GroupShot;->getPreviewImageBitmap(IIILandroid/graphics/Bitmap;)I

    .line 1652
    invoke-direct {p0, v2, v0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->cacheFaceRectsBitmapOpt(ILandroid/graphics/Bitmap;)V

    .line 1654
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2000(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v6

    if-ne v2, v6, :cond_2

    .line 1655
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2200(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # invokes: Lcom/lenovo/scg/camera/mode/RewindMode;->generatePreviewTag(I)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2600(Lcom/lenovo/scg/camera/mode/RewindMode;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1657
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 1663
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_3
    const-string v6, "REwindWorkThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "all bitmap cached!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    return-void
.end method

.method private getBigImageYuv(I)[B
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    const v5, 0x7fffffff

    .line 1859
    const/4 v1, 0x0

    .line 1861
    .local v1, "yuv":[B
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$3000(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1885
    :cond_0
    :goto_0
    return-object v2

    .line 1862
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$3000(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/os/Handler;

    move-result-object v3

    monitor-enter v3

    .line 1863
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThread:Lcom/lenovo/scg/camera/rewind/PredecodeThread;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$3200(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/PredecodeThread;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->getBufferDataByIndex(I)[B

    move-result-object v1

    .line 1864
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1866
    if-nez v1, :cond_4

    .line 1867
    const/4 v0, 0x0

    .line 1869
    .local v0, "jpg":[B
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1870
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v3

    monitor-enter v3

    .line 1871
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getCacheData(I)[B

    move-result-object v0

    .line 1872
    if-nez v0, :cond_2

    .line 1873
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getLostFrame()[B

    move-result-object v0

    .line 1875
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1877
    if-eqz v0, :cond_3

    .line 1878
    sget v2, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    invoke-static {v0, v5, v5, v2}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->JPEG2YUV([BIII)[B

    move-result-object v1

    .line 1880
    :cond_3
    const-string v2, "REwindWorkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBigImageYuv decode index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "jpg":[B
    :goto_1
    move-object v2, v1

    .line 1885
    goto :goto_0

    .line 1864
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1875
    .restart local v0    # "jpg":[B
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1882
    .end local v0    # "jpg":[B
    :cond_4
    const-string v2, "REwindWorkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBigImageYuv Pre-decode match index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getFaceAndTargetRects()V
    .locals 10

    .prologue
    .line 1558
    const-string v6, "REwindWorkThread"

    const-string v7, "getFaceAndTargetRects"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/4 v5, 0x0

    .line 1561
    .local v5, "rects":[I
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    invoke-virtual {v6}, Lcom/morpho/core/GroupShot;->getTargetNum()I

    move-result v4

    .line 1562
    .local v4, "recNum":I
    const-string v6, "REwindWorkThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "targetRectNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    if-lez v4, :cond_3

    .line 1565
    mul-int/lit8 v6, v4, 0x5

    new-array v5, v6, [I

    .line 1566
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    invoke-virtual {v6, v5}, Lcom/morpho/core/GroupShot;->getTargetRects([I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 1567
    const-string v6, "REwindWorkThread"

    const-string v7, "getTargetRect() error!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const/4 v5, 0x0

    .line 1571
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2400(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1603
    :goto_0
    return-void

    .line 1572
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2400(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 1573
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 1574
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2400(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;

    move-result-object v6

    mul-int/lit8 v8, v2, 0x5

    add-int/lit8 v8, v8, 0x0

    aget v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I
    invoke-static {v9}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2000(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1576
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->addTargetRect([I)V

    .line 1581
    .end local v2    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    invoke-virtual {v6}, Lcom/morpho/core/GroupShot;->getFaceNum()I

    move-result v0

    .line 1582
    .local v0, "faceRectNum":I
    const-string v6, "REwindWorkThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "faceRectNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    if-lez v0, :cond_5

    .line 1584
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_2
    const/4 v6, 0x5

    if-ge v3, v6, :cond_5

    .line 1585
    const/4 v1, 0x0

    .line 1587
    .local v1, "faceRects":[I
    mul-int/lit8 v6, v0, 0x5

    new-array v1, v6, [I

    .line 1588
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    invoke-virtual {v6, v1, v3}, Lcom/morpho/core/GroupShot;->getFaceRects([II)I

    move-result v6

    if-eqz v6, :cond_4

    .line 1589
    const-string v6, "REwindWorkThread"

    const-string v7, "getFaceRects() error!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const/4 v1, 0x0

    .line 1593
    :cond_4
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->addFaceRect([I)V

    .line 1584
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1576
    .end local v0    # "faceRectNum":I
    .end local v1    # "faceRects":[I
    .end local v3    # "index":I
    .restart local v2    # "i":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1597
    .end local v2    # "i":I
    .restart local v0    # "faceRectNum":I
    :cond_5
    if-eq v4, v0, :cond_6

    const-string v6, "REwindWorkThread"

    const-string v7, "Target num not equal to face num!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->createCustomRects()V

    .line 1601
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->updateCustomRects2TargetRects()V

    .line 1602
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I
    invoke-static {v7}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2000(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->updateCustomRects2FaceRects(I)V

    goto/16 :goto_0
.end method

.method private getOutputPreview()V
    .locals 5

    .prologue
    .line 1677
    const-string v2, "REwindWorkThread"

    const-string v3, "getOutputPreview "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v1, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    .line 1680
    .local v1, "width":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v0, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    .line 1681
    .local v0, "height":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v2, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    if-gt v2, v1, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v2, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    if-gt v2, v0, :cond_0

    .line 1682
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v1, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    .line 1683
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v0, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    .line 1686
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2800(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1687
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2800(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-enter v3

    .line 1688
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2800(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1689
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    const/4 v4, 0x0

    # setter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2802(Lcom/lenovo/scg/camera/mode/RewindMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1690
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1692
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    # setter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2802(Lcom/lenovo/scg/camera/mode/RewindMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1693
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2800(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/morpho/core/GroupShot;->getScaledOutputImageBitmap(IILandroid/graphics/Bitmap;)I

    .line 1694
    return-void

    .line 1690
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getTargetImageBitmap(Landroid/graphics/Bitmap;Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "rect"    # Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    .prologue
    .line 1616
    iget v5, p2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v3, v5

    .line 1617
    .local v3, "x":I
    iget v5, p2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v4, v5

    .line 1618
    .local v4, "y":I
    iget v5, p2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 1619
    .local v2, "width":I
    iget v5, p2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v0, v5

    .line 1621
    .local v0, "height":I
    add-int v5, v3, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 1622
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v2, v5, v3

    .line 1624
    :cond_0
    add-int v5, v4, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 1625
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v0, v5, v4

    .line 1628
    :cond_1
    invoke-static {p1, v3, v4, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1630
    .local v1, "target":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private isNeedProcess()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1900
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v4

    if-nez v4, :cond_0

    move v4, v5

    .line 1918
    :goto_0
    return v4

    .line 1901
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v6

    monitor-enter v6

    .line 1902
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->getTargetNum()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1903
    monitor-exit v6

    move v4, v5

    goto :goto_0

    .line 1905
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1907
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2400(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_0

    .line 1905
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1908
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2400(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 1909
    :try_start_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2400(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1910
    .local v2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1911
    .local v1, "id":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2400(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1912
    .local v3, "index":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2000(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1913
    const/4 v4, 0x1

    monitor-exit v6

    goto :goto_0

    .line 1916
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "index":I
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v4, v5

    .line 1918
    goto :goto_0
.end method

.method private onAddImage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1477
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mbInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecoder:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecoder:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->addJpeg([B)V

    .line 1480
    :cond_0
    return-void
.end method

.method private onCacheImage()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1491
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2000(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/morpho/core/GroupShot;->setBaseImage(I)I

    move-result v0

    .line 1492
    .local v0, "result":I
    const-string v1, "REwindWorkThread"

    const-string/jumbo v2, "setBaseImage() = 0x%08x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1508
    :goto_0
    return-void

    .line 1495
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v2

    monitor-enter v2

    .line 1496
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->getFaceAndTargetRects()V

    .line 1498
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2200(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 1502
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1499
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2200(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1500
    :try_start_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->cachePreviewAndFaceRectBitmaps()V

    .line 1501
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1502
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1504
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mbCapAnimEnd:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1100(Lcom/lenovo/scg/camera/mode/RewindMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1505
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1507
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # setter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mbAttachEnd:Z
    invoke-static {v1, v6}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$902(Lcom/lenovo/scg/camera/mode/RewindMode;Z)Z

    goto :goto_0

    .line 1501
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private onDetectImage()V
    .locals 2

    .prologue
    .line 1483
    const-string v0, "REwindWorkThread"

    const-string v1, "DETECT_IMG "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mCaptureNum:I

    .line 1485
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    invoke-virtual {v0}, Lcom/morpho/core/GroupShot;->attach_end()I

    .line 1487
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1488
    :cond_0
    return-void
.end method

.method private onInitialize()V
    .locals 10

    .prologue
    const/4 v1, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1459
    invoke-static {}, Lcom/morpho/core/GroupShot;->getInstance()Lcom/morpho/core/GroupShot;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    .line 1460
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v3, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v4, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v5, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v6, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/morpho/core/GroupShot;->initialize(IIIIII)I

    move-result v7

    .line 1461
    .local v7, "ret":I
    const-string v0, "REwindWorkThread"

    const-string v1, "initialize() = 0x%08x"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    if-nez v7, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    invoke-virtual {v0, v8}, Lcom/morpho/core/GroupShot;->attach_start(I)I

    .line 1464
    iput-boolean v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mbInit:Z

    .line 1465
    iput v9, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mCaptureNum:I

    .line 1467
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecoder:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    if-nez v0, :cond_0

    .line 1468
    new-instance v0, Lcom/lenovo/scg/camera/rewind/DecodeTool;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v1, v1, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v2, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    sget v3, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/lenovo/scg/camera/rewind/DecodeTool;-><init>(IIIZ)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecoder:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    .line 1469
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecoder:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->setShotTool(Lcom/lenovo/scg/camera/ContinuousShotTool;)V

    .line 1470
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecoder:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecodeListener:Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->setListener(Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;)V

    .line 1473
    :cond_0
    return-void
.end method

.method private onPredecode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1784
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mUseList:[I
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2900(Lcom/lenovo/scg/camera/mode/RewindMode;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/morpho/core/GroupShot;->getUseImageList([I)I

    move-result v2

    .line 1786
    .local v2, "ret":I
    if-nez v2, :cond_1

    .line 1787
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 1790
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mUseList:[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2900(Lcom/lenovo/scg/camera/mode/RewindMode;)[I

    move-result-object v3

    aget v3, v3, v0

    if-eqz v3, :cond_0

    .line 1791
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$3000(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v5}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getCacheData(I)[B

    move-result-object v5

    invoke-virtual {v3, v4, v0, v6, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1792
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$3000(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1787
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1794
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$3000(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1795
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$3000(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1799
    .end local v0    # "i":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private onSave()V
    .locals 14

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x0

    .line 1802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1804
    .local v6, "startTime":J
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->isNeedProcess()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1805
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->saveBaseImage()V

    .line 1806
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1856
    :cond_0
    :goto_0
    return-void

    .line 1810
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    invoke-virtual {v8}, Lcom/morpho/core/GroupShot;->stopPreview()I

    move-result v5

    .line 1811
    .local v5, "ret":I
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mUseList:[I
    invoke-static {v9}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2900(Lcom/lenovo/scg/camera/mode/RewindMode;)[I

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/morpho/core/GroupShot;->getUseImageList([I)I

    move-result v8

    or-int/2addr v5, v8

    .line 1812
    if-eqz v5, :cond_2

    .line 1813
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13, v5, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1814
    .local v2, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1818
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v8, v8, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v9, v9, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    mul-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1819
    .local v3, "outData":Ljava/nio/ByteBuffer;
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    invoke-virtual {v8, v3}, Lcom/morpho/core/GroupShot;->setOutput(Ljava/nio/ByteBuffer;)I

    .line 1821
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2000(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->getBigImageYuv(I)[B

    move-result-object v1

    .line 1822
    .local v1, "inData":[B
    if-eqz v1, :cond_3

    .line 1824
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I
    invoke-static {v9}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2000(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v9

    invoke-virtual {v8, v1, v9}, Lcom/morpho/core/GroupShot;->doProcess([BI)I

    move-result v8

    or-int/2addr v5, v8

    .line 1828
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v8, 0x5

    if-ge v0, v8, :cond_5

    .line 1830
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2000(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v8

    if-eq v0, v8, :cond_4

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mUseList:[I
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2900(Lcom/lenovo/scg/camera/mode/RewindMode;)[I

    move-result-object v8

    aget v8, v8, v0

    if-eqz v8, :cond_4

    .line 1831
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->getBigImageYuv(I)[B

    move-result-object v1

    .line 1832
    if-eqz v1, :cond_4

    .line 1834
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    invoke-virtual {v8, v1, v0}, Lcom/morpho/core/GroupShot;->doProcess([BI)I

    move-result v8

    or-int/2addr v5, v8

    .line 1828
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1840
    :cond_5
    if-nez v5, :cond_6

    .line 1841
    new-instance v4, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {v4}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 1842
    .local v4, "para":Lcom/lenovo/scg/camera/MediaSavePara;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iput-object v8, v4, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 1843
    sget-object v8, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->YUV:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    iput-object v8, v4, Lcom/lenovo/scg/camera/MediaSavePara;->type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    .line 1844
    iput v12, v4, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    .line 1845
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v8, v8, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    iput v8, v4, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    .line 1846
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v8, v8, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    iput v8, v4, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    .line 1847
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$3100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    .line 1850
    .end local v4    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    :cond_6
    const-string v8, "REwindWorkThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Save jpeg spendTime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    if-eqz v8, :cond_0

    .line 1853
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13, v5, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1854
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private onSwap()V
    .locals 3

    .prologue
    .line 1668
    const-string v0, "REwindWorkThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedTargetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2700(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSwapId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mSwapId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$600(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2700(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mSwapId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$600(Lcom/lenovo/scg/camera/mode/RewindMode;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/morpho/core/GroupShot;->selectImage(II)I

    .line 1670
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->getOutputPreview()V

    .line 1672
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->onPredecode()V

    .line 1673
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1674
    :cond_0
    return-void
.end method

.method private saveBaseImage()V
    .locals 4

    .prologue
    .line 1889
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1896
    :goto_0
    return-void

    .line 1890
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v2

    monitor-enter v2

    .line 1891
    :try_start_0
    new-instance v0, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 1892
    .local v0, "para":Lcom/lenovo/scg/camera/MediaSavePara;
    const/4 v1, 0x0

    iput v1, v0, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    .line 1893
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getCacheData(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 1894
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$3100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    .line 1895
    monitor-exit v2

    goto :goto_0

    .end local v0    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveFile([BLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "bfile"    # [B
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1960
    const/4 v0, 0x0

    .line 1961
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    .line 1962
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1964
    .local v5, "file":Ljava/io/File;
    const-string v9, "REwindWorkThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveFile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1967
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1968
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1970
    :cond_0
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1971
    .end local v5    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1972
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1973
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1977
    if-eqz v1, :cond_1

    .line 1979
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1984
    :cond_1
    :goto_0
    if-eqz v8, :cond_6

    .line 1986
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 1992
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dir":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 1980
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 1981
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1987
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1988
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 1989
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 1974
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 1975
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1977
    if-eqz v0, :cond_3

    .line 1979
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1984
    :cond_3
    :goto_3
    if-eqz v7, :cond_2

    .line 1986
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 1987
    :catch_3
    move-exception v4

    .line 1988
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1980
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 1981
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1977
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v0, :cond_4

    .line 1979
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1984
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 1986
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1989
    :cond_5
    :goto_6
    throw v9

    .line 1980
    :catch_5
    move-exception v4

    .line 1981
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1987
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 1988
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1977
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_4

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 1974
    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_2

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public addFaceRect([I)V
    .locals 6
    .param p1, "rect"    # [I

    .prologue
    .line 1512
    if-eqz p1, :cond_0

    array-length v3, p1

    if-gtz v3, :cond_1

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1516
    :cond_1
    const-string v3, "REwindWorkThread"

    const-string v4, "addFaceRect"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1519
    .local v2, "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 1520
    const-string v3, "REwindWorkThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FaceRect id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(l,t,w,h) = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    aget v5, p1, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x2

    aget v5, p1, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x3

    aget v5, p1, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x4

    aget v5, p1, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    new-instance v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;-><init>()V

    .line 1524
    .local v1, "pRect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    .line 1525
    add-int/lit8 v3, v0, 0x2

    aget v3, p1, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    .line 1526
    add-int/lit8 v3, v0, 0x3

    aget v3, p1, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    .line 1527
    add-int/lit8 v3, v0, 0x4

    aget v3, p1, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    .line 1528
    aget v3, p1, v0

    iput v3, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->id:I

    .line 1529
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_1

    .line 1531
    .end local v1    # "pRect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->addFaceRect(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public addTargetRect([I)V
    .locals 5
    .param p1, "rect"    # [I

    .prologue
    .line 1536
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Lcom/lenovo/scg/camera/rewind/RewindProperty;->focusFaceId:I

    .line 1537
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 1555
    :cond_0
    return-void

    .line 1541
    :cond_1
    const-string v2, "REwindWorkThread"

    const-string v3, "addTargetRect"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1544
    const-string v2, "REwindWorkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TargetRects id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(l,t,w,h) = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x2

    aget v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x3

    aget v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x4

    aget v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    new-instance v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;-><init>()V

    .line 1548
    .local v1, "pRect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    .line 1549
    add-int/lit8 v2, v0, 0x2

    aget v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    .line 1550
    add-int/lit8 v2, v0, 0x3

    aget v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    .line 1551
    add-int/lit8 v2, v0, 0x4

    aget v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    .line 1552
    aget v2, p1, v0

    iput v2, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->id:I

    .line 1553
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->addTargetRect(Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;)V

    .line 1543
    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1397
    const-string v0, "REwindWorkThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "work thread handle msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mbInit:Z

    if-nez v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 1455
    :cond_0
    :goto_0
    return v3

    .line 1401
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1404
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->onInitialize()V

    goto :goto_0

    .line 1408
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->onAddImage(Landroid/os/Message;)V

    goto :goto_0

    .line 1412
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->onDetectImage()V

    goto :goto_0

    .line 1416
    :pswitch_3
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->onCacheImage()V

    goto :goto_0

    .line 1420
    :pswitch_4
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->onSwap()V

    goto :goto_0

    .line 1424
    :pswitch_5
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->onSave()V

    goto :goto_0

    .line 1428
    :pswitch_6
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->onPredecode()V

    goto :goto_0

    .line 1432
    :pswitch_7
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;

    invoke-virtual {v0}, Lcom/morpho/core/GroupShot;->reset()V

    .line 1433
    :cond_2
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mbInit:Z

    .line 1434
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecoder:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecoder:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->exit()V

    .line 1436
    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mDecoder:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    goto :goto_0

    .line 1441
    :pswitch_8
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1442
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v1

    monitor-enter v1

    .line 1443
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->setMulitiFrameCaptureAnimListener(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;)V

    .line 1444
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    .line 1445
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    const/4 v2, 0x0

    # setter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1902(Lcom/lenovo/scg/camera/mode/RewindMode;Lcom/lenovo/scg/camera/ContinuousShotTool;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 1446
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    :cond_3
    const-string v0, "REwindWorkThread"

    const-string v1, "RewindWorkThread quit!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->quit()Z

    goto :goto_0

    .line 1446
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public setMainThreadHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mMainThreadHandler:Landroid/os/Handler;

    .line 1385
    return-void
.end method

.method public setPictureSize(Lcom/lenovo/scg/camera/mode/RewindMode$Size;)V
    .locals 0
    .param p1, "size"    # Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPicSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    .line 1389
    return-void
.end method

.method public setPreviewSize(Lcom/lenovo/scg/camera/mode/RewindMode$Size;)V
    .locals 0
    .param p1, "size"    # Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    .line 1393
    return-void
.end method
