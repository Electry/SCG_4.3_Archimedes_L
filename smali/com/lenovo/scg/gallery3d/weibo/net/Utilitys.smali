.class public Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;
.super Ljava/lang/Object;
.source "Utilitys.java"


# static fields
.field public static final BOUNDARY:Ljava/lang/String; = "7cd4a6d158c"

.field public static final END_MP_BOUNDARY:Ljava/lang/String; = "--7cd4a6d158c--"

.field public static final HTTPMETHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final HTTPMETHOD_GET:Ljava/lang/String; = "GET"

.field public static final HTTPMETHOD_POST:Ljava/lang/String; = "POST"

.field public static final MP_BOUNDARY:Ljava/lang/String; = "--7cd4a6d158c"

.field public static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field private static final PHOTO_NAME_DEFAULT:Ljava/lang/String; = "Weibo"

.field private static final PHOTO_PATH:Ljava/lang/String; = "/mnt/sdcard/Pictures/"

.field private static final PHOTO_TWO_PATH:Ljava/lang/String; = "SCG/"

.field private static final SET_CONNECTION_TIMEOUT:I = 0xc350

.field private static final SET_SOCKET_TIMEOUT:I = 0x30d40

.field private static final TAG:Ljava/lang/String; = "panhui4_Utilitys"

