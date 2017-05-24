.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;
.super Ljava/lang/Object;
.source "PhotoStorageImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;
    }
.end annotation


# instance fields
.field private httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->userId:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    .line 43
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v0

    const-string v1, "PHAPI_GET_PHOTO_STORAGE"

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private buildBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 473
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 474
    .local v0, "bundle":Landroid/os/Bundle;
    return-object v0
.end method

.method private doHttpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v0

    .line 312
    .local v0, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doHttpPost(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v0

    .line 317
    .local v0, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "photoOutsideUrl"    # Ljava/lang/String;

    .prologue
    .line 528
    const-string v1, "display_name"

    .line 529
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 530
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 531
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInfoSizeByPhoto(Ljava/lang/String;)J
    .locals 2
    .param p1, "photoOutsideUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->readContentLength(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOutsidePhotos(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .param p1, "responseJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    const-string v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 370
    .local v0, "data":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 371
    const/4 v3, 0x0

    .line 379
    :cond_0
    return-object v3

    .line 373
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v3, "outsidePhotoInfos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 375
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 376
    .local v2, "item":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->jsonConvertOutsidePhoto(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRequestBody(Ljava/util/List;I)Lorg/json/JSONObject;
    .locals 8
    .param p2, "expire"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;I)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "outsideList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 437
    .local v4, "requestBody":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 438
    .local v5, "requestData":Lorg/json/JSONArray;
    const-string v0, ""

    .line 440
    .local v0, "albumname":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 447
    const-string v6, "albumname"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    const-string/jumbo v6, "share_id"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    if-lez p2, :cond_0

    .line 450
    const-string v6, "expire"

    invoke-virtual {v4, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 455
    :cond_0
    return-object v4

    .line 440
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    .line 441
    .local v3, "outsidePhotoInfo":Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 442
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_2
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "outsidePhotoInfo":Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Lorg/json/JSONException;
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v6, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private getThumb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 539
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "/thumb?type=area&scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    const-string v1, "&display_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isPhotoOnCloud(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "compressed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 268
    :cond_0
    const/4 v10, 0x0

    .line 307
    :cond_1
    return v10

    .line 270
    :cond_2
    const/4 v10, 0x0

    .line 273
    .local v10, "ret":Z
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 274
    .local v7, "requestJson":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 276
    .local v4, "item":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v15, "origin"

    move-object/from16 v0, p1

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v15, "compressed"

    move-object/from16 v0, p2

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "jsonStr":Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 286
    .local v6, "postBody":[B
    const-string/jumbo v15, "v4/backupcheck"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->doHttpPost(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v8

    .line 287
    .local v8, "responseData":Ljava/lang/String;
    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 288
    .local v9, "responseJson":Lorg/json/JSONObject;
    const-string v15, "data"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 289
    .local v1, "data":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 291
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v3, v15, :cond_1

    .line 293
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 294
    .local v13, "theJson":Lorg/json/JSONObject;
    const-string/jumbo v15, "origin"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 295
    .local v12, "retOrigin":Ljava/lang/String;
    const-string v15, "compressed"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 297
    .local v11, "retCompress":Ljava/lang/String;
    const-string/jumbo v15, "value"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 298
    .local v14, "value":I
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    if-eqz v15, :cond_3

    .line 299
    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    const/4 v10, 0x1

    .line 291
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "data":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v5    # "jsonStr":Ljava/lang/String;
    .end local v6    # "postBody":[B
    .end local v8    # "responseData":Ljava/lang/String;
    .end local v9    # "responseJson":Lorg/json/JSONObject;
    .end local v11    # "retCompress":Ljava/lang/String;
    .end local v12    # "retOrigin":Ljava/lang/String;
    .end local v13    # "theJson":Lorg/json/JSONObject;
    .end local v14    # "value":I
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Lorg/json/JSONException;
    new-instance v15, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v15, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v15

    .line 299
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "data":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v5    # "jsonStr":Ljava/lang/String;
    .restart local v6    # "postBody":[B
    .restart local v8    # "responseData":Ljava/lang/String;
    .restart local v9    # "responseJson":Lorg/json/JSONObject;
    .restart local v11    # "retCompress":Ljava/lang/String;
    .restart local v12    # "retOrigin":Ljava/lang/String;
    .restart local v13    # "theJson":Lorg/json/JSONObject;
    .restart local v14    # "value":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 302
    .end local v11    # "retCompress":Ljava/lang/String;
    .end local v12    # "retOrigin":Ljava/lang/String;
    .end local v13    # "theJson":Lorg/json/JSONObject;
    .end local v14    # "value":I
    :catch_1
    move-exception v2

    .line 304
    .restart local v2    # "e":Lorg/json/JSONException;
    new-instance v15, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v15, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v15
.end method

.method private redirectOutsideUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "outsideUrl"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 350
    const-string v4, "/p/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, "indexOffset":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 352
    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "outsideKey":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "urlKey":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    const-string v4, "/photo/portal/share.shtml?key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    const-string v4, "&inner=true"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const-string v4, "&offset="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 361
    const-string v4, "&limit="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 363
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 365
    .end local v1    # "outsideKey":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "urlKey":Ljava/lang/String;
    .end local p1    # "outsideUrl":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public __GetStoreInfo()Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;-><init>()V

    .line 67
    .local v2, "storeInfo":Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;
    const-string/jumbo v3, "v2/queryspace"

    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->doHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "responseData":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "used"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->usage:J

    .line 70
    const-string/jumbo v3, "max"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->limitation:J

    .line 72
    return-object v2
.end method

.method public addAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumAux;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "aux"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumAux;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 154
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 157
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .local v4, "requsetJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v7, "title"

    invoke-virtual {v4, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string/jumbo v7, "summary"

    invoke-virtual {v4, v7, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Lorg/json/JSONObject;)[B

    move-result-object v3

    .line 167
    .local v3, "postBody":[B
    const-string/jumbo v7, "v3/albumadd"

    invoke-direct {p0, v7, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->doHttpPost(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "responseData":Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 170
    .local v6, "responseJson":Lorg/json/JSONObject;
    const-string v7, "albumid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "newAlbumId":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v7

    const-string v8, "PHAPI_ADD_ALBUM"

    invoke-virtual {v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "newAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->albumById(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-result-object v1

    .line 178
    :cond_1
    return-object v1

    .line 161
    .end local v1    # "newAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .end local v2    # "newAlbumId":Ljava/lang/String;
    .end local v3    # "postBody":[B
    .end local v5    # "responseData":Ljava/lang/String;
    .end local v6    # "responseJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unexcepted JSONException occured"

    invoke-direct {v7, v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public albumById(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .locals 4
    .param p1, "albumId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->queryAllAlbums()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "allAlbums":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 100
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 100
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    .line 101
    .local v0, "album":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public allAlbums()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v1

    const-string v2, "PHAPI_QUARY_ALL_ALBUM"

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->queryAllAlbums()Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "allAlbums":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;>;"
    return-object v0
.end method

.method public getAlbumCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->queryCountAllFromCloud()Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;

    move-result-object v0

    .line 84
    .local v0, "cloudCount":Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;
    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;->albumCount:I

    return v1
.end method

.method public getAlbumOutsideByList(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "outsideList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->getAlbumOutsideByList(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumOutsideByList(Ljava/util/List;I)Ljava/lang/String;
    .locals 7
    .param p2, "expire"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "outsideList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 416
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "outsideList is empty!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 420
    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v5

    const-string v6, "PHAPI_SHARED_PHOTOS_AS_ALBUM"

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->getRequestBody(Ljava/util/List;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 423
    .local v2, "requestBody":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Lorg/json/JSONObject;)[B

    move-result-object v1

    .line 425
    .local v1, "postBody":[B
    :try_start_0
    const-string v5, "/v4/share/shareexternal"

    invoke-direct {p0, v5, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->doHttpPost(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "responseData":Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 427
    .local v4, "responseJson":Lorg/json/JSONObject;
    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    .line 428
    .end local v3    # "responseData":Ljava/lang/String;
    .end local v4    # "responseJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 430
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :catch_1
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getData(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)[B
    .locals 10
    .param p1, "downurl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 460
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v0

    const-string v1, "PHAPI_DOWNLOAD_PHOTO_FROM_URL"

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 462
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 464
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->buildBundle()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v6, -0x1

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->readInputStream(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/io/OutputStream;Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 465
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 466
    new-array v1, v9, [Ljava/io/Closeable;

    .line 467
    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 465
    return-object v0

    .line 466
    :catchall_0
    move-exception v0

    new-array v1, v9, [Ljava/io/Closeable;

    .line 467
    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 468
    throw v0
.end method

.method public getInfoByAlbum(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "outsideUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "outsideUrl is empty!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 389
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v4

    const-string v5, "PHAPI_GET_SHARED_ALBUM_PHOTO_INFO"

    invoke-virtual {v4, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v0, "allPhotoInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;>;"
    const/16 v2, 0x64

    .line 394
    .local v2, "limitCount":I
    const/4 v3, 0x0

    .line 396
    .local v3, "offset":I
    :goto_0
    invoke-virtual {p0, p1, v3, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->getOutsidePhotoInfo(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 397
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 403
    :cond_1
    return-object v0

    .line 401
    :cond_2
    add-int/2addr v3, v2

    .line 395
    goto :goto_0
.end method

.method public getInfoByPhoto(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    .locals 10
    .param p1, "photoOutsideUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 495
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "photoOutsideUrl is empty!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 498
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v8

    const-string v9, "PHAPI_GET_PHOTO_FROM_SHARED_LINK"

    invoke-virtual {v8, v9}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 500
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;-><init>()V

    .line 501
    .local v2, "outsidePhotoInfo":Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "144x144"

    invoke-direct {p0, v9}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->getThumb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "thumb144":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setThubmUrl144(Ljava/lang/String;)V

    .line 504
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "200x200"

    invoke-direct {p0, v9}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->getThumb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, "thumb200":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setThubmUrl200(Ljava/lang/String;)V

    .line 507
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "640x640"

    invoke-direct {p0, v9}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->getThumb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 508
    .local v7, "thumb640":Ljava/lang/String;
    invoke-virtual {v2, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setThubmUrl640(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v2, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setOutsideUrl(Ljava/lang/String;)V

    .line 512
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setPhotoName(Ljava/lang/String;)V

    .line 515
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->getInfoSizeByPhoto(Ljava/lang/String;)J

    move-result-wide v4

    .line 516
    .local v4, "outsideSize":J
    invoke-virtual {v2, v4, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setOutsideSize(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    return-object v2

    .line 517
    .end local v4    # "outsideSize":J
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v8, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public getOutsidePhotoInfo(Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .param p1, "outsideUrl"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "outsideUrl is empty!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 333
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->redirectOutsideUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "redirectUrl":Ljava/lang/String;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-direct {v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    .line 336
    .local v4, "uriRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "response":Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 338
    .local v3, "responseJson":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->successResultFromResponse(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->getOutsidePhotos(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 346
    :goto_0
    return-object v5

    .line 341
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "responseJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 343
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :catch_1
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "response":Ljava/lang/String;
    .restart local v3    # "responseJson":Lorg/json/JSONObject;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getPhotoByIds(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 567
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v7, "v4/photoQueryById"

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v6

    .line 569
    .local v6, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 570
    .local v3, "requestJson":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 571
    .local v2, "photoIdArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 576
    const-string/jumbo v7, "photoid"

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Lorg/json/JSONObject;)[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, "response":Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 583
    .local v4, "respJson":Lorg/json/JSONObject;
    if-nez v4, :cond_2

    .line 584
    const/4 v7, 0x0

    .line 587
    :goto_1
    return-object v7

    .line 571
    .end local v4    # "respJson":Lorg/json/JSONObject;
    .end local v5    # "response":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 572
    .local v1, "oneid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 573
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    .end local v1    # "oneid":Ljava/lang/String;
    .end local v2    # "photoIdArray":Lorg/json/JSONArray;
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    .end local v6    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v7, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 587
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "photoIdArray":Lorg/json/JSONArray;
    .restart local v3    # "requestJson":Lorg/json/JSONObject;
    .restart local v4    # "respJson":Lorg/json/JSONObject;
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v6    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :cond_2
    :try_start_1
    const-string/jumbo v7, "photolist"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoList(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_1
.end method

.method public getPhotoCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->queryCountAllFromCloud()Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;

    move-result-object v0

    .line 78
    .local v0, "cloudCount":Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;
    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;->photoCount:I

    return v1
.end method

.method public getStoreInfo()Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->__GetStoreInfo()Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    move-result-object v0

    .line 55
    .local v0, "storeInfo":Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->refreshCache(Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;)V

    .line 57
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isPhotoOnCloud(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->getAdlerByFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "originalAdlerKey":Ljava/lang/String;
    invoke-direct {p0, v0, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->isPhotoOnCloud(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isPhotoOnCloud([B)Z
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->getAdlerByFile([B)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "originalAdlerKey":Ljava/lang/String;
    invoke-direct {p0, v0, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->isPhotoOnCloud(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public movePhoto(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2, "fromAlbum"    # Ljava/lang/String;
    .param p3, "toAlbum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "photoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 189
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 190
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "photoIds has no data"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 194
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v2, "json":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_3

    .line 202
    :try_start_0
    const-string/jumbo v6, "photoId"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v6, "albumFrom"

    invoke-virtual {v2, v6, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v6, "albumTo"

    invoke-virtual {v2, v6, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Lorg/json/JSONObject;)[B

    move-result-object v3

    .line 210
    .local v3, "postBody":[B
    const-string/jumbo v6, "v3/photomove"

    invoke-direct {p0, v6, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->doHttpPost(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "responseData":Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 214
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v6

    const-string v7, "PHAPI_MOVE_PHOTO"

    invoke-virtual {v6, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 215
    return-void

    .line 198
    .end local v3    # "postBody":[B
    .end local v4    # "responseData":Ljava/lang/String;
    :cond_3
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unexcepted JSONException occured"

    invoke-direct {v6, v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public queryAlbumById(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "albumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "albumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;>;"
    const-string/jumbo v9, "v4/albumQueryById"

    invoke-direct {p0, v9}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->doHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "responseData":Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 127
    .local v4, "json":Lorg/json/JSONObject;
    const-string v9, "albumlist"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 128
    .local v5, "jsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 129
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 130
    .local v1, "count":I
    const/4 v8, 0x0

    .line 131
    .local v8, "tmpAlbumJson":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 132
    .local v7, "tmpAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_1

    .line 148
    .end local v0    # "albumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "responseData":Ljava/lang/String;
    .end local v7    # "tmpAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .end local v8    # "tmpAlbumJson":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-object v0

    .line 134
    .restart local v0    # "albumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;>;"
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "responseData":Ljava/lang/String;
    .restart local v7    # "tmpAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .restart local v8    # "tmpAlbumJson":Lorg/json/JSONObject;
    :cond_1
    :try_start_0
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 140
    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->jsonConvertAlbum(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-result-object v7

    .line 141
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Lorg/json/JSONException;
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v9, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 148
    .end local v0    # "albumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;>;"
    .end local v1    # "count":I
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "responseData":Ljava/lang/String;
    .end local v7    # "tmpAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .end local v8    # "tmpAlbumJson":Lorg/json/JSONObject;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public queryAllAlbums()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, "albumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;>;"
    const-string/jumbo v9, "v3/albumquery"

    invoke-direct {p0, v9}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->doHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "responseData":Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 235
    .local v4, "json":Lorg/json/JSONObject;
    const-string v9, "albumlist"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 236
    .local v5, "jsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 237
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 238
    .local v1, "count":I
    const/4 v8, 0x0

    .line 239
    .local v8, "tmpAlbumJson":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 240
    .local v7, "tmpAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_1

    .line 253
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v7    # "tmpAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .end local v8    # "tmpAlbumJson":Lorg/json/JSONObject;
    :cond_0
    return-object v0

    .line 242
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v7    # "tmpAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .restart local v8    # "tmpAlbumJson":Lorg/json/JSONObject;
    :cond_1
    :try_start_0
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 248
    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->jsonConvertAlbum(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-result-object v7

    .line 249
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Lorg/json/JSONException;
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v9, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v9
.end method

.method public queryCountAllFromCloud()Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;

    invoke-direct {v2, p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;-><init>(Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;)V

    .line 258
    .local v2, "ret":Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;
    const-string/jumbo v3, "v2/countall"

    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->doHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "responseData":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 260
    .local v0, "json":Lorg/json/JSONObject;
    const-string v3, "album_count"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;->albumCount:I

    .line 261
    const-string/jumbo v3, "photo_count"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;->photoCount:I

    .line 262
    const-string v3, "last_modify"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;->lastModify:J

    .line 263
    return-object v2
.end method

.method public save(Ljava/lang/String;Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 10
    .param p1, "downurl"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "progressListener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 480
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v0

    const-string v1, "PHAPI_SAVE_PHOTO_FROM_URL"

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 482
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->checkFileExists(Ljava/io/File;)V

    .line 483
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 485
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->buildBundle()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v6, -0x1

    move-object v2, p3

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->readInputStream(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/io/OutputStream;Landroid/os/Bundle;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    new-array v0, v9, [Ljava/io/Closeable;

    .line 487
    aput-object v3, v0, v8

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 489
    return-void

    .line 486
    :catchall_0
    move-exception v0

    new-array v1, v9, [Ljava/io/Closeable;

    .line 487
    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 488
    throw v0
.end method
