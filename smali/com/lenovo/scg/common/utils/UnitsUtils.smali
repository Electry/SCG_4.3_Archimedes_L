.class public Lcom/lenovo/scg/common/utils/UnitsUtils;
.super Ljava/lang/Object;
.source "UnitsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Byte2KB(J)J
    .locals 2
    .param p0, "byte_p"    # J

    .prologue
    .line 34
    const/16 v0, 0xa

    shr-long v0, p0, v0

    return-wide v0
.end method

.method public static Byte2M(J)J
    .locals 2
    .param p0, "byte_p"    # J

    .prologue
    .line 46
    const/16 v0, 0x14

    shr-long v0, p0, v0

    return-wide v0
.end method

.method public static Kb2M(J)J
    .locals 2
    .param p0, "kb"    # J

    .prologue
    .line 22
    const/16 v0, 0xa

    shr-long v0, p0, v0

    return-wide v0
.end method
