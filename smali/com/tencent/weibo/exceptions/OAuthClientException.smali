.class public Lcom/tencent/weibo/exceptions/OAuthClientException;
.super Ljava/lang/Exception;
.source "OAuthClientException.java"


# static fields
.field private static final serialVersionUID:J = -0x13deed9f8bf975dL


# instance fields
.field private errcode:Ljava/lang/String;

.field private errmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "errcode"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p1}, Lcom/tencent/weibo/constants/ErrorCodeConstants;->getErrmsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/tencent/weibo/exceptions/OAuthClientException;->errcode:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/tencent/weibo/constants/ErrorCodeConstants;->getErrmsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/exceptions/OAuthClientException;->errmsg:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errcode"    # Ljava/lang/String;
    .param p2, "errmsg"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tencent/weibo/exceptions/OAuthClientException;->errcode:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/tencent/weibo/exceptions/OAuthClientException;->errmsg:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getErrcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/weibo/exceptions/OAuthClientException;->errcode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/weibo/exceptions/OAuthClientException;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public setErrcode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errcode"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tencent/weibo/exceptions/OAuthClientException;->errcode:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errmsg"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/weibo/exceptions/OAuthClientException;->errmsg:Ljava/lang/String;

    .line 49
    return-void
.end method
