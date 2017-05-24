.class public Lcom/baidu/idl/lib/network/entity/IDLBookRequest;
.super Lcom/baidu/idl/lib/network/HttpRequestWithToken;
.source "IDLBookRequest.java"


# static fields
.field public static final ST_BOOK:Ljava/lang/String; = "st_book"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 37
    return-void
.end method


# virtual methods
.method public execute(Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;)V
    .locals 12
    .param p1, "l"    # Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->mOnResponseListener:Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .line 71
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0, v5}, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->fillParams(Ljava/util/List;)V

    .line 73
    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->logPostParams(Ljava/lang/String;Ljava/util/List;)V

    .line 75
    :try_start_0
    new-instance v6, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;

    sget-object v7, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;)V

    .line 76
    .local v6, "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 80
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    iget-object v7, p0, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->bitmap:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v7, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 82
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 83
    .local v1, "data":[B
    const-string/jumbo v7, "pic_file"

    new-instance v8, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string/jumbo v9, "temp.jpg"

    invoke-direct {v8, v1, v9}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 85
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 88
    iput-object v3, p0, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 90
    iget-object v7, p0, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 91
    iget-object v7, p0, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v3    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    :cond_0
    :goto_1
    new-instance v7, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    iget-object v8, p0, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->mTag:Ljava/lang/Object;

    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {v7, p0, v8, v9}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;-><init>(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;Ljava/lang/Object;Lorg/apache/http/client/methods/HttpUriRequest;)V

    iput-object v7, p0, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->mClient:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    .line 99
    iget-object v7, p0, Lcom/baidu/idl/lib/network/entity/IDLBookRequest;->mClient:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    invoke-virtual {v7}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->start()V

    .line 100
    return-void

    .line 76
    .restart local v6    # "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    :cond_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 77
    .local v4, "mParam":Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "utf-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v6, v8, v9}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 94
    .end local v4    # "mParam":Lorg/apache/http/NameValuePair;
    .end local v6    # "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected fillParams(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-super {p0, p1}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;->fillParams(Ljava/util/List;)V

    .line 48
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "fromdevice"

    const-string v2, "android"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "appid"

    const-string v2, "10025"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "clientip"

    invoke-static {}, Lcom/baidu/idl/lib/utils/PhoneBasicUtil;->GetHostIp()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "encoding"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "detecttype"

    const-string v2, "LocateRecognize"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "mmtype"

    const-string/jumbo v2, "st_book"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method protected getResponse([BLjava/lang/Object;)Lcom/baidu/idl/lib/network/HttpResponse;
    .locals 1
    .param p1, "rst"    # [B
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 59
    new-instance v0, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;

    invoke-direct {v0, p1, p2}, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;-><init>([BLjava/lang/Object;)V

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "http://starup.xiangce.baidu.com/mobileapp/analyse-multimedia"

    return-object v0
.end method

.method protected postOrGet()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method
