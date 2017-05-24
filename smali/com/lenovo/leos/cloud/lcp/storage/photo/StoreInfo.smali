.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;
.super Ljava/lang/Object;
.source "StoreInfo.java"


# instance fields
.field limitation:J

.field usage:J

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addUsage(J)V
    .locals 3
    .param p1, "fileSize"    # J

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->usage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->usage:J

    .line 41
    return-void
.end method

.method public getLimitation()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->limitation:J

    return-wide v0
.end method

.method public getUsage()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->usage:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->userId:Ljava/lang/String;

    return-object v0
.end method
