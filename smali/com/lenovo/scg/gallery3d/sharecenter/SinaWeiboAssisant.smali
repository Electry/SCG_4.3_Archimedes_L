.class public Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;
.super Ljava/lang/Object;
.source "SinaWeiboAssisant.java"


# static fields
.field public static final BOUNDARY:Ljava/lang/String; = "7cd4a6d158c"

.field public static final END_MP_BOUNDARY:Ljava/lang/String; = "--7cd4a6d158c--"

.field private static final GALLERY_SETTINGS:Ljava/lang/String; = "super_gallery_settings"

.field private static final KEY_FOLlOWERS_COUNT:Ljava/lang/String; = "followsCount"

.field private static final KEY_FRIENDS_COUNT:Ljava/lang/String; = "friendsCount"

.field private static final KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final KEY_PROFILE_IMAGE_URL:Ljava/lang/String; = "profileImageUrl"

.field private static final KEY_SCREEN_NAME:Ljava/lang/String; = "screenName"

.field private static final KEY_STATUSES_COUNT:Ljava/lang/String; = "statusesCount"

.field public static final MP_BOUNDARY:Ljava/lang/String; = "--7cd4a6d158c"

.field public static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field private static final SET_CONNECTION_TIMEOUT:I = 0xc350

.field private static final SET_SOCKET_TIMEOUT:I = 0x30d40


# instance fields
.field public final HTTPMETHOD_GET:Ljava/lang/String;

.field public final KEY_USER_ID:Ljava/lang/String;

.field public final URL_USERS_SHOW:Ljava/lang/String;

