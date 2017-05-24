.class public Lcom/alipay/code/scansdk/SdkVersion;
.super Ljava/lang/Object;
.source "SdkVersion.java"


# instance fields
.field mScanApkVersion:I

.field mSdkVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scanApkVersion()I
    .locals 1

    .prologue
    .line 6
    iget v0, p0, Lcom/alipay/code/scansdk/SdkVersion;->mScanApkVersion:I

    return v0
.end method

.method public sdkVersion()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/alipay/code/scansdk/SdkVersion;->mSdkVersion:I

    return v0
.end method
