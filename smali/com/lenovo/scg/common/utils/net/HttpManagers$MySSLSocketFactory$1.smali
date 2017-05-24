.class Lcom/lenovo/scg/common/utils/net/HttpManagers$MySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "HttpManagers.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/utils/net/HttpManagers$MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/utils/net/HttpManagers$MySSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/utils/net/HttpManagers$MySSLSocketFactory;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/net/HttpManagers$MySSLSocketFactory$1;->this$0:Lcom/lenovo/scg/common/utils/net/HttpManagers$MySSLSocketFactory;

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
    .line 202
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 205
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method
