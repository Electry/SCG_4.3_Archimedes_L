.class public Lcom/etao/kaka/decode/KakaDecode;
.super Ljava/lang/Object;
.source "KakaDecode.java"


# static fields
.field public static final SO_VERSION:Ljava/lang/String; = "alipaydecode_1.0.1_0807"

.field private static final TAG:Ljava/lang/String; = "KakaDecode"

.field public static final VERSION_KEY:Ljava/lang/String; = "[TELL_ME_HUOYAN_KAKA_GOGOGO_102]"

.field private static isInDecoding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    :try_start_0
    const-string v1, "alipaydecode"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/etao/kaka/decode/KakaDecode;->isInDecoding:Z

    return-void

    .line 37
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 38
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "KakaDecode"

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u662f\u4e0d\u662f\u5fd8\u8bb0\u5728libs/armeabi/\u76ee\u5f55\u4e0b\u52a0\u5165libalipaydecode.so\u4e86\uff1f\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized codeDecode([BIIILandroid/graphics/Rect;I)Lcom/etao/kaka/decode/DecodeResult;
    .locals 14
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strides"    # I
    .param p4, "rect"    # Landroid/graphics/Rect;
    .param p5, "scanMode"    # I

    .prologue
    .line 67
    const-class v10, Lcom/etao/kaka/decode/KakaDecode;

    monitor-enter v10

    :try_start_0
    sget-boolean v5, Lcom/etao/kaka/decode/KakaDecode;->isInDecoding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 68
    const/4 v4, 0x0

    .line 121
    :goto_0
    monitor-exit v10

    return-object v4

    .line 70
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    sput-boolean v5, Lcom/etao/kaka/decode/KakaDecode;->isInDecoding:Z

    .line 71
    if-nez p0, :cond_1

    .line 72
    const-string v5, "KakaDecode"

    const-string v11, "codeDecode data == null"

    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    const/4 v4, 0x0

    goto :goto_0

    .line 81
    :cond_1
    const/4 v4, 0x0

    .line 83
    .local v4, "result":Lcom/etao/kaka/decode/DecodeResult;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    .line 85
    .local v6, "time":J
    :try_start_3
    const-string v5, "KakaDecode"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "codeDecode data\uff1a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v5, "KakaDecode"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "codeDecode width\uff1a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v5, "KakaDecode"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "codeDecode height\uff1a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v5, "KakaDecode"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "codeDecode strides\uff1a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v5, "KakaDecode"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "codeDecode rect\uff1a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v5, "KakaDecode"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "codeDecode scanMode\uff1a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static/range {p0 .. p5}, Lcom/etao/kaka/decode/KakaDecode;->yuvcodeDecode([BIIILandroid/graphics/Rect;I)Lcom/etao/kaka/decode/DecodeResult;

    move-result-object v4

    .line 92
    const-string v5, "KakaDecode"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "yuvcodeDecode raw \u7ed3\u679c\uff1a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :goto_1
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 99
    .local v8, "useTime":J
    const-string v5, "KakaDecode"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "yuvcodeDecode\u6761\u7801\u89e3\u6790\u7528\u65f6\uff1a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    .end local v6    # "time":J
    .end local v8    # "useTime":J
    :goto_2
    :try_start_5
    invoke-static {v4}, Lcom/etao/kaka/decode/KakaDecode;->handleDecodeResult(Lcom/etao/kaka/decode/DecodeResult;)Lcom/etao/kaka/decode/DecodeResult;

    move-result-object v4

    .line 119
    const-string v5, "KakaDecode"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "yuvcodeDecode \u7ed3\u679c\uff1a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v5, 0x0

    sput-boolean v5, Lcom/etao/kaka/decode/KakaDecode;->isInDecoding:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 67
    .end local v4    # "result":Lcom/etao/kaka/decode/DecodeResult;
    :catchall_0
    move-exception v5

    monitor-exit v10

    throw v5

    .line 93
    .restart local v4    # "result":Lcom/etao/kaka/decode/DecodeResult;
    .restart local v6    # "time":J
    :catch_0
    move-exception v3

    .line 94
    .local v3, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_6
    const-string v5, "KakaDecode"

    .line 95
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\u662f\u4e0d\u662f\u5fd8\u8bb0\u5728libs/armeabi/\u76ee\u5f55\u4e0b\u52a0\u5165libalipaydecode.so\u4e86\uff1f\n"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/UnsatisfiedLinkError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 94
    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 101
    .end local v3    # "error":Ljava/lang/UnsatisfiedLinkError;
    .end local v6    # "time":J
    :catch_1
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v5, "KakaDecode"

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized codeDecodePictureWithQr(Landroid/graphics/Bitmap;)Lcom/etao/kaka/decode/DecodeResult;
    .locals 15
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 183
    const-class v11, Lcom/etao/kaka/decode/KakaDecode;

    monitor-enter v11

    move-object v0, p0

    .line 184
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 186
    .local v5, "result":Lcom/etao/kaka/decode/DecodeResult;
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v10, v12, :cond_0

    .line 187
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x1

    invoke-virtual {v0, v10, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 188
    .local v1, "bb":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    move-object v0, v1

    .line 191
    .end local v1    # "bb":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v12

    mul-int/2addr v10, v12

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 192
    .local v2, "buf":Ljava/nio/ByteBuffer;
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 193
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 196
    .local v6, "time":J
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v14

    invoke-static {v10, v12, v13, v14}, Lcom/etao/kaka/decode/KakaDecode;->codeDecodeWithQr([BIII)Lcom/etao/kaka/decode/DecodeResult;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 204
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 205
    .local v8, "useTime":J
    const-string v10, "KakaDecode"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "codeDecodePictureWithQr\u6761\u7801\u89e3\u6790\u7528\u65f6\uff1a"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {v5}, Lcom/etao/kaka/decode/KakaDecode;->handleDecodeResult(Lcom/etao/kaka/decode/DecodeResult;)Lcom/etao/kaka/decode/DecodeResult;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 210
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "time":J
    .end local v8    # "useTime":J
    :goto_1
    monitor-exit v11

    return-object v5

    .line 197
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v6    # "time":J
    :catch_0
    move-exception v4

    .line 198
    .local v4, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_3
    const-string v10, "KakaDecode"

    .line 199
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\u662f\u4e0d\u662f\u5fd8\u8bb0\u5728libs/armeabi/\u76ee\u5f55\u4e0b\u52a0\u5165libalipaydecode.so\u4e86\uff1f\n"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/UnsatisfiedLinkError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 198
    invoke-static {v10, v12}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "error":Ljava/lang/UnsatisfiedLinkError;
    .end local v6    # "time":J
    :catch_1
    move-exception v10

    goto :goto_1

    .line 200
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v6    # "time":J
    :catch_2
    move-exception v3

    .line 201
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "KakaDecode"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "codeDecodeWithQr jni\u65b9\u6cd5"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 183
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "time":J
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method public static declared-synchronized codeDecodePictureWithQr(Ljava/lang/String;)Lcom/etao/kaka/decode/DecodeResult;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 162
    const-class v4, Lcom/etao/kaka/decode/KakaDecode;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    :cond_0
    :goto_0
    monitor-exit v4

    return-object v3

    .line 165
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "srcImageFile":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    const/16 v5, 0x400

    const/16 v6, 0x400

    invoke-static {v2, v5, v6}, Lcom/etao/kakalib/util/ImageTool;->createThumbnail(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/etao/kaka/decode/KakaDecode;->codeDecodePictureWithQr(Landroid/graphics/Bitmap;)Lcom/etao/kaka/decode/DecodeResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 171
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "srcImageFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static native codeDecodeWithQr([BIII)Lcom/etao/kaka/decode/DecodeResult;
.end method

.method private static handleDecodeResult(Lcom/etao/kaka/decode/DecodeResult;)Lcom/etao/kaka/decode/DecodeResult;
    .locals 5
    .param p0, "result"    # Lcom/etao/kaka/decode/DecodeResult;

    .prologue
    .line 126
    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    array-length v2, v2

    if-lez v2, :cond_3

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    invoke-static {v2}, Lcom/etao/kakalib/util/StringEncodeUtils;->getStringEncode([B)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "encode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    const-string/jumbo v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 134
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    .line 135
    iget-object v2, p0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const/4 p0, 0x0

    .line 145
    .end local v1    # "encode":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    const-string v2, "[TELL_ME_HUOYAN_KAKA_GOGOGO_102]"

    iget-object v3, p0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const-string v2, "KakaVersion"

    const-string/jumbo v3, "so version is =alipaydecode_1.0.1_0807"

    invoke-static {v2, v3}, Lcom/alipay/code/scansdk/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    :goto_2
    return-object p0

    .line 132
    .restart local v1    # "encode":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    invoke-direct {v2, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 138
    .end local v1    # "encode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 140
    const/4 p0, 0x0

    goto :goto_1

    .line 141
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const/4 p0, 0x0

    goto :goto_1

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 p0, 0x0

    goto :goto_2
.end method

.method public static yuvcodeDecode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;I)Lcom/etao/kaka/decode/DecodeResult;
    .locals 6
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "scanMode"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    .line 53
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, p1

    move v5, p2

    .line 52
    invoke-static/range {v0 .. v5}, Lcom/etao/kaka/decode/KakaDecode;->codeDecode([BIIILandroid/graphics/Rect;I)Lcom/etao/kaka/decode/DecodeResult;

    move-result-object v0

    return-object v0
.end method

.method private static native yuvcodeDecode([BIIILandroid/graphics/Rect;I)Lcom/etao/kaka/decode/DecodeResult;
.end method
