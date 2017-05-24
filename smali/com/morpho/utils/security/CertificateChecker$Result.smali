.class public final enum Lcom/morpho/utils/security/CertificateChecker$Result;
.super Ljava/lang/Enum;
.source "CertificateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morpho/utils/security/CertificateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/morpho/utils/security/CertificateChecker$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/morpho/utils/security/CertificateChecker$Result;

.field public static final enum ERROR_EXPIRED:Lcom/morpho/utils/security/CertificateChecker$Result;

.field public static final enum ERROR_INTERNAL:Lcom/morpho/utils/security/CertificateChecker$Result;

.field public static final enum ERROR_ISSUER_DN:Lcom/morpho/utils/security/CertificateChecker$Result;

.field public static final enum ERROR_NOT_YET_VALID:Lcom/morpho/utils/security/CertificateChecker$Result;

.field public static final enum NO_ERROR:Lcom/morpho/utils/security/CertificateChecker$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/morpho/utils/security/CertificateChecker$Result;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/morpho/utils/security/CertificateChecker$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/morpho/utils/security/CertificateChecker$Result;->NO_ERROR:Lcom/morpho/utils/security/CertificateChecker$Result;

    .line 15
    new-instance v0, Lcom/morpho/utils/security/CertificateChecker$Result;

    const-string v1, "ERROR_ISSUER_DN"

    invoke-direct {v0, v1, v3}, Lcom/morpho/utils/security/CertificateChecker$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_ISSUER_DN:Lcom/morpho/utils/security/CertificateChecker$Result;

    .line 16
    new-instance v0, Lcom/morpho/utils/security/CertificateChecker$Result;

    const-string v1, "ERROR_EXPIRED"

    invoke-direct {v0, v1, v4}, Lcom/morpho/utils/security/CertificateChecker$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_EXPIRED:Lcom/morpho/utils/security/CertificateChecker$Result;

    .line 17
    new-instance v0, Lcom/morpho/utils/security/CertificateChecker$Result;

    const-string v1, "ERROR_NOT_YET_VALID"

    invoke-direct {v0, v1, v5}, Lcom/morpho/utils/security/CertificateChecker$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_NOT_YET_VALID:Lcom/morpho/utils/security/CertificateChecker$Result;

    .line 18
    new-instance v0, Lcom/morpho/utils/security/CertificateChecker$Result;

    const-string v1, "ERROR_INTERNAL"

    invoke-direct {v0, v1, v6}, Lcom/morpho/utils/security/CertificateChecker$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_INTERNAL:Lcom/morpho/utils/security/CertificateChecker$Result;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/morpho/utils/security/CertificateChecker$Result;

    sget-object v1, Lcom/morpho/utils/security/CertificateChecker$Result;->NO_ERROR:Lcom/morpho/utils/security/CertificateChecker$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_ISSUER_DN:Lcom/morpho/utils/security/CertificateChecker$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_EXPIRED:Lcom/morpho/utils/security/CertificateChecker$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_NOT_YET_VALID:Lcom/morpho/utils/security/CertificateChecker$Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/morpho/utils/security/CertificateChecker$Result;->ERROR_INTERNAL:Lcom/morpho/utils/security/CertificateChecker$Result;

    aput-object v1, v0, v6

    sput-object v0, Lcom/morpho/utils/security/CertificateChecker$Result;->ENUM$VALUES:[Lcom/morpho/utils/security/CertificateChecker$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/morpho/utils/security/CertificateChecker$Result;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/morpho/utils/security/CertificateChecker$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/morpho/utils/security/CertificateChecker$Result;

    return-object v0
.end method

.method public static values()[Lcom/morpho/utils/security/CertificateChecker$Result;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/morpho/utils/security/CertificateChecker$Result;->ENUM$VALUES:[Lcom/morpho/utils/security/CertificateChecker$Result;

    array-length v1, v0

    new-array v2, v1, [Lcom/morpho/utils/security/CertificateChecker$Result;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
