.class public Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;
.super Lcom/baidu/idl/lib/network/HttpRequestWithToken;
.source "IDLOCRRequest.java"


# static fields
.field public static final ST_OCR:Ljava/lang/String; = "st_ocr"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private mMaskBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "mMaskBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 39
    iput-object p3, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method


# virtual methods
.method public execute(Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;)V
    .locals 14
    .param p1, "l"    # Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mOnResponseListener:Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .line 74
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0, v7}, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->fillParams(Ljava/util/List;)V

    .line 76
    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->logPostParams(Ljava/lang/String;Ljava/util/List;)V

    .line 78
    :try_start_0
    new-instance v8, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;

    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;)V

    .line 79
    .local v8, "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 83
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->bitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x50

    invoke-virtual {v9, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 86
    .local v2, "data":[B
    const-string/jumbo v9, "pic_file"

    new-instance v10, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string/jumbo v11, "temp.jpg"

    invoke-direct {v10, v2, v11}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 89
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    .line 90
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    .local v1, "bos2":Ljava/io/ByteArrayOutputStream;
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mMaskBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x50

    invoke-virtual {v9, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 93
    .local v3, "data2":[B
    const-string/jumbo v9, "mask"

    new-instance v10, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string/jumbo v11, "temp2.jpg"

    invoke-direct {v10, v3, v11}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 96
    .end local v1    # "bos2":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "data2":[B
    :cond_0
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 98
    .local v5, "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 99
    iput-object v5, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 101
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    .line 102
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 105
    :cond_1
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_2

    .line 106
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 107
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mMaskBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v5    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    :cond_2
    :goto_1
    new-instance v9, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    iget-object v10, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mTag:Ljava/lang/Object;

    iget-object v11, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {v9, p0, v10, v11}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;-><init>(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;Ljava/lang/Object;Lorg/apache/http/client/methods/HttpUriRequest;)V

    iput-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mClient:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    .line 114
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOCRRequest;->mClient:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    invoke-virtual {v9}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->start()V

    .line 115
    return-void

    .line 79
    .restart local v8    # "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    :cond_3
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    .line 80
    .local v6, "mParam":Lorg/apache/http/NameValuePair;
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "utf-8"

    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v8, v10, v11}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 109
    .end local v6    # "mParam":Lorg/apache/http/NameValuePair;
    .end local v8    # "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    :catch_0
    move-exception v4

    .line 110
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

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
    .line 49
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-super {p0, p1}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;->fillParams(Ljava/util/List;)V

    .line 51
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "fromdevice"

    const-string v2, "android"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "appid"

    const-string v2, "10025"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "clientip"

    invoke-static {}, Lcom/baidu/idl/lib/utils/PhoneBasicUtil;->GetHostIp()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "encoding"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "detecttype"

    const-string v2, "LocateRecognize"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "mmtype"

    const-string/jumbo v2, "st_ocr"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method protected getResponse([BLjava/lang/Object;)Lcom/baidu/idl/lib/network/HttpResponse;
    .locals 1
    .param p1, "rst"    # [B
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 62
    new-instance v0, Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;

    invoke-direct {v0, p1, p2}, Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;-><init>([BLjava/lang/Object;)V

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "http://starup.xiangce.baidu.com/mobileapp/analyse-multimedia"

    return-object v0
.end method

.method protected postOrGet()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
