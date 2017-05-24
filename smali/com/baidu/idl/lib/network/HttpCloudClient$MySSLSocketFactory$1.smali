.class Lcom/baidu/idl/lib/network/HttpCloudClient$MySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "HttpCloudClient.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/idl/lib/network/HttpCloudClient$MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/idl/lib/network/HttpCloudClient$MySSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/baidu/idl/lib/network/HttpCloudClient$MySSLSocketFactory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/idl/lib/network/HttpCloudClient$MySSLSocketFactory$1;->this$1:Lcom/baidu/idl/lib/network/HttpCloudClient$MySSLSocketFactory;

    .line 225
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
    .line 228
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
    .line 233
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method
