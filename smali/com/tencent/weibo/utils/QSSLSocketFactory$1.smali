.class Lcom/tencent/weibo/utils/QSSLSocketFactory$1;
.super Ljava/lang/Object;
.source "QSSLSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/utils/QSSLSocketFactory;->getEasySSLContext()Ljavax/net/ssl/SSLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/utils/QSSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/utils/QSSLSocketFactory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/weibo/utils/QSSLSocketFactory$1;->this$0:Lcom/tencent/weibo/utils/QSSLSocketFactory;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "2001"

    invoke-static {v3}, Lcom/tencent/weibo/constants/ErrorCodeConstants;->getErrmsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    .local v0, "check":Z
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 45
    :goto_1
    if-nez v0, :cond_3

    .line 46
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "2002"

    invoke-static {v3}, Lcom/tencent/weibo/constants/ErrorCodeConstants;->getErrmsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_1
    aget-object v1, p1, v2

    .line 40
    .local v1, "x509Certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CN=open.t.qq.com,"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_1

    .line 39
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_3
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
