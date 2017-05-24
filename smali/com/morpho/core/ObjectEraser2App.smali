.class public Lcom/morpho/core/ObjectEraser2App;
.super Ljava/lang/Object;
.source "ObjectEraser2App.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/morpho/core/ObjectEraser2App$1;,
        Lcom/morpho/core/ObjectEraser2App$Pass;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Morpho Object Eraser2"


# instance fields
.field mEraser:Lcom/morpho/core/ObjectEraser2;

.field private pass:Lcom/morpho/core/ObjectEraser2App$Pass;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    :try_start_0
    const-string/jumbo v1, "morpho_object_eraser2_app"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 27
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 28
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "Morpho Object Eraser2"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/morpho/utils/debug/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "Morpho Object Eraser2"

    const-string v2, "can\'t loadLibrary"

    invoke-static {v1, v2}, Lcom/morpho/utils/debug/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static convertSaveRawData2Jpeg(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p0, "src_path"    # Ljava/lang/String;
    .param p1, "dst_path"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-static {p0}, Lcom/morpho/core/ObjectEraser2App;->readRawFile2ByteBufferNative(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 331
    .local v0, "imageBuf":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 332
    return-void
.end method

.method public static decodeFileToArgb(IILjava/lang/String;[I)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "file_path"    # Ljava/lang/String;
    .param p3, "argb"    # [I

    .prologue
    .line 335
    invoke-static {p2}, Lcom/morpho/core/ObjectEraser2App;->readRawFile2ByteBufferNative(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 336
    .local v1, "imageBuf":Ljava/nio/ByteBuffer;
    new-instance v0, Lcom/morpho/utils/graphics/ImageConverter;

    invoke-direct {v0}, Lcom/morpho/utils/graphics/ImageConverter;-><init>()V

    .line 337
    .local v0, "converter":Lcom/morpho/utils/graphics/ImageConverter;
    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/morpho/utils/graphics/ImageConverter;->yvu420sp2argb8888(IILjava/nio/ByteBuffer;[I)I

    .line 338
    invoke-static {v1}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 339
    const/4 v2, 0x0

    return v2
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/morpho/core/ObjectEraser2;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readRawFile2ByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 346
    .local v2, "f_in":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 347
    .local v1, "f_chan":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 348
    .local v4, "f_size":J
    long-to-int v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 349
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 350
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 351
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v1    # "f_chan":Ljava/nio/channels/FileChannel;
    .end local v2    # "f_in":Ljava/io/FileInputStream;
    .end local v4    # "f_size":J
    :goto_0
    return-object v0

    .line 352
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static readRawFile2ByteBufferNative(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 363
    .local v2, "f_in":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 364
    .local v1, "f_chan":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 365
    .local v4, "f_size":J
    const-string v3, "RemoveMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "f_size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    long-to-int v3, v4

    invoke-static {v3}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 367
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 368
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 369
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v1    # "f_chan":Ljava/nio/channels/FileChannel;
    .end local v2    # "f_in":Ljava/io/FileInputStream;
    .end local v4    # "f_size":J
    :goto_0
    return-object v0

    .line 370
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final native writePgm(Ljava/nio/ByteBuffer;IILjava/lang/String;)I
.end method


# virtual methods
.method public addBigImage([BI)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    .line 423
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBigImage, data.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, "result":I
    array-length v2, p1

    invoke-static {v2}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 426
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 427
    iget-object v2, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    iget-object v3, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v3}, Lcom/morpho/core/ObjectEraser2;->getnativeObject()I

    move-result v3

    invoke-virtual {v2, v3, v0, p2}, Lcom/morpho/core/ObjectEraser2;->addBigImageForSave(ILjava/nio/ByteBuffer;I)I

    move-result v1

    .line 428
    invoke-static {v0}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 429
    const/4 v0, 0x0

    .line 430
    return v1
.end method

.method public addImage([B)I
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 406
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addImage, data.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v1, 0x0

    .line 408
    .local v1, "result":I
    array-length v2, p1

    invoke-static {v2}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 409
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/morpho/core/ObjectEraser2;->addImage(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 410
    invoke-static {v0}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 411
    const/4 v0, 0x0

    .line 412
    return v1
.end method

.method public detect()I
    .locals 2

    .prologue
    .line 385
    const-string v0, "RemoveMode"

    const-string v1, "detect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/morpho/core/ObjectEraser2;->detect(I)I

    move-result v0

    return v0
.end method

.method public detect([Ljava/lang/String;I)V
    .locals 13
    .param p1, "files"    # [Ljava/lang/String;
    .param p2, "base_frame"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 77
    if-gez p2, :cond_0

    move v1, v8

    .line 80
    .local v1, "base_index":I
    :goto_0
    sget-object v9, Lcom/morpho/core/ObjectEraser2App$1;->$SwitchMap$com$morpho$core$ObjectEraser2App$Pass:[I

    iget-object v10, p0, Lcom/morpho/core/ObjectEraser2App;->pass:Lcom/morpho/core/ObjectEraser2App$Pass;

    invoke-virtual {v10}, Lcom/morpho/core/ObjectEraser2App$Pass;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 149
    :goto_1
    const/4 v2, 0x0

    .line 151
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    return-void

    .line 77
    .end local v1    # "base_index":I
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_0
    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-le p2, v9, :cond_1

    array-length v9, p1

    add-int/lit8 v1, v9, -0x1

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_0

    .line 82
    .restart local v1    # "base_index":I
    :pswitch_0
    iget-object v9, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v9}, Lcom/morpho/core/ObjectEraser2;->start()I

    move-result v6

    .line 84
    .local v6, "ret":I
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v3, v0, v4

    .line 86
    .local v3, "file":Ljava/lang/String;
    const-string v9, ".jpg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 87
    new-array v7, v12, [I

    .line 89
    .local v7, "size":[I
    aget v9, v7, v8

    aget v10, v7, v11

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 95
    .end local v7    # "size":[I
    .restart local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    :goto_3
    iget-object v9, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v9, v2}, Lcom/morpho/core/ObjectEraser2;->addImage(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 97
    invoke-static {v2}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 98
    const/4 v2, 0x0

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 92
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-static {v3}, Lcom/morpho/core/ObjectEraser2App;->readRawFile2ByteBufferNative(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .restart local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_3

    .line 101
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v3    # "file":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v8, v1}, Lcom/morpho/core/ObjectEraser2;->detect(I)I

    move-result v6

    .line 104
    goto :goto_1

    .line 106
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "ret":I
    :pswitch_1
    new-array v7, v12, [I

    .line 107
    .restart local v7    # "size":[I
    aget-object v9, p1, v1

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 116
    aget v9, v7, v8

    aget v10, v7, v11

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 122
    .restart local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    :goto_4
    iget-object v9, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v9}, Lcom/morpho/core/ObjectEraser2;->start()I

    move-result v6

    .line 124
    .restart local v6    # "ret":I
    invoke-static {v2}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 126
    move-object v0, p1

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_5
    if-ge v4, v5, :cond_7

    aget-object v3, v0, v4

    .line 128
    .restart local v3    # "file":Ljava/lang/String;
    aget-object v9, p1, v1

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 126
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 119
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "ret":I
    :cond_4
    aget-object v9, p1, v1

    invoke-static {v9}, Lcom/morpho/core/ObjectEraser2App;->readRawFile2ByteBufferNative(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .restart local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_4

    .line 131
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "ret":I
    :cond_5
    const-string v9, ".jpg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 132
    aget v9, v7, v8

    aget v10, v7, v11

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 138
    :goto_7
    iget-object v9, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v9, v2}, Lcom/morpho/core/ObjectEraser2;->addImage(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 140
    invoke-static {v2}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    goto :goto_6

    .line 135
    :cond_6
    invoke-static {v3}, Lcom/morpho/core/ObjectEraser2App;->readRawFile2ByteBufferNative(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_7

    .line 143
    .end local v3    # "file":Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v9, v8}, Lcom/morpho/core/ObjectEraser2;->detect(I)I

    move-result v6

    goto/16 :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v0}, Lcom/morpho/core/ObjectEraser2;->finish()V

    .line 73
    return-void
.end method

.method public getEdgePointList([I[I)I
    .locals 1
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v0, p1, p2}, Lcom/morpho/core/ObjectEraser2;->getEdgePointList([I[I)I

    move-result v0

    return v0
.end method

.method public getFailureCode()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v0}, Lcom/morpho/core/ObjectEraser2;->getFailureCode()I

    move-result v0

    return v0
.end method

.method public getMaskImage(II)[I
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 196
    mul-int v1, p1, p2

    invoke-static {v1}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 197
    .local v3, "maskImageBuf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v1, v3}, Lcom/morpho/core/ObjectEraser2;->getMaskImage(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 200
    .local v9, "ret":I
    if-eqz v9, :cond_0

    .line 201
    invoke-static {v3}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 202
    const/4 v4, 0x0

    .line 212
    :goto_0
    return-object v4

    .line 205
    :cond_0
    mul-int v1, p1, p2

    new-array v4, v1, [I

    .line 207
    .local v4, "maskImageArray":[I
    new-instance v0, Lcom/morpho/utils/graphics/ImageConverter;

    invoke-direct {v0}, Lcom/morpho/utils/graphics/ImageConverter;-><init>()V

    .line 208
    .local v0, "converter":Lcom/morpho/utils/graphics/ImageConverter;
    const/16 v5, 0x1e

    const/16 v8, 0xff

    move v1, p1

    move v2, p2

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/morpho/utils/graphics/ImageConverter;->alpha82argb8888(IILjava/nio/ByteBuffer;[IIIII)I

    .line 210
    invoke-static {v3}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    goto :goto_0
.end method

.method public getNumberOfFoundObjects([Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "rect"    # [Landroid/graphics/Rect;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    iget-object v1, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v1}, Lcom/morpho/core/ObjectEraser2;->getnativeObject()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/morpho/core/ObjectEraser2;->getNumberOfFoundObjects(I[Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public getObjectLabel(IIII)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "preview_width"    # I
    .param p4, "preview_height"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/morpho/core/ObjectEraser2;->getObjectLabel(IIII)I

    move-result v0

    return v0
.end method

.method public getPreviewImage(II)[I
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 175
    mul-int v4, p1, p2

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 177
    .local v2, "previewImageBuf":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v4, v2}, Lcom/morpho/core/ObjectEraser2;->getPreviewImage(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 180
    .local v3, "ret":I
    if-eqz v3, :cond_0

    .line 181
    invoke-static {v2}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 182
    const/4 v1, 0x0

    .line 192
    :goto_0
    return-object v1

    .line 187
    :cond_0
    mul-int v4, p1, p2

    new-array v1, v4, [I

    .line 188
    .local v1, "previewImageArray":[I
    new-instance v0, Lcom/morpho/utils/graphics/ImageConverter;

    invoke-direct {v0}, Lcom/morpho/utils/graphics/ImageConverter;-><init>()V

    .line 189
    .local v0, "converter":Lcom/morpho/utils/graphics/ImageConverter;
    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/morpho/utils/graphics/ImageConverter;->yvu420sp2argb8888(IILjava/nio/ByteBuffer;[I)I

    .line 190
    invoke-static {v2}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    goto :goto_0
.end method

.method public getRemovabilityConfidenceList([I)I
    .locals 1
    .param p1, "confidence_list"    # [I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v0, p1}, Lcom/morpho/core/ObjectEraser2;->getRemovabilityConfidenceList([I)I

    move-result v0

    return v0
.end method

.method public initialize(IIIILjava/lang/String;ILcom/morpho/core/ObjectEraser2App$Pass;)I
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "preview_width"    # I
    .param p4, "preview_height"    # I
    .param p5, "format"    # Ljava/lang/String;
    .param p6, "image_count"    # I
    .param p7, "pass"    # Lcom/morpho/core/ObjectEraser2App$Pass;

    .prologue
    .line 56
    new-instance v1, Lcom/morpho/core/ObjectEraser2;

    invoke-direct {v1}, Lcom/morpho/core/ObjectEraser2;-><init>()V

    iput-object v1, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    .line 65
    iget-object v1, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual/range {p7 .. p7}, Lcom/morpho/core/ObjectEraser2App$Pass;->getValue()I

    move-result v6

    move v2, p1

    move v3, p2

    move-object v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/morpho/core/ObjectEraser2;->getBufferSize(IILjava/lang/String;II)I

    move-result v2

    .line 66
    .local v2, "buffer_size":I
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/morpho/core/ObjectEraser2App;->pass:Lcom/morpho/core/ObjectEraser2App$Pass;

    .line 68
    iget-object v1, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual/range {p7 .. p7}, Lcom/morpho/core/ObjectEraser2App$Pass;->getValue()I

    move-result v9

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/morpho/core/ObjectEraser2;->initialize(IIIIILjava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public prepareForSave([ILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "saveArray"    # [I
    .param p2, "outputBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    iget-object v1, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v1}, Lcom/morpho/core/ObjectEraser2;->getnativeObject()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/morpho/core/ObjectEraser2;->prepareForSave(I[ILjava/nio/ByteBuffer;)I

    .line 420
    return-void
.end method

.method public save(IILjava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 390
    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 391
    .local v1, "outputImageBuf":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v3, v1}, Lcom/morpho/core/ObjectEraser2;->getOutputImage(Ljava/nio/ByteBuffer;)I

    .line 394
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    new-array v0, v3, [B

    .line 395
    .local v0, "dataFromBuffer":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 396
    invoke-static {v0, p1, p2}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->YUV2JPEG([BII)[B

    move-result-object v2

    .line 399
    .local v2, "result":[B
    const/4 v0, 0x0

    .line 400
    invoke-static {v1}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 402
    return-object v2
.end method

.method public setArrayOfErasedObjectFlags([I)I
    .locals 1
    .param p1, "labelList"    # [I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v0, p1}, Lcom/morpho/core/ObjectEraser2;->setArrayOfErasedObjectFlags([I)I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 378
    const-string v0, "RemoveMode"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v0}, Lcom/morpho/core/ObjectEraser2;->start()I

    .line 380
    return-void
.end method

.method public writeMaskImage(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 216
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x80

    invoke-static {v2, v3}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 217
    .local v0, "maskImageBuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/morpho/core/ObjectEraser2App;->mEraser:Lcom/morpho/core/ObjectEraser2;

    invoke-virtual {v2, v0}, Lcom/morpho/core/ObjectEraser2;->getMaskImage(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 220
    .local v1, "ret":I
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/morpho/core/ObjectEraser2App;->writePgm(Ljava/nio/ByteBuffer;IILjava/lang/String;)I

    .line 224
    invoke-static {v0}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 225
    return-void
.end method
