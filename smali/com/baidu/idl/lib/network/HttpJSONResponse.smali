.class public abstract Lcom/baidu/idl/lib/network/HttpJSONResponse;
.super Lcom/baidu/idl/lib/network/HttpResponse;
.source "HttpJSONResponse.java"


# static fields
.field public static final JSON_ERROR:I = 0x2711

.field public static final NETWORK_ERROR:I = 0x3e8

.field protected static final TAG:Ljava/lang/String; = "HttpJSONResponse"


# instance fields
.field private mRstString:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/Object;)V
    .locals 6
    .param p1, "rst"    # [B
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0x2711

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/baidu/idl/lib/network/HttpResponse;-><init>([BLjava/lang/Object;)V

    .line 19
    const-string v3, ""

    iput-object v3, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->mRstString:Ljava/lang/String;

    .line 23
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->error:I

    .line 24
    iget v3, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->error:I

    invoke-static {v3}, Lcom/baidu/idl/lib/network/ErrorMessage;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->errorMsg:Ljava/lang/String;

    .line 25
    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 30
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->mRstString:Ljava/lang/String;

    .line 35
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->mRstString:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "err_code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    const-string v3, "err_code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->error:I

    .line 39
    iget v3, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->error:I

    invoke-static {v3}, Lcom/baidu/idl/lib/network/ErrorMessage;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->errorMsg:Ljava/lang/String;

    .line 44
    :cond_2
    iget v3, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->error:I

    const/16 v4, 0x66

    if-eq v3, v4, :cond_0

    .line 46
    invoke-virtual {p0, v1}, Lcom/baidu/idl/lib/network/HttpJSONResponse;->parse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 49
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 52
    iput v5, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->error:I

    goto :goto_0

    .line 53
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 56
    iput v5, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->error:I

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    iput v5, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->error:I

    goto :goto_0
.end method


# virtual methods
.method protected changeErrorID(Ljava/lang/String;)I
    .locals 1
    .param p1, "err_code"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/16 v0, 0x2711

    .line 80
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2712

    goto :goto_0
.end method

.method protected abstract parse(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/idl/lib/network/HttpJSONResponse;->mRstString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
