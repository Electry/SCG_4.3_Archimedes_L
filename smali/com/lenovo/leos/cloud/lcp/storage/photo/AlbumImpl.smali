.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;
.super Ljava/lang/Object;
.source "AlbumImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;


# static fields
.field private static final SUFFIX_JPG:Ljava/lang/String; = "jpg"


# instance fields
.field private albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

.field private cacheThumbMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;",
            ">;"
        }
    .end annotation
.end field

.field private fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

.field private progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    .line 61
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->cacheThumbMap:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    .line 65
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getInstance()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    const-string v1, "gallery"

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    .line 67
    return-void
.end method

.method private buildGetPhotosRequestJson(II)Lorg/json/JSONObject;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .prologue
    .line 207
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 209
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "albumid"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    const-string/jumbo v2, "offset"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    const-string v2, "limit"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    const-string/jumbo v2, "type"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string/jumbo v2, "scale"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexcepted JSONException occured"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private buildOutsidePhotosUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p1, "outsideUrl"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 541
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "&inner=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    const-string v1, "&offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 547
    const-string v1, "&limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 549
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildPhotoIdData(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "photoId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 456
    .local v1, "photoIdData":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 459
    return-object v1

    .line 457
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private buildQueryPhotoByAdlerRequest(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 307
    .local v1, "request":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "origin"

    const-string v3, "callback_realAdlerKey"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v2, "compressed"

    const-string v3, "callback_originAdlerKey"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    return-object v1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexcepted JSONException occured"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private buildRenameRequestJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v2, "desc"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexcepted JSONException occured"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private disposeBusinessError(Lorg/json/JSONObject;I)V
    .locals 6
    .param p1, "responseJson"    # Lorg/json/JSONObject;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 463
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 465
    .local v1, "expMsg":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "\u670d\u52a1\u7aefresult:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 467
    const-string v3, ",msg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    const-string v3, "biz"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 470
    .local v0, "biz":I
    packed-switch v0, :pswitch_data_0

    .line 478
    const-string v3, ",\u540e\u7aef\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    :goto_0
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 472
    :pswitch_0
    const-string v3, ",\u76f8\u518c\u6682\u65f6\u4e0d\u80fd\u5206\u4eab"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 475
    :pswitch_1
    const-string v3, ",\u7528\u6237\u6ca1\u6709\u8fd9\u4e2a\u76f8\u518c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findNearestPhoto(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .locals 6
    .param p1, "respJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 289
    if-nez p1, :cond_1

    move-object v2, v4

    .line 301
    :cond_0
    :goto_0
    return-object v2

    .line 292
    :cond_1
    const-string/jumbo v5, "photolist"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 293
    .local v3, "photoList":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_2

    move-object v2, v4

    .line 301
    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 295
    .local v1, "itemPhoto":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->jsonConvertPhoto(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    move-result-object v2

    .line 297
    .local v2, "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    if-nez v2, :cond_0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getContactType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photoPath"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "suffix":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    const-string v0, "jpg"

    .line 391
    :cond_1
    return-object v0
.end method

.method private getInputStreamPhotoMetaInfo(Ljava/lang/String;Ljava/io/InputStream;IILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "adlerKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;

    const-string v2, "image/jpg"

    invoke-direct {v0, p2, p1, v2}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .local v0, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;"
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;-><init>()V

    .line 575
    .local v1, "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;
    const-string v2, "callback_albumid"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 576
    const-string v2, "callback_photo"

    invoke-virtual {v1, v2, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 577
    const-string v2, "callback_width"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 578
    const-string v2, "callback_height"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    const-string v2, "callback_cacheKey"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    const-string v2, "callback_realAdlerKey"

    invoke-virtual {v1, v2, p5}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    const-string v2, "callback_originAdlerKey"

    invoke-virtual {v1, v2, p5}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 582
    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->setMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V

    .line 583
    return-object v0
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
    .line 528
    const-string v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 529
    .local v0, "data":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 530
    const/4 v3, 0x0

    .line 537
    :cond_0
    return-object v3

    .line 532
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v3, "outsidePhotoInfos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 534
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 535
    .local v2, "item":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->jsonConvertOutsidePhoto(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getPhotoName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photoFile"    # Ljava/io/File;

    .prologue
    .line 365
    move-object v0, p1

    .line 366
    .local v0, "photoName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 367
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "suffix":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    .end local v0    # "photoName":Ljava/lang/String;
    .end local v1    # "suffix":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 371
    .restart local v0    # "photoName":Ljava/lang/String;
    .restart local v1    # "suffix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 375
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    .end local v1    # "suffix":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhotos(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const/4 v1, 0x0

    .line 203
    :goto_0
    return-object v1

    .line 201
    :cond_0
    const-string/jumbo v1, "photolist"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 203
    .local v0, "list":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const-string v1, ""

    .line 402
    :goto_0
    return-object v1

    .line 398
    :cond_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 399
    .local v0, "indexof":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 400
    const-string v1, ""

    goto :goto_0

    .line 402
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private queryPhotoByAdler(Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->buildQueryPhotoByAdlerRequest(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 277
    .local v1, "requestJson":Lorg/json/JSONObject;
    const-string/jumbo v5, "v4/queryByAdler"

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v4

    .line 279
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Lorg/json/JSONObject;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "response":Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 281
    .local v2, "respJson":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->findNearestPhoto(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    .line 282
    .end local v2    # "respJson":Lorg/json/JSONObject;
    .end local v3    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 285
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private redirectOutsideUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "outsideUrl"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 510
    const-string v4, "/p/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 511
    .local v0, "indexOffset":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 512
    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "outsideKey":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "urlKey":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 515
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v4, "/photo/portal/share.shtml?key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    const-string v4, "&inner=true"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    const-string v4, "&offset="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 521
    const-string v4, "&limit="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 525
    .end local v1    # "outsideKey":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "urlKey":Ljava/lang/String;
    .end local p1    # "outsideUrl":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private switchResultThrowExcetpion(I)V
    .locals 4
    .param p1, "fileApiResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 316
    packed-switch p1, :pswitch_data_0

    .line 336
    :pswitch_0
    return-void

    .line 320
    :pswitch_1
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    const-string/jumbo v1, "\u7528\u6237\u53d6\u6d88\u64cd\u4f5c"

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 322
    :pswitch_2
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    const-string/jumbo v1, "\u7f51\u7edc\u5f02\u5e38"

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 324
    :pswitch_3
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    const-string/jumbo v1, "\u8ba4\u8bc1\u5f02\u5e38"

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 326
    :pswitch_4
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    const-string/jumbo v1, "\u6587\u4ef6\u6ca1\u6709\u627e\u5230"

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 328
    :pswitch_5
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    const-string/jumbo v1, "\u670d\u52a1\u5668\u9519\u8bef"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 330
    :pswitch_6
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    const-string/jumbo v1, "\u4e91\u7aef\u7a7a\u95f4\u4e0d\u8db3"

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 332
    :pswitch_7
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    const-string/jumbo v1, "\u64cd\u4f5c\u8d85\u65f6"

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public addPhoto(Ljava/lang/String;JLjava/io/InputStream;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "is"    # Ljava/io/InputStream;
    .param p5, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "adlerKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 553
    if-nez p4, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 557
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->canUpload(J)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v3, p6

    move v4, p7

    move-object/from16 v5, p8

    .line 558
    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getInputStreamPhotoMetaInfo(Ljava/lang/String;Ljava/io/InputStream;IILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;

    move-result-object v6

    .line 560
    .local v6, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    invoke-virtual {v0, p5, v6}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    move-result v7

    .line 561
    .local v7, "fileApiResult":I
    invoke-direct {p0, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->switchResultThrowExcetpion(I)V

    .line 563
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->addUsage(J)V

    .line 565
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v0

    const-string v1, "PHAPI_ADD_NEW_PHOTO"

    const-string v2, "LABEL_FILE_SIZE"

    long-to-int v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;Ljava/lang/String;I)V

    .line 567
    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->queryPhotoByAdler(Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    move-result-object v0

    .line 569
    .end local v6    # "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;"
    .end local v7    # "fileApiResult":I
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPhoto(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoAux;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photoPath"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p4, "aux"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoAux;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 254
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v4, "photoFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_2

    .line 256
    :cond_1
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "photoPath:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 259
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 260
    .local v2, "fileSize":J
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->canUpload(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getPhotoMetaInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;

    move-result-object v0

    .line 262
    .local v0, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;"
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    invoke-virtual {v5, p3, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    move-result v1

    .line 263
    .local v1, "fileApiResult":I
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->switchResultThrowExcetpion(I)V

    .line 265
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->addUsage(J)V

    .line 267
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v5

    const-string v6, "PHAPI_ADD_NEW_PHOTO"

    const-string v7, "LABEL_FILE_SIZE"

    long-to-int v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object v5

    check-cast v5, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->getData()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->queryPhotoByAdler(Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    move-result-object v5

    .line 271
    .end local v0    # "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;"
    .end local v1    # "fileApiResult":I
    :goto_0
    return-object v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public addPhoto(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoAux;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photoPath"    # Ljava/lang/String;
    .param p3, "aux"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoAux;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 228
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v4, "photoFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_2

    .line 230
    :cond_1
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "photoPath:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 233
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 234
    .local v2, "fileSize":J
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->canUpload(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getPhotoMetaInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;

    move-result-object v0

    .line 237
    .local v0, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;"
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-virtual {v5, v6, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    move-result v1

    .line 238
    .local v1, "fileApiResult":I
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->switchResultThrowExcetpion(I)V

    .line 240
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->addUsage(J)V

    .line 242
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v5

    const-string v6, "PHAPI_ADD_NEW_PHOTO"

    const-string v7, "LABEL_FILE_SIZE"

    long-to-int v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object v5

    check-cast v5, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->getData()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->queryPhotoByAdler(Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    move-result-object v5

    .line 246
    .end local v0    # "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;"
    .end local v1    # "fileApiResult":I
    :goto_0
    return-object v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public delete()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 128
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v5

    const-string v6, "PHAPI_DELETE_ALBUM"

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "v3/albumdel?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v2

    .line 133
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "responseData":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->successResultFromResponse(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getSize()J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->addUsage(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    const/4 v4, 0x1

    .line 139
    :cond_1
    return v4

    .line 140
    .end local v1    # "responseData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v4, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v4, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getCover(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 102
    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getThubmKey(II)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "thubmKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getAllThubmUrlMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "thubmDownUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 109
    :cond_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->cacheThumbMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    .line 110
    .local v4, "thumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    if-nez v4, :cond_1

    .line 111
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;-><init>()V

    .line 112
    .local v1, "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;-><init>()V

    .line 113
    .local v0, "imageInfo":Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getCoverName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setName(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getCoverOriginalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setDownurl(Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->setUserId(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->setImageInfo(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;)V

    .line 117
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;

    .end local v4    # "thumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    invoke-direct {v4, p1, p2, v2, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;-><init>(IILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;)V

    .line 119
    .end local v0    # "imageInfo":Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;
    .end local v1    # "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;
    .restart local v4    # "thumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    :cond_1
    return-object v4
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "outsideUrl is empty!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 493
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->redirectOutsideUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "redirectUrl":Ljava/lang/String;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-direct {v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    .line 497
    .local v4, "uriRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "response":Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 499
    .local v3, "responseJson":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->successResultFromResponse(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 500
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getOutsidePhotos(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 507
    :goto_0
    return-object v5

    .line 502
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "responseJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 504
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :catch_1
    move-exception v0

    .line 505
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 507
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "response":Ljava/lang/String;
    .restart local v3    # "responseJson":Lorg/json/JSONObject;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getOutsideUrl()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 485
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getOutsideUrl(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutsideUrl(Ljava/util/List;I)Ljava/lang/String;
    .locals 13
    .param p2, "expire"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
    .line 414
    .local p1, "photoId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getId()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "albumId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 416
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "albumid is null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 419
    :cond_0
    const-string/jumbo v2, "v4/share/albumexternal"

    .line 420
    .local v2, "outsideUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v9

    .line 422
    .local v9, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 423
    .local v4, "requestBody":Lorg/json/JSONObject;
    const-string v7, ""

    .line 425
    .local v7, "responseUrl":Ljava/lang/String;
    :try_start_0
    const-string v10, "album"

    invoke-virtual {v4, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    if-eqz p1, :cond_1

    .line 427
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->buildPhotoIdData(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    .line 428
    .local v3, "photoIdData":Lorg/json/JSONArray;
    const-string v10, "data"

    invoke-virtual {v4, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    .end local v3    # "photoIdData":Lorg/json/JSONArray;
    :cond_1
    const/4 v10, -0x1

    if-eq p2, v10, :cond_2

    .line 431
    const-string v10, "expire"

    invoke-virtual {v4, v10, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 434
    :cond_2
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "response":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 437
    .local v6, "responseJson":Lorg/json/JSONObject;
    const-string/jumbo v10, "result"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 438
    .local v8, "result":I
    if-nez v8, :cond_3

    .line 439
    const-string/jumbo v10, "url"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 441
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v10

    const-string v11, "PHAPI_SHARED_PHOTOS_AS_ALBUM"

    invoke-virtual {v10, v11}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 452
    :goto_0
    return-object v7

    .line 444
    :cond_3
    invoke-direct {p0, v6, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->disposeBusinessError(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 446
    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "responseJson":Lorg/json/JSONObject;
    .end local v8    # "result":I
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v10, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 448
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 449
    .local v1, "e":Lorg/json/JSONException;
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v10, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getCount()I

    move-result v0

    return v0
.end method

.method public getPhotoMetaInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photoPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v5, "originalFile":Ljava/io/File;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->getAdlerByFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "originalAdlerKey":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getContactType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, "suffix":Ljava/lang/String;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 344
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 345
    invoke-static {p2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 346
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v8, "width":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 347
    .local v1, "height":I
    if-ltz v8, :cond_0

    if-gez v1, :cond_1

    .line 348
    :cond_0
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    const-string v10, "Parameter is not pictures"

    invoke-direct {v9, v10}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 350
    :cond_1
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "image/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v5, v9}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    .local v0, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;"
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;-><init>()V

    .line 352
    .local v2, "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;
    const-string v9, "callback_albumid"

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v10}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    invoke-direct {p0, p1, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getPhotoName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, "photoName":Ljava/lang/String;
    const-string v9, "callback_photo"

    invoke-virtual {v2, v9, v6}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    const-string v9, "callback_width"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    const-string v9, "callback_height"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    const-string v9, "callback_cacheKey"

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    const-string v9, "callback_realAdlerKey"

    invoke-virtual {v2, v9, v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    const-string v9, "callback_originAdlerKey"

    invoke-virtual {v2, v9, v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->setMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V

    .line 361
    return-object v0
.end method

.method public getPhotos(II)Ljava/util/List;
    .locals 7
    .param p1, "offset"    # I
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
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
    .line 181
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 184
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->buildGetPhotosRequestJson(II)Lorg/json/JSONObject;

    move-result-object v1

    .line 185
    .local v1, "requestJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "v4/photoquery"

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v3

    .line 187
    .local v3, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Lorg/json/JSONObject;)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "responseData":Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->getPhotos(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 189
    .end local v2    # "responseData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v4, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v4, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 153
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v4

    const-string v5, "PHAPI_RENAME_ALBUM"

    invoke-virtual {v4, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->buildRenameRequestJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 156
    .local v1, "requestJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "v3/albumupdate"

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v3

    .line 158
    .local v3, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Lorg/json/JSONObject;)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "responseData":Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->successResultFromResponse(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    return v4

    .line 160
    .end local v2    # "responseData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v4, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v4, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setAlbumInfo(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;)V
    .locals 0
    .param p1, "albumInfo"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->albumInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;

    .line 407
    return-void
.end method

.method public setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumImpl;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 411
    return-void
.end method
