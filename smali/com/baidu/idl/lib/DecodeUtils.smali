.class public Lcom/baidu/idl/lib/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# static fields
.field public static final TRANS_AUTO:Ljava/lang/String; = "AUTO"

.field public static final TRANS_CHN:Ljava/lang/String; = "CHN"

.field public static final TRANS_ENG:Ljava/lang/String; = "ENG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bookInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xc8

    .line 256
    const-string v2, "idl_book"

    invoke-static {v2}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 257
    invoke-static {p0}, Lcom/baidu/idl/lib/utils/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 259
    invoke-static {}, Lcom/baidu/idl/lib/utils/IDLInitializer;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IDLInitializer is not init"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_0
    if-nez p0, :cond_2

    .line 264
    const-string v2, "IDLSDK"

    const-string v3, "mContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    if-nez p1, :cond_3

    .line 269
    const-string v2, "IDLSDK"

    const-string v3, "mBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_3
    invoke-static {p0}, Lcom/baidu/idl/lib/utils/PhoneBasicUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 274
    new-instance v0, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;

    invoke-direct {v0, v4, v4}, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;-><init>([BLjava/lang/Object;)V

    .line 275
    .local v0, "mIDLBookResponse":Lcom/baidu/idl/lib/network/entity/IDLBookResponse;
    if-eqz p2, :cond_1

    .line 276
    invoke-interface {p2, v0}, Lcom/baidu/idl/lib/OnDecodeListener;->onDecodeResponse(Lcom/baidu/idl/lib/DecodeResponse;)V

    goto :goto_0

    .line 281
    .end local v0    # "mIDLBookResponse":Lcom/baidu/idl/lib/network/entity/IDLBookResponse;
    :cond_4
    invoke-static {p1, v3, v3}, Lcom/baidu/idl/lib/DecodeUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 283
    .local v1, "mTempBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;

    invoke-direct {v2, p0, v1}, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    new-instance v3, Lcom/baidu/idl/lib/DecodeUtils$3;

    invoke-direct {v3, p2}, Lcom/baidu/idl/lib/DecodeUtils$3;-><init>(Lcom/baidu/idl/lib/OnDecodeListener;)V

    invoke-virtual {v2, v3}, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->execute(Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;)V

    goto :goto_0
.end method

.method public static bookInterface(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mData"    # [B
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I
    .param p4, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 238
    const-string v1, "idl_book_byte"

    invoke-static {v1}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 240
    invoke-static {p1, p2, p3}, Lcom/baidu/idl/lib/DecodeUtils;->changeyuv2Bitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0, v0, p4}, Lcom/baidu/idl/lib/DecodeUtils;->bookInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/baidu/idl/lib/OnDecodeListener;)V

    .line 244
    :cond_0
    return-void
.end method

