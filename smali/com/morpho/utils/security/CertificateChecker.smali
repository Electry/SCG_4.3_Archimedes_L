.class public Lcom/morpho/utils/security/CertificateChecker;
.super Ljava/lang/Object;
.source "CertificateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/morpho/utils/security/CertificateChecker$Result;
    }
.end annotation


# static fields
.field private static final CHECK_STR_C:Ljava/lang/String; = "C=JP"

.field private static final CHECK_STR_O:Ljava/lang/String; = "O=Morpho"

.field private static final CHECK_STR_ST:Ljava/lang/String; = "ST=Tokyo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/pm/PackageInfo;)Lcom/morpho/utils/security/CertificateChecker$Result;
    .locals 9
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v8, -0x1

    .line 33
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 64
    sget-object v4, Lcom/morpho/utils/security/CertificateChecker$Result;->NO_ERROR:Lcom/morpho/utils/security/CertificateChecker$Result;

    :goto_1
    return-object v4

    .line 33
    :cond_0
    aget-object v1, v5, v4

    .line 35
    .local v1, "appSignature":Landroid/content/pm/Signature;
    const/4 v0, 0x0

    .line 37
    .local v0, "appCertificate":Ljavax/security/cert/X509Certificate;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;
    :try_end_0
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "checkStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 46
    const-string v7, "O=Morpho"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_1

    .line 47
    const-string v7, "ST=Tokyo"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_1

    .line 48
    const-string v7, "C=JP"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_2

    .line 49
    :cond_1
    sget-object v4, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_ISSUER_DN:Lcom/morpho/utils/security/CertificateChecker$Result;

    goto :goto_1

    .line 38
    .end local v2    # "checkStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 39
    .local v3, "e":Ljavax/security/cert/CertificateException;
    invoke-virtual {v3}, Ljavax/security/cert/CertificateException;->printStackTrace()V

    .line 40
    sget-object v4, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_INTERNAL:Lcom/morpho/utils/security/CertificateChecker$Result;

    goto :goto_1

    .line 54
    .end local v3    # "e":Ljavax/security/cert/CertificateException;
    .restart local v2    # "checkStr":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->checkValidity()V
    :try_end_1
    .catch Ljavax/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_2

    .line 33
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :catch_1
    move-exception v3

    .line 56
    .local v3, "e":Ljavax/security/cert/CertificateExpiredException;
    invoke-virtual {v3}, Ljavax/security/cert/CertificateExpiredException;->printStackTrace()V

    .line 57
    sget-object v4, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_EXPIRED:Lcom/morpho/utils/security/CertificateChecker$Result;

    goto :goto_1

    .line 58
    .end local v3    # "e":Ljavax/security/cert/CertificateExpiredException;
    :catch_2
    move-exception v3

    .line 59
    .local v3, "e":Ljavax/security/cert/CertificateNotYetValidException;
    invoke-virtual {v3}, Ljavax/security/cert/CertificateNotYetValidException;->printStackTrace()V

    .line 60
    sget-object v4, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_NOT_YET_VALID:Lcom/morpho/utils/security/CertificateChecker$Result;

    goto :goto_1
.end method
