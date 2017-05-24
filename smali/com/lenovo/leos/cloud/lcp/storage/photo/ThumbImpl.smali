.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;
.super Ljava/lang/Object;
.source "ThumbImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;


# instance fields
.field private downUrl:Ljava/lang/String;

.field private height:I

.field private httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

.field private outsideUrl:Ljava/lang/String;

.field private owner:Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

.field private width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "downUrl"    # Ljava/lang/String;
    .param p4, "owner"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->outsideUrl:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    .line 33
    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->height:I

    .line 34
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->width:I

    .line 35
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->downUrl:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->owner:Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    .line 37
    return-void
.end method

.method private buildOutsideReqJson()Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->owner:Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getOutsideUrl()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "link":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->owner:Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "displayName":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->downUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/HttpRequestParser;->URLRequest(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 113
    .local v4, "reqParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "scale"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    .local v5, "scale":Ljava/lang/String;
    const-string/jumbo v7, "type"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 115
    .local v6, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 116
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "not find Photo or Outside URL"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 118
    :cond_1
    const/4 v7, 0x0

    const-string v8, "?"

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 120
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 121
    .local v3, "reqJson":Lorg/json/JSONObject;
    const-string v7, "link"

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v7, "displayName"

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string/jumbo v7, "scale"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v7, "type"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-object v3

    .line 126
    .end local v3    # "reqJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unexcepted JSONException occured"

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private buildUniqueCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->adler32([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->crc32([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 43
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getData()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->downUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 55
    :cond_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->downUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->buildUniqueCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "cacheKey":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->getData(Ljava/lang/String;)[B

    move-result-object v2

    .line 58
    .local v2, "data":[B
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    .line 64
    .end local v2    # "data":[B
    :goto_0
    return-object v2

    .line 61
    .restart local v2    # "data":[B
    :cond_1
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->downUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getImgURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v3

    .line 62
    .local v3, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B

    move-result-object v0

    .line 63
    .local v0, "bitmapBytes":[B
    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->putData(Ljava/lang/String;[B)Z

    move-object v2, v0

    .line 64
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->height:I

    return v0
.end method

.method public getOutsideUrl()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->outsideUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->outsideUrl:Ljava/lang/String;

    .line 101
    :goto_0
    return-object v5

    .line 89
    :cond_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->owner:Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    if-nez v5, :cond_1

    .line 90
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "not find Photo or Outside URL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->buildOutsideReqJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 93
    .local v1, "reqJson":Lorg/json/JSONObject;
    const-string/jumbo v5, "v4/thumblinkspawn"

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v4

    .line 95
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Lorg/json/JSONObject;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "responseData":Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 97
    .local v2, "respJson":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->successResultFromResponse(Lorg/json/JSONObject;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 98
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    const-string/jumbo v6, "server result fail"

    invoke-direct {v5, v6}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    .end local v2    # "respJson":Lorg/json/JSONObject;
    .end local v3    # "responseData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "respJson":Lorg/json/JSONObject;
    .restart local v3    # "responseData":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "link"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->outsideUrl:Ljava/lang/String;

    .line 101
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->outsideUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 104
    .end local v2    # "respJson":Lorg/json/JSONObject;
    .end local v3    # "responseData":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;->width:I

    return v0
.end method
