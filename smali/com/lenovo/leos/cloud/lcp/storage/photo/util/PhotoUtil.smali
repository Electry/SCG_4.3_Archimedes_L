.class public final Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;
.super Ljava/lang/Object;
.source "PhotoUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static checkFileExists(Ljava/io/File;)V
    .locals 1
    .param p0, "outputFile"    # Ljava/io/File;

    .prologue
    .line 301
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 304
    :cond_0
    return-void
.end method

.method public static getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 142
    .local v2, "nameIndex":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 143
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 151
    :goto_0
    return-object p0

    .line 146
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "subName":Ljava/lang/String;
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "beforeName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "afterName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getImgURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 297
    :goto_0
    return-object v0

    .line 296
    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    .line 297
    .local v0, "u":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    goto :goto_0
.end method

.method public static getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "responseData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v3, -0x1

    .line 236
    .local v3, "result":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 242
    if-eqz v3, :cond_0

    .line 243
    const-string v4, "error"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "error":Ljava/lang/String;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v4, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v4, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 247
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    return-object v2
.end method

.method public static getPhotoList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p0, "list"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;>;"
    if-nez p0, :cond_1

    .line 319
    :cond_0
    return-object v2

    .line 313
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 314
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->jsonConvertPhoto(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexcepted JSONException occured"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    const/4 v2, 0x0

    .line 279
    :goto_0
    return-object v2

    .line 275
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getInstance()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 274
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getPhotoServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "photoServerUrls":[Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getInstance()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 277
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    .line 278
    const-string/jumbo v3, "photo.cloud.lps.lenovo.com"

    .line 277
    invoke-direct {v2, v1, p0, v0, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 279
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    goto :goto_0
.end method

.method public static getPhotoURIRollerNoValidation(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    const/4 v1, 0x0

    .line 289
    :goto_0
    return-object v1

    .line 287
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getInstance()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 286
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getPhotoServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "photoServerUrls":[Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    invoke-direct {v1, v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .local v1, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    goto :goto_0
.end method

.method public static getThubmKey(II)Ljava/lang/String;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUTF8Bytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "val":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 260
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getUTF8Bytes(Lorg/json/JSONObject;)[B
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getInstance()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    .line 44
    .local v0, "cfgHub":Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static jsonConvertAlbum(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .locals 8
    .param p0, "albumJson"    # Lorg/json/JSONObject;

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;-><init>()V

    .line 62
    .local v0, "albumImpl":Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;-><init>()V

    .line 64
    .local v1, "albumInfo":Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "userId":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setUserId(Ljava/lang/String;)V

    .line 66
    const-string v6, "id"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setId(Ljava/lang/String;)V

    .line 67
    const-string v6, "count"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setCount(I)V

    .line 68
    const-string v6, "height"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setHeight(I)V

    .line 69
    const-string/jumbo v6, "width"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setWidth(I)V

    .line 70
    const-string/jumbo v6, "name"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setName(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v6, "size"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setSize(J)V

    .line 74
    const-string v6, "downurl"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual {v1, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setCoverOriginalUrl(Ljava/lang/String;)V

    .line 76
    const-string v6, "displayname"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v1, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setCoverName(Ljava/lang/String;)V

    .line 78
    const-string v6, "cover"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "coverUrl144":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setCover144(Ljava/lang/String;)V

    .line 83
    :cond_1
    const-string/jumbo v6, "thumb200"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "url200":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 85
    invoke-virtual {v1, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setCover200(Ljava/lang/String;)V

    .line 88
    :cond_2
    const-string/jumbo v6, "thumb640"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "coverUrl640":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 90
    invoke-virtual {v1, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setCover640(Ljava/lang/String;)V

    .line 93
    :cond_3
    const-string/jumbo v6, "version"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->setVersion(J)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->setAlbumInfo(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;)V

    goto/16 :goto_0
.end method

.method public static jsonConvertOutsidePhoto(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    .locals 7
    .param p0, "outsidePhoto"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, -0x1

    .line 107
    if-nez p0, :cond_1

    .line 108
    const/4 v1, 0x0

    .line 137
    :cond_0
    return-object v1

    .line 110
    :cond_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;-><init>()V

    .line 111
    .local v1, "info":Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setId(Ljava/lang/String;)V

    .line 112
    const-string v4, "albumName"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setAlbumName(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v4, "photoName"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setPhotoName(Ljava/lang/String;)V

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "viewUrl"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    const-string v5, "?display_name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getPhotoName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {v1, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setOutsideUrl(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v4, "size"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setOutsideSize(J)V

    .line 121
    const-string/jumbo v4, "thumbnail"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 122
    .local v3, "thumbnail":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 127
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "thumItem":Ljava/lang/String;
    const-string v4, "144x144"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 129
    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setThubmUrl144(Ljava/lang/String;)V

    .line 126
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_3
    const-string v4, "200x200"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 131
    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setThubmUrl200(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_4
    const-string v4, "640x640"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 133
    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setThubmUrl640(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static jsonConvertPhoto(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .locals 7
    .param p0, "photoJson"    # Lorg/json/JSONObject;

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 198
    :goto_0
    return-object v1

    .line 165
    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;-><init>()V

    .line 166
    .local v1, "photoImpl":Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;-><init>()V

    .line 168
    .local v0, "imageInfo":Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "userId":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setUserId(Ljava/lang/String;)V

    .line 171
    const-string v6, "id"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setId(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v6, "name"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setName(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v6, "size"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setSize(I)V

    .line 174
    const-string/jumbo v6, "width"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setWidth(I)V

    .line 175
    const-string v6, "height"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setHeight(I)V

    .line 176
    const-string v6, "downurl"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setDownurl(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v6, "origin"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-virtual {v0, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setOrigin(Ljava/lang/String;)V

    .line 180
    const-string v6, "compressed"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 179
    invoke-virtual {v0, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setCompressed(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v6, "url"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "url640":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 184
    invoke-virtual {v0, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setThubmUrl640(Ljava/lang/String;)V

    .line 187
    :cond_1
    const-string/jumbo v6, "thumbnail"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "url144":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 189
    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setThubmUrl144(Ljava/lang/String;)V

    .line 192
    :cond_2
    const-string/jumbo v6, "thumb200"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "url200":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 194
    invoke-virtual {v0, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setThubmUrl200(Ljava/lang/String;)V

    .line 197
    :cond_3
    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->setImageInfo(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;)V

    goto/16 :goto_0
.end method

.method public static successResultFromResponse(Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 219
    const-string/jumbo v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