.method public static cdInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xc8

    .line 326
    const-string v2, "idl_cd"

    invoke-static {v2}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 328
    invoke-static {p0}, Lcom/baidu/idl/lib/utils/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 330
    invoke-static {}, Lcom/baidu/idl/lib/utils/IDLInitializer;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IDLInitializer is not init"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    :cond_0
    if-nez p0, :cond_2

    .line 335
    const-string v2, "IDLSDK"

    const-string v3, "mContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    if-nez p1, :cond_3

    .line 340
    const-string v2, "IDLSDK"

    const-string v3, "mBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_3
    invoke-static {p0}, Lcom/baidu/idl/lib/utils/PhoneBasicUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 345
    new-instance v0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;

    invoke-direct {v0, v4, v4}, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;-><init>([BLjava/lang/Object;)V

    .line 346
    .local v0, "mIDLCDResponse":Lcom/baidu/idl/lib/network/entity/IDLCDResponse;
    if-eqz p2, :cond_1

    .line 347
    invoke-interface {p2, v0}, Lcom/baidu/idl/lib/OnDecodeListener;->onDecodeResponse(Lcom/baidu/idl/lib/DecodeResponse;)V

    goto :goto_0

    .line 352
    .end local v0    # "mIDLCDResponse":Lcom/baidu/idl/lib/network/entity/IDLCDResponse;
    :cond_4
    invoke-static {p1, v3, v3}, Lcom/baidu/idl/lib/DecodeUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 354
    .local v1, "mTempBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/baidu/idl/lib/network/entity/IDLCDRequest;

    invoke-direct {v2, p0, v1}, Lcom/baidu/idl/lib/network/entity/IDLCDRequest;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    new-instance v3, Lcom/baidu/idl/lib/DecodeUtils$4;

    invoke-direct {v3, p2}, Lcom/baidu/idl/lib/DecodeUtils$4;-><init>(Lcom/baidu/idl/lib/OnDecodeListener;)V

    invoke-virtual {v2, v3}, Lcom/baidu/idl/lib/network/entity/IDLCDRequest;->execute(Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;)V

    goto :goto_0
.end method

.method public static cdInterface(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mData"    # [B
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I
    .param p4, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 308
    const-string v1, "idl_cd_byte"

    invoke-static {v1}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 310
    invoke-static {p1, p2, p3}, Lcom/baidu/idl/lib/DecodeUtils;->changeyuv2Bitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 312
    invoke-static {p0, v0, p4}, Lcom/baidu/idl/lib/DecodeUtils;->cdInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/baidu/idl/lib/OnDecodeListener;)V

    .line 314
    :cond_0
    return-void
.end method

.method private static changeyuv2Bitmap([BII)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "mData"    # [B
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 380
    const/4 v2, 0x0

    .line 382
    .local v2, "result":Landroid/graphics/Bitmap;
    if-nez p0, :cond_0

    .line 383
    const-string v8, "IDLSDK"

    const-string v9, "mData is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 408
    .end local v2    # "result":Landroid/graphics/Bitmap;
    .local v3, "result":Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 387
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .restart local v2    # "result":Landroid/graphics/Bitmap;
    :cond_0
    if-nez p1, :cond_1

    .line 388
    const-string v8, "IDLSDK"

    const-string/jumbo v9, "previewWidth size error"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 389
    .end local v2    # "result":Landroid/graphics/Bitmap;
    .restart local v3    # "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 392
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .restart local v2    # "result":Landroid/graphics/Bitmap;
    :cond_1
    if-nez p2, :cond_2

    .line 393
    const-string v8, "IDLSDK"

    const-string/jumbo v9, "previewHeight size error"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 394
    .end local v2    # "result":Landroid/graphics/Bitmap;
    .restart local v3    # "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 397
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .restart local v2    # "result":Landroid/graphics/Bitmap;
    :cond_2
    array-length v8, p0

    new-array v4, v8, [B

    .line 398
    .local v4, "rotatedData":[B
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    if-lt v7, p2, :cond_3

    .line 402
    move v5, p1

    .line 403
    .local v5, "tmp":I
    move v1, p2

    .line 404
    .local v1, "newWidth":I
    move v0, v5

    .line 406
    .local v0, "newHeight":I
    invoke-static {v4, v1, v0}, Lcom/baidu/idl/lib/DecodeUtils;->renderCroppedGreyscaleBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    .line 408
    .end local v2    # "result":Landroid/graphics/Bitmap;
    .restart local v3    # "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 399
    .end local v0    # "newHeight":I
    .end local v1    # "newWidth":I
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .end local v5    # "tmp":I
    .restart local v2    # "result":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    if-lt v6, p1, :cond_4

    .line 398
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 400
    :cond_4
    mul-int v8, v6, p2

    add-int/2addr v8, p2

    sub-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    mul-int v9, v7, p1

    add-int/2addr v9, v6

    aget-byte v9, p0, v9

    aput-byte v9, v4, v8

    .line 399
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private static ocrInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "mMaskBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xc8

    .line 67
    const-string v3, "idl_ocr"

    invoke-static {v3}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lcom/baidu/idl/lib/utils/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 70
    invoke-static {}, Lcom/baidu/idl/lib/utils/IDLInitializer;->isInit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IDLInitializer is not init"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_0
    if-nez p0, :cond_2

    .line 75
    const-string v3, "IDLSDK"

    const-string v4, "mContext is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    if-nez p1, :cond_3

    .line 80
    const-string v3, "IDLSDK"

    const-string v4, "mBitmap is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_3
    invoke-static {p0}, Lcom/baidu/idl/lib/utils/PhoneBasicUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 85
    new-instance v0, Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;

    invoke-direct {v0, v5, v5}, Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;-><init>([BLjava/lang/Object;)V

    .line 86
    .local v0, "mIDLOCRResponse":Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;
    if-eqz p3, :cond_1

    .line 87
    invoke-interface {p3, v0}, Lcom/baidu/idl/lib/OnDecodeListener;->onDecodeResponse(Lcom/baidu/idl/lib/DecodeResponse;)V

    goto :goto_0

    .line 92
    .end local v0    # "mIDLOCRResponse":Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;
    :cond_4
    invoke-static {p1, v4, v4}, Lcom/baidu/idl/lib/DecodeUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 94
    .local v1, "mTempBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 95
    .local v2, "mTempMaskBitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_5

    .line 96
    invoke-static {p2, v4, v4}, Lcom/baidu/idl/lib/DecodeUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 99
    :cond_5
    new-instance v3, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;

    invoke-direct {v3, p0, v1, v2}, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    new-instance v4, Lcom/baidu/idl/lib/DecodeUtils$1;

    invoke-direct {v4, p3}, Lcom/baidu/idl/lib/DecodeUtils$1;-><init>(Lcom/baidu/idl/lib/OnDecodeListener;)V

    invoke-virtual {v3, v4}, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->execute(Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;)V

    goto :goto_0
.end method

.method public static ocrInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/baidu/idl/lib/DecodeUtils;->ocrInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/baidu/idl/lib/OnDecodeListener;)V

    .line 57
    return-void
.end method

.method public static ocrInterface(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mData"    # [B
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I
    .param p4, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 41
    const-string v1, "idl_ocr_byte"

    invoke-static {v1}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 43
    invoke-static {p1, p2, p3}, Lcom/baidu/idl/lib/DecodeUtils;->changeyuv2Bitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 45
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p4}, Lcom/baidu/idl/lib/DecodeUtils;->ocrInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/baidu/idl/lib/OnDecodeListener;)V

    .line 47
    :cond_0
    return-void
.end method

.method private static ocrTransInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "mMaskBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "to"    # Ljava/lang/String;
    .param p5, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0xc8

    .line 182
    const-string v0, "idl_ocr_trans"

    invoke-static {v0}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 183
    invoke-static {p0}, Lcom/baidu/idl/lib/utils/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 185
    invoke-static {}, Lcom/baidu/idl/lib/utils/IDLInitializer;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IDLInitializer is not init"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    if-nez p0, :cond_2

    .line 190
    const-string v0, "IDLSDK"

    const-string v1, "mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    if-nez p1, :cond_3

    .line 195
    const-string v0, "IDLSDK"

    const-string v1, "mBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_3
    invoke-static {p0}, Lcom/baidu/idl/lib/utils/PhoneBasicUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 200
    new-instance v6, Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;

    invoke-direct {v6, v4, v4}, Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;-><init>([BLjava/lang/Object;)V

    .line 201
    .local v6, "mIDLOCRResponse":Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;
    if-eqz p5, :cond_1

    .line 202
    invoke-interface {p5, v6}, Lcom/baidu/idl/lib/OnDecodeListener;->onDecodeResponse(Lcom/baidu/idl/lib/DecodeResponse;)V

    goto :goto_0

    .line 207
    .end local v6    # "mIDLOCRResponse":Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;
    :cond_4
    invoke-static {p1, v1, v1}, Lcom/baidu/idl/lib/DecodeUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 208
    .local v2, "mTempBitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 209
    .local v3, "mTempMaskBitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_5

    .line 210
    invoke-static {p2, v1, v1}, Lcom/baidu/idl/lib/DecodeUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 213
    :cond_5
    new-instance v0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/idl/lib/DecodeUtils$2;

    invoke-direct {v1, p5}, Lcom/baidu/idl/lib/DecodeUtils$2;-><init>(Lcom/baidu/idl/lib/OnDecodeListener;)V

    invoke-virtual {v0, v1}, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->execute(Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;)V

    goto :goto_0
.end method

.method public static ocrTransInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    const/4 v2, 0x0

    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/baidu/idl/lib/DecodeUtils;->ocrTransInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/idl/lib/OnDecodeListener;)V

    .line 158
    return-void
.end method

.method public static ocrTransInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 169
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/baidu/idl/lib/DecodeUtils;->ocrTransInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/idl/lib/OnDecodeListener;)V

    .line 170
    return-void
.end method

.method public static ocrTransInterface(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mData"    # [B
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I
    .param p4, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    const/4 v4, 0x0

    .line 145
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/baidu/idl/lib/DecodeUtils;->ocrTransInterface(Landroid/content/Context;[BIILjava/lang/String;Ljava/lang/String;Lcom/baidu/idl/lib/OnDecodeListener;)V

    .line 146
    return-void
.end method

.method public static ocrTransInterface(Landroid/content/Context;[BIILjava/lang/String;Ljava/lang/String;Lcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mData"    # [B
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I
    .param p4, "from"    # Ljava/lang/String;
    .param p5, "to"    # Ljava/lang/String;
    .param p6, "mDecodeListener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 127
    const-string v0, "idl_ocr_trans_byte"

    invoke-static {v0}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 129
    invoke-static {p1, p2, p3}, Lcom/baidu/idl/lib/DecodeUtils;->changeyuv2Bitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 130
    .local v1, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 131
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/baidu/idl/lib/DecodeUtils;->ocrTransInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/idl/lib/OnDecodeListener;)V

    .line 133
    :cond_0
    return-void
.end method

.method private static renderCroppedGreyscaleBitmap([BII)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "yuv"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 413
    mul-int v3, p1, p2

    new-array v1, v3, [I

    .line 414
    .local v1, "pixels":[I
    const/4 v9, 0x0

    .line 416
    .local v9, "inputOffset":I
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_0
    if-lt v12, p2, :cond_0

    .line 426
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 425
    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    .line 427
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 428
    return-object v0

    .line 417
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    mul-int v10, v12, p1

    .line 418
    .local v10, "outputOffset":I
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_1
    if-lt v11, p1, :cond_1

    .line 422
    add-int/2addr v9, p1

    .line 416
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 419
    :cond_1
    add-int v3, v9, v11

    aget-byte v3, p0, v3

    and-int/lit16 v8, v3, 0xff

    .line 420
    .local v8, "grey":I
    add-int v3, v10, v11

    const/high16 v4, -0x1000000

    const v5, 0x10101

    mul-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v1, v3

    .line 418
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method private static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 435
    .local v5, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 437
    .local v0, "h":I
    int-to-float v6, v5

    int-to-float v7, p1

    div-float v4, v6, v7

    .line 438
    .local v4, "rw":F
    int-to-float v6, v0

    int-to-float v7, p2

    div-float v3, v6, v7

    .line 439
    .local v3, "rh":F
    cmpl-float v6, v4, v3

    if-lez v6, :cond_0

    move v2, v4

    .line 441
    .local v2, "r":F
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v2, v6

    if-gez v6, :cond_1

    .line 442
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 445
    :goto_1
    return-object v1

    .end local v2    # "r":F
    :cond_0
    move v2, v3

    .line 439
    goto :goto_0

    .line 445
    .restart local v2    # "r":F
    :cond_1
    invoke-static {p0, v2}, Lcom/baidu/idl/lib/file/ImageFile;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method