.field private mAccessTokenStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "https://api.weibo.com/2/users/show.json"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->URL_USERS_SHOW:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "uid"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->KEY_USER_ID:Ljava/lang/String;

    .line 45
    const-string v0, "GET"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->HTTPMETHOD_GET:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 80
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "super_gallery_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # J
    .param p8, "x6"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p8}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extraKey1"    # Ljava/lang/String;
    .param p3, "extraValue1"    # J
    .param p5, "extraKey2"    # Ljava/lang/String;
    .param p6, "extraValue2"    # J
    .param p8, "questMode"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v4, 0x0

    .line 106
    .local v4, "result":Ljava/lang/String;
    new-instance v3, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v3}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 107
    .local v3, "params":Lcom/weibo/sdk/android/WeiboParameters;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->mAccessTokenStr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    const-string v5, "access_token"

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->mAccessTokenStr:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 111
    invoke-virtual {v3, p2, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 113
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    invoke-virtual {v3, p5, p6, p7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 117
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p8, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 130
    :goto_0
    return-object v4

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "ewb":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v2}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v2    # "ewb":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "eun":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v1    # "eun":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v0

    .line 126
    .local v0, "eio":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static encodeParameters(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    .locals 7
    .param p0, "httpParams"    # Lcom/weibo/sdk/android/WeiboParameters;

    .prologue
    .line 323
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->isBundleEmpty(Lcom/weibo/sdk/android/WeiboParameters;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    :cond_0
    const-string v4, ""

    .line 338
    :goto_0
    return-object v4

    .line 326
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 328
    .local v1, "j":I
    const/4 v3, 0x0

    .local v3, "loc":I
    :goto_1
    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 329
    invoke-virtual {p0, v3}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "key":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 331
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
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

    .line 336
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 328
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 338
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 335
    .restart local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private static encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    .locals 5
    .param p0, "parameters"    # Lcom/weibo/sdk/android/WeiboParameters;

    .prologue
    .line 249
    if-nez p0, :cond_0

    .line 250
    const-string v3, ""

    .line 260
    :goto_0
    return-object v3

    .line 253
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 255
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "loc":I
    :goto_1
    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 256
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 258
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

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 257
    :cond_1
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 260
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 214
    .local v1, "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    const v2, 0xc350

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 215
    const v2, 0x30d40

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 216
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 245
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    return-object v0
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
    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v4, "temp":Ljava/lang/StringBuilder;
    const-string v5, "--7cd4a6d158c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v5, "Content-Disposition: form-data; name=\"pic\"; filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "news_image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v2, "image/png"

    .line 301
    .local v2, "filetype":Ljava/lang/String;
    const-string v5, "Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 303
    .local v3, "res":[B
    const/4 v0, 0x0

    .line 305
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 306
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    invoke-virtual {p1, v5, v6, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 307
    const-string v5, "\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 308
    const-string v5, "\r\n--7cd4a6d158c--"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    if-eqz v0, :cond_0

    .line 314
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    :cond_0
    return-void

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 309
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 310
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 314
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 316
    :cond_1
    throw v5

    .line 315
    :catch_2
    move-exception v1

    .line 316
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public static isBundleEmpty(Lcom/weibo/sdk/android/WeiboParameters;)Z
    .locals 1
    .param p0, "bundle"    # Lcom/weibo/sdk/android/WeiboParameters;

    .prologue
    .line 343
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
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
    .line 134
    const-string v3, ""

    .line 135
    .local v3, "rlt":Ljava/lang/String;
    const-string v0, ""

    .line 136
    .local v0, "file":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "loc":I
    :goto_0
    invoke-virtual {p3}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 137
    invoke-virtual {p3, v2}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v4, "pic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    invoke-virtual {p3, v1}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p3, v1}, Lcom/weibo/sdk/android/WeiboParameters;->remove(Ljava/lang/String;)V

    .line 136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 144
    const/4 v4, 0x0

    invoke-static {p0, p1, p2, p3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    :goto_1
    return-object v3

    .line 146
    :cond_2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private static openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;
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
    .line 152
    const-string v11, ""

    .line 154
    .local v11, "result":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 155
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    const/4 v9, 0x0

    .line 157
    .local v9, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v14, "GET"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 158
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 161
    .local v6, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object v9, v6

    .line 189
    .end local v6    # "get":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    invoke-interface {v3, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 190
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 191
    .local v12, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 192
    .local v13, "statusCode":I
    const/16 v14, 0xc8

    if-eq v13, v14, :cond_4

    .line 193
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v11

    .line 194
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

    .line 162
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "status":Lorg/apache/http/StatusLine;
    .end local v13    # "statusCode":I
    :cond_1
    const-string v14, "POST"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 164
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 165
    .local v7, "post":Lorg/apache/http/client/methods/HttpPost;
    const/4 v4, 0x0

    .line 166
    .local v4, "data":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const v14, 0xc800

    invoke-direct {v2, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 167
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 168
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->paramToUpload(Ljava/io/OutputStream;Lcom/weibo/sdk/android/WeiboParameters;)V

    .line 169
    const-string v14, "Content-Type"

    const-string/jumbo v15, "multipart/form-data; boundary=7cd4a6d158c"

    invoke-virtual {v7, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static/range {p4 .. p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 172
    .local v1, "bf":Landroid/graphics/Bitmap;
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->imageContentToUpload(Ljava/io/OutputStream;Landroid/graphics/Bitmap;)V

    .line 180
    .end local v1    # "bf":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 181
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 183
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 184
    .local v5, "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v7, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 185
    move-object v9, v7

    .line 186
    goto :goto_0

    .line 175
    .end local v5    # "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    :cond_2
    const-string v14, "Content-Type"

    const-string v15, "application/x-www-form-urlencoded"

    invoke-virtual {v7, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static/range {p3 .. p3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->encodeParameters(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "postParam":Ljava/lang/String;
    const-string v14, "UTF-8"

    invoke-virtual {v8, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 178
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 186
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

    .line 187
    new-instance v9, Lorg/apache/http/client/methods/HttpDelete;

    .end local v9    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v9    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 197
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "status":Lorg/apache/http/StatusLine;
    .restart local v13    # "statusCode":I
    :cond_4
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v11

    .line 198
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
    .line 271
    const-string v1, ""

    .line 272
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "loc":I
    :goto_0
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 273
    invoke-virtual {p1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 275
    .local v4, "temp":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 276
    const-string v5, "--7cd4a6d158c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v5, "content-disposition: form-data; name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p1, v1}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 281
    .local v3, "res":[B
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v0}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 286
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "res":[B
    .end local v4    # "temp":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private static read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 12
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 357
    const-string v7, ""

    .line 358
    .local v7, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 361
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 362
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 364
    .local v0, "content":Ljava/io/ByteArrayOutputStream;
    const-string v9, "Content-Encoding"

    invoke-interface {p0, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 365
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

    .line 366
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    move-object v4, v5

    .line 370
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :cond_0
    const/4 v6, 0x0

    .line 371
    .local v6, "readBytes":I
    const/16 v9, 0x200

    new-array v8, v9, [B

    .line 372
    .local v8, "sBuffer":[B
    :goto_0
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v11, :cond_1

    .line 373
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 378
    .end local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "readBytes":I
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "sBuffer":[B
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v9, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v9, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 376
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

    .line 377
    .restart local v7    # "result":Ljava/lang/String;
    return-object v7

    .line 380
    .end local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "readBytes":I
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "sBuffer":[B
    :catch_1
    move-exception v1

    .line 381
    .local v1, "e":Ljava/io/IOException;
    new-instance v9, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v9, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v9
.end method


# virtual methods
.method public getUserInfo(JLjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "accessTokenStr"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->mAccessTokenStr:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;J)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant$1;->start()V

    .line 102
    return-void
.end method

.method public storeUserInfo(Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;)V
    .locals 3
    .param p1, "userInfo"    # Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 388
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "screenName"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;->getUser_screen_name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 389
    const-string v1, "location"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;->getUser_location()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    const-string v1, "friendsCount"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;->getUser_friends_count()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 391
    const-string v1, "followsCount"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;->getUser_followers_count()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 392
    const-string/jumbo v1, "statusesCount"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;->getUser_statuses_count()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 393
    const-string/jumbo v1, "profileImageUrl"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;->getUser_avatar_large()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 394
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 396
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
