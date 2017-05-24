.class public Lcn/jingling/lib/utils/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToInt(B)I
    .locals 0
    .param p0, "b"    # B

    .prologue
    .line 5
    if-ltz p0, :cond_0

    .end local p0    # "b":B
    :goto_0
    return p0

    .restart local p0    # "b":B
    :cond_0
    add-int/lit16 p0, p0, 0x100

    goto :goto_0
.end method
