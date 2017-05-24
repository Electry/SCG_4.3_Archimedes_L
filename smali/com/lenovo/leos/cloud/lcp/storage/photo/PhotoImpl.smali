.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;
.super Ljava/lang/Object;
.source "PhotoImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;


# instance fields
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

.field private httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

.field private imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

.field private outsideUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->cacheThumbMap:Ljava/util/Map;

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->outsideUrl:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    .line 49
    return-void
.end method

.method private buildBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "id"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v1, "size"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    const-string v1, "downurl"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getDownurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-object v0
.end method

.method private buildRotateRequest(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "requestJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "requestJson":Lorg/json/JSONObject;
    .local v2, "requestJson":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "photoid"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v3, "width"

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    const-string v3, "height"

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v3, "orient"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    return-object v2

    .line 125
    .end local v2    # "requestJson":Lorg/json/JSONObject;
    .restart local v1    # "requestJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lorg/json/JSONException;
    :goto_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexcepted JSONException occured"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 125
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "requestJson":Lorg/json/JSONObject;
    .restart local v2    # "requestJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "requestJson":Lorg/json/JSONObject;
    .restart local v1    # "requestJson":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method private getOutsideUrlJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 178
    :cond_0
    const-string v5, "\\?"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object p1, v5, v6

    .line 179
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "splitDownUrl":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-gt v5, v7, :cond_2

    .line 181
    :cond_1
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloadUrl is error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    :cond_2
    const/4 v5, 0x5

    aget-object v0, v4, v5

    .line 184
    .local v0, "bucketName":Ljava/lang/String;
    aget-object v2, v4, v7

    .line 186
    .local v2, "objectKey":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 187
    .local v3, "restJson":Lorg/json/JSONObject;
    const-string v5, "bucketName"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string/jumbo v5, "objectKey"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-object v3

    .line 190
    .end local v3    # "restJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unexcepted JSONException occured"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public delete()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "photoId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 137
    :cond_0
    const-string/jumbo v6, "v4/photodel"

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v5

    .line 138
    .local v5, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "photoid"

    invoke-direct {v6, v7, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-virtual {v6, v5, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "responseData":Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->successResultFromResponse(Lorg/json/JSONObject;)Z

    move-result v0

    .line 143
    .local v0, "delSucc":Z
    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getSize()I

    move-result v7

    neg-int v7, v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->addUsage(J)V

    .line 146
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v6

    const-string v7, "PHAPI_DELETE_PHOTO"

    invoke-virtual {v6, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :cond_1
    return v0

    .line 150
    .end local v0    # "delSucc":Z
    .end local v4    # "responseData":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v6, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 153
    .local v1, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v6, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getDownurl()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "downUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 81
    :cond_0
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getImgURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v1

    .line 82
    .local v1, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B

    move-result-object v2

    return-object v2
.end method

.method public getData(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)[B
    .locals 10
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 226
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 228
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->buildBundle()Landroid/os/Bundle;

    move-result-object v4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getDownurl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->getSize()J

    move-result-wide v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->readInputStream(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/io/OutputStream;Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 230
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v0

    const-string v1, "PHAPI_DOWNLOAD_PHOTO"

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 233
    new-array v1, v9, [Ljava/io/Closeable;

    .line 234
    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 232
    return-object v0

    .line 233
    :catchall_0
    move-exception v0

    new-array v1, v9, [Ljava/io/Closeable;

    .line 234
    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 235
    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutsideUrl()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->outsideUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 201
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->outsideUrl:Ljava/lang/String;

    .line 215
    :goto_0
    return-object v5

    .line 203
    :cond_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getDownurl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->getOutsideUrlJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 204
    .local v1, "requestJson":Lorg/json/JSONObject;
    const-string/jumbo v5, "v4/origintolink"

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v4

    .line 206
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Lorg/json/JSONObject;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "responseData":Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 208
    .local v2, "respJson":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->successResultFromResponse(Lorg/json/JSONObject;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 209
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    const-string/jumbo v6, "server result fail"

    invoke-direct {v5, v6}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    .end local v2    # "respJson":Lorg/json/JSONObject;
    .end local v3    # "responseData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 211
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "respJson":Lorg/json/JSONObject;
    .restart local v3    # "responseData":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "link"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "?display_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->outsideUrl:Ljava/lang/String;

    .line 213
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v5

    const-string v6, "PHAPI_SHARE_A_PHOTO"

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->outsideUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 218
    .end local v2    # "respJson":Lorg/json/JSONObject;
    .end local v3    # "responseData":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getSize()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 86
    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getThubmKey(II)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "thubmKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getAllThubmUrlMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getThubmKey(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    .local v0, "thubmDownUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->cacheThumbMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    .line 93
    .local v2, "thumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    if-nez v2, :cond_1

    .line 94
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;

    .end local v2    # "thumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    invoke-direct {v2, p1, p2, v0, p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;-><init>(IILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;)V

    .line 96
    .restart local v2    # "thumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    :cond_1
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;

    invoke-direct {v3, p1, p2, v0, p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/ThumbImpl;-><init>(IILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;)V

    return-object v3
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getDownurl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getWidth()I

    move-result v0

    return v0
.end method

.method public rotate(III)Z
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 104
    :cond_0
    const-string/jumbo v5, "v3/rotate"

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getPhotoURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v4

    .line 105
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-direct {p0, p3, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->buildRotateRequest(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 107
    .local v2, "requestJson":Lorg/json/JSONObject;
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUTF8Bytes(Lorg/json/JSONObject;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "responseData":Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getJsonFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->successResultFromResponse(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    return v5

    .line 109
    .end local v3    # "responseData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public save(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 10
    .param p1, "outputFile"    # Ljava/io/File;
    .param p2, "progressListener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 251
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->checkFileExists(Ljava/io/File;)V

    .line 252
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 254
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->buildBundle()Landroid/os/Bundle;

    move-result-object v4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->getDownurl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->getSize()J

    move-result-wide v6

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->readInputStream(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/io/OutputStream;Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 255
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v0

    const-string v1, "PHAPI_SAVE_PHOTO"

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->event(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    new-array v0, v9, [Ljava/io/Closeable;

    .line 257
    aput-object v3, v0, v8

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 259
    return-void

    .line 256
    :catchall_0
    move-exception v0

    new-array v1, v9, [Ljava/io/Closeable;

    .line 257
    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 258
    throw v0
.end method

.method public setImageInfo(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;)V
    .locals 0
    .param p1, "imageInfo"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhotoImpl [imageInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoImpl;->imageInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
