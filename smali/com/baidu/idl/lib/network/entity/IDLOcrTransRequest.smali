.class public Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;
.super Lcom/baidu/idl/lib/network/HttpRequestWithToken;
.source "IDLOcrTransRequest.java"


# static fields
.field public static final ST_OCR_TRANS:Ljava/lang/String; = "st_ocr_trans"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private from:Ljava/lang/String;

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "mMaskBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 48
    iput-object p3, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "mMaskBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "from"    # Ljava/lang/String;
    .param p5, "to"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 53
    iput-object p3, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 54
    iput-object p4, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->from:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->to:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public execute(Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;)V
    .locals 14
    .param p1, "l"    # Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mOnResponseListener:Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .line 97
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0, v7}, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->fillParams(Ljava/util/List;)V

    .line 99
    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->logPostParams(Ljava/lang/String;Ljava/util/List;)V

    .line 101
    :try_start_0
    new-instance v8, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;

    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;)V

    .line 102
    .local v8, "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 106
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->bitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x50

    invoke-virtual {v9, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 108
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 109
    .local v2, "data":[B
    const-string/jumbo v9, "pic_file"

    new-instance v10, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string/jumbo v11, "temp.jpg"

    invoke-direct {v10, v2, v11}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 112
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    .line 113
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .local v1, "bos2":Ljava/io/ByteArrayOutputStream;
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mMaskBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x50

    invoke-virtual {v9, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 115
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 116
    .local v3, "data2":[B
    const-string/jumbo v9, "mask"

    new-instance v10, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string/jumbo v11, "temp2.jpg"

    invoke-direct {v10, v3, v11}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 119
    .end local v1    # "bos2":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "data2":[B
    :cond_0
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 121
    .local v5, "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 122
    iput-object v5, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 124
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    .line 125
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 128
    :cond_1
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_2

    .line 129
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mMaskBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v5    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    :cond_2
    :goto_1
    new-instance v9, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    iget-object v10, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mTag:Ljava/lang/Object;

    iget-object v11, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {v9, p0, v10, v11}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;-><init>(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;Ljava/lang/Object;Lorg/apache/http/client/methods/HttpUriRequest;)V

    iput-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mClient:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    .line 137
    iget-object v9, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->mClient:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    invoke-virtual {v9}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->start()V

    .line 138
    return-void

    .line 102
    .restart local v8    # "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    :cond_3
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    .line 103
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

    .line 132
    .end local v6    # "mParam":Lorg/apache/http/NameValuePair;
    .end local v8    # "reqEntity":Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
    :catch_0
    move-exception v4

    .line 133
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
    .line 65
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-super {p0, p1}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;->fillParams(Ljava/util/List;)V

    .line 67
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "fromdevice"

    const-string v2, "android"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "appid"

    const-string v2, "10025"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "clientip"

    invoke-static {}, Lcom/baidu/idl/lib/utils/PhoneBasicUtil;->GetHostIp()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "encoding"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "detecttype"

    const-string v2, "LocateRecognize"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "mmtype"

    const-string/jumbo v2, "st_ocr_trans"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->from:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "from"

    iget-object v2, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->from:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->to:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "to"

    iget-object v2, p0, Lcom/baidu/idl/lib/network/entity/IDLOcrTransRequest;->to:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    return-void
.end method

.method protected getResponse([BLjava/lang/Object;)Lcom/baidu/idl/lib/network/HttpResponse;
    .locals 1
    .param p1, "rst"    # [B
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 85
    new-instance v0, Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;

    invoke-direct {v0, p1, p2}, Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;-><init>([BLjava/lang/Object;)V

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "http://starup.xiangce.baidu.com/mobileapp/analyse-multimedia"

    return-object v0
.end method

.method protected postOrGet()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method