.field private static mRequestHeader:Lcom/weibo/sdk/android/WeiboParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->mRequestHeader:Lcom/weibo/sdk/android/WeiboParameters;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Encode([B)[C
    .locals 10
    .param p0, "data"    # [B

    .prologue
    const/16 v8, 0x40

    .line 595
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 597
    .local v0, "alphabet":[C
    array-length v7, p0

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x4

    new-array v3, v7, [C

    .line 598
    .local v3, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_4

    .line 599
    const/4 v4, 0x0

    .line 600
    .local v4, "quad":Z
    const/4 v5, 0x0

    .line 601
    .local v5, "trip":Z
    aget-byte v7, p0, v1

    and-int/lit16 v6, v7, 0xff

    .line 602
    .local v6, "val":I
    shl-int/lit8 v6, v6, 0x8

    .line 603
    add-int/lit8 v7, v1, 0x1

    array-length v9, p0

    if-ge v7, v9, :cond_0

    .line 604
    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 605
    const/4 v5, 0x1

    .line 607
    :cond_0
    shl-int/lit8 v6, v6, 0x8

    .line 608
    add-int/lit8 v7, v1, 0x2

    array-length v9, p0

    if-ge v7, v9, :cond_1

    .line 609
    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 610
    const/4 v4, 0x1

    .line 612
    :cond_1
    add-int/lit8 v9, v2, 0x3

    if-eqz v4, :cond_2

    and-int/lit8 v7, v6, 0x3f

    :goto_1
    aget-char v7, v0, v7

    aput-char v7, v3, v9

    .line 613
    shr-int/lit8 v6, v6, 0x6

    .line 614
    add-int/lit8 v9, v2, 0x2

    if-eqz v5, :cond_3

    and-int/lit8 v7, v6, 0x3f

    :goto_2
    aget-char v7, v0, v7

    aput-char v7, v3, v9

    .line 615
    shr-int/lit8 v6, v6, 0x6

    .line 616
    add-int/lit8 v7, v2, 0x1

    and-int/lit8 v9, v6, 0x3f

    aget-char v9, v0, v9

    aput-char v9, v3, v7

    .line 617
    shr-int/lit8 v6, v6, 0x6

    .line 618
    add-int/lit8 v7, v2, 0x0

    and-int/lit8 v9, v6, 0x3f

    aget-char v9, v0, v9

    aput-char v9, v3, v7

    .line 598
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_2
    move v7, v8

    .line 612
    goto :goto_1

    :cond_3
    move v7, v8

    .line 614
    goto :goto_2

    .line 620
    .end local v4    # "quad":Z
    .end local v5    # "trip":Z
    .end local v6    # "val":I
    :cond_4
    return-object v3
.end method

.method public static clearCookies(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 542
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    .line 544
    .local v1, "cookieSyncMngr":Landroid/webkit/CookieSyncManager;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 545
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 546
    return-void
.end method

.method public static clearRequestHeader()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->mRequestHeader:Lcom/weibo/sdk/android/WeiboParameters;

    invoke-virtual {v0}, Lcom/weibo/sdk/android/WeiboParameters;->clear()V

    .line 134
    return-void
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v5, "params":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 209
    const-string v7, "&"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 211
    .local v4, "parameter":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "v":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "parameter":Ljava/lang/String;
    .end local v6    # "v":[Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method public static encodeParameters(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    .locals 7
    .param p0, "httpParams"    # Lcom/weibo/sdk/android/WeiboParameters;

    .prologue
    .line 566
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->isBundleEmpty(Lcom/weibo/sdk/android/WeiboParameters;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 567
    :cond_0
    const-string v4, ""

    .line 585
    :goto_0
    return-object v4

    .line 569
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 571
    .local v1, "j":I
    const/4 v3, 0x0

    .local v3, "loc":I
    :goto_1
    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 572
    invoke-virtual {p0, v3}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "key":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 574
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_2
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 585
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 581
    .restart local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public static encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "parameters"    # Landroid/os/Bundle;
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    const-string v3, ""

    .line 185
    :goto_0
    return-object v3

    .line 173
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Disposition: form-data; name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\r\n\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\r\n--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 185
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    .locals 5
    .param p0, "parameters"    # Lcom/weibo/sdk/android/WeiboParameters;

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    const-string v3, ""

    .line 203
    :goto_0
    return-object v3

    .line 193
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 195
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "loc":I
    :goto_1
    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 196
    if-eqz v0, :cond_1

    .line 197
    const/4 v0, 0x0

    .line 200
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    :cond_1
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 203
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 368
    .local v1, "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    const v2, 0xc350

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 370
    const v2, 0x30d40

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 371
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 400
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    return-object v0
.end method

.method public static getPostParamters(Landroid/os/Bundle;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 248
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    :cond_0
    const/4 v1, 0x0

    .line 258
    :goto_0
    return-object v1

    .line 252
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v2, "form":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 254
    .local v4, "key":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 259
    .end local v2    # "form":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v0}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 256
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "form":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v1, v2, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    .local v1, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    goto :goto_0
.end method

.method private static imageContentToUpload(Ljava/io/OutputStream;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "imgpath"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v4, "temp":Ljava/lang/StringBuilder;
    const-string v5, "--7cd4a6d158c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v5, "Content-Disposition: form-data; name=\"pic\"; filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "news_image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v2, "image/png"

    .line 427
    .local v2, "filetype":Ljava/lang/String;
    const-string v5, "Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 429
    .local v3, "res":[B
    const/4 v0, 0x0

    .line 431
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 432
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    invoke-virtual {p1, v5, v6, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 433
    const-string v5, "\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 434
    const-string v5, "\r\n--7cd4a6d158c--"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    if-eqz v0, :cond_0

    .line 440
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    :cond_0
    return-void

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 435
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 436
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 440
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 442
    :cond_1
    throw v5

    .line 441
    :catch_2
    move-exception v1

    .line 442
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public static isBundleEmpty(Lcom/weibo/sdk/android/WeiboParameters;)Z
    .locals 1
    .param p0, "bundle"    # Lcom/weibo/sdk/android/WeiboParameters;

    .prologue
    .line 115
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiFiEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 407
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/weibo/sdk/android/WeiboParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v3, ""

    .line 283
    .local v3, "rlt":Ljava/lang/String;
    const-string v0, ""

    .line 284
    .local v0, "file":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "loc":I
    :goto_0
    invoke-virtual {p3}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 285
    invoke-virtual {p3, v2}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v4, "pic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-virtual {p3, v1}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {p3, v1}, Lcom/weibo/sdk/android/WeiboParameters;->remove(Ljava/lang/String;)V

    .line 284
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    const/4 v4, 0x0

    invoke-static {p0, p1, p2, p3, v4}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    :goto_1
    return-object v3

    .line 294
    :cond_2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/weibo/sdk/android/WeiboParameters;
    .param p4, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    const-string v11, ""

    .line 303
    .local v11, "result":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 304
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    const/4 v9, 0x0

    .line 306
    .local v9, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v14, "GET"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 307
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 310
    .local v6, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object v9, v6

    .line 342
    .end local v6    # "get":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    invoke-interface {v3, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 343
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 344
    .local v12, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 345
    .local v13, "statusCode":I
    const/16 v14, 0xc8

    if-eq v13, v14, :cond_4

    .line 346
    const-string/jumbo v14, "panhui4_Utilitys"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "statusCode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v11

    .line 348
    new-instance v14, Lcom/weibo/sdk/android/WeiboException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 311
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "status":Lorg/apache/http/StatusLine;
    .end local v13    # "statusCode":I
    :cond_1
    const-string v14, "POST"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 313
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 314
    .local v7, "post":Lorg/apache/http/client/methods/HttpPost;
    const/4 v4, 0x0

    .line 315
    .local v4, "data":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const v14, 0xc800

    invoke-direct {v2, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 316
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 317
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->paramToUpload(Ljava/io/OutputStream;Lcom/weibo/sdk/android/WeiboParameters;)V

    .line 318
    const-string v14, "Content-Type"

    const-string/jumbo v15, "multipart/form-data; boundary=7cd4a6d158c"

    invoke-virtual {v7, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v14, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v14}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 322
    .local v1, "bf":Landroid/graphics/Bitmap;
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->imageContentToUpload(Ljava/io/OutputStream;Landroid/graphics/Bitmap;)V

    .line 330
    .end local v1    # "bf":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 331
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 333
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 334
    .local v5, "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v7, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 335
    move-object v9, v7

    .line 336
    goto/16 :goto_0

    .line 325
    .end local v5    # "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    :cond_2
    const-string v14, "Content-Type"

    const-string v15, "application/x-www-form-urlencoded"

    invoke-virtual {v7, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static/range {p3 .. p3}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->encodeParameters(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "postParam":Ljava/lang/String;
    const-string v14, "UTF-8"

    invoke-virtual {v8, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 328
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 336
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "data":[B
    .end local v7    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "postParam":Ljava/lang/String;
    :cond_3
    const-string v14, "DELETE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 337
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 338
    new-instance v9, Lorg/apache/http/client/methods/HttpDelete;

    .end local v9    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v9    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 352
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "status":Lorg/apache/http/StatusLine;
    .restart local v13    # "statusCode":I
    :cond_4
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v11

    .line 353
    return-object v11
.end method

.method private static paramToUpload(Ljava/io/OutputStream;Lcom/weibo/sdk/android/WeiboParameters;)V
    .locals 7
    .param p0, "baos"    # Ljava/io/OutputStream;
    .param p1, "params"    # Lcom/weibo/sdk/android/WeiboParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 459
    const-string v1, ""

    .line 460
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "loc":I
    :goto_0
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 461
    invoke-virtual {p1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 463
    .local v4, "temp":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 464
    const-string v5, "--7cd4a6d158c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v5, "content-disposition: form-data; name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {p1, v1}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 470
    .local v3, "res":[B
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v0}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 475
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "res":[B
    .end local v4    # "temp":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 137
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-object v2

    .line 143
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 144
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 146
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "rawstring"    # Ljava/lang/String;

    .prologue
    .line 685
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 686
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    .line 688
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 689
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 690
    .local v1, "eventtype":I
    :goto_0
    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    .line 691
    packed-switch v1, :pswitch_data_0

    .line 723
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 697
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, "name":Ljava/lang/String;
    const-string v6, "a"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 704
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_1

    .line 726
    .end local v1    # "eventtype":I
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 727
    .local v2, "expp":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 734
    .end local v2    # "expp":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    return-object v5

    .line 729
    :catch_1
    move-exception v0

    .line 730
    .local v0, "eio":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v3, "fbconnect"

    const-string v4, "http"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 230
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 231
    .local v2, "u":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 232
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "u":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private static read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x3e8

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 525
    .local v1, "r":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 529
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 12
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 486
    const-string v7, ""

    .line 487
    .local v7, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 490
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 491
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 493
    .local v0, "content":Ljava/io/ByteArrayOutputStream;
    const-string v9, "Content-Encoding"

    invoke-interface {p0, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 494
    .local v3, "header":Lorg/apache/http/Header;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-le v9, v11, :cond_0

    .line 495
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    move-object v4, v5

    .line 499
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :cond_0
    const/4 v6, 0x0

    .line 500
    .local v6, "readBytes":I
    const/16 v9, 0x200

    new-array v8, v9, [B

    .line 501
    .local v8, "sBuffer":[B
    :goto_0
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v11, :cond_1

    .line 502
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 507
    .end local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "readBytes":I
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "sBuffer":[B
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v9, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v9, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 505
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "header":Lorg/apache/http/Header;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "readBytes":I
    .restart local v7    # "result":Ljava/lang/String;
    .restart local v8    # "sBuffer":[B
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/String;

    .end local v7    # "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 506
    .restart local v7    # "result":Ljava/lang/String;
    return-object v7

    .line 509
    .end local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "readBytes":I
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "sBuffer":[B
    :catch_1
    move-exception v1

    .line 510
    .local v1, "e":Ljava/io/IOException;
    new-instance v9, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v9, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v9
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 18
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 624
    if-nez p0, :cond_0

    .line 625
    const/4 v4, 0x0

    .line 681
    :goto_0
    return-object v4

    .line 627
    :cond_0
    const/4 v9, 0x0

    .line 629
    .local v9, "sParentDir":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 630
    move-object/from16 v9, p1

    .line 635
    :goto_1
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    .local v13, "targetDirectory":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_3

    .line 637
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 632
    .end local v13    # "targetDirectory":Ljava/io/File;
    :cond_2
    const-string v9, "/mnt/sdcard/Pictures/"

    goto :goto_1

    .line 640
    .restart local v13    # "targetDirectory":Ljava/io/File;
    :cond_3
    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 641
    .local v11, "sf":Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    const-wide/32 v16, 0x200000

    cmp-long v14, v14, v16

    if-gez v14, :cond_4

    .line 642
    const/4 v4, 0x0

    goto :goto_0

    .line 645
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "SCG/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 646
    .local v10, "sPortraitDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .local v5, "fPortraitDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_5

    .line 648
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v2

    .line 649
    .local v2, "bSucc":Z
    const-string/jumbo v14, "panhui4_Utilitys"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "create fPortraitDir="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    if-nez v2, :cond_5

    .line 651
    const/4 v4, 0x0

    goto :goto_0

    .line 654
    .end local v2    # "bSucc":Z
    :cond_5
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 655
    .local v12, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x4b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 657
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Weibo_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 658
    .local v8, "sFileName":Ljava/lang/String;
    const-string/jumbo v14, "panhui4_Utilitys"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "save image path= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v13, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 660
    .local v4, "f":Ljava/io/File;
    const/4 v6, 0x0

    .line 662
    .local v6, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 667
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    :goto_2
    if-nez v12, :cond_6

    .line 668
    const-string/jumbo v14, "panhui4_Utilitys"

    const-string/jumbo v15, "stream=null"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_6
    if-nez v6, :cond_7

    .line 671
    const-string/jumbo v14, "panhui4_Utilitys"

    const-string v15, "fout=null"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_7
    :try_start_1
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v14, v15, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 675
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 677
    :catch_0
    move-exception v3

    .line 678
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 663
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 665
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 155
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 156
    .local v5, "scaler":Landroid/graphics/Matrix;
    const/4 v7, 0x0

    .line 157
    .local v7, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v9, v0

    .line 158
    .local v9, "fWidthSrc":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v8, v0

    .line 159
    .local v8, "fHeightSrc":F
    int-to-float v0, p1

    div-float/2addr v0, v9

    int-to-float v2, p2

    div-float/2addr v2, v8

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 167
    return-object v7
.end method

.method public static setRequestHeader(Lcom/weibo/sdk/android/WeiboParameters;)V
    .locals 1
    .param p0, "params"    # Lcom/weibo/sdk/android/WeiboParameters;

    .prologue
    .line 128
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->mRequestHeader:Lcom/weibo/sdk/android/WeiboParameters;

    invoke-virtual {v0, p0}, Lcom/weibo/sdk/android/WeiboParameters;->addAll(Lcom/weibo/sdk/android/WeiboParameters;)V

    .line 129
    return-void
.end method

.method public static setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->mRequestHeader:Lcom/weibo/sdk/android/WeiboParameters;

    invoke-virtual {v0, p0, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 559
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 560
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 561
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 562
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 563
    return-void
.end method
