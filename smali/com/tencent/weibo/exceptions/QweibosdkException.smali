.class public Lcom/tencent/weibo/exceptions/QweibosdkException;
.super Ljava/lang/Exception;
.source "QweibosdkException.java"


# static fields
.field private static final serialVersionUID:J = -0xf38730a3b64fe14L


# instance fields
.field private errcode:Ljava/lang/String;

.field private errmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errcode"    # Ljava/lang/String;
    .param p2, "errmsg"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tencent/weibo/exceptions/QweibosdkException;->errcode:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/tencent/weibo/exceptions/QweibosdkException;->errmsg:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getErrcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/weibo/exceptions/QweibosdkException;->errcode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/weibo/exceptions/QweibosdkException;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public setErrcode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errcode"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tencent/weibo/exceptions/QweibosdkException;->errcode:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errmsg"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/weibo/exceptions/QweibosdkException;->errmsg:Ljava/lang/String;

    .line 37
    return-void
.end method
