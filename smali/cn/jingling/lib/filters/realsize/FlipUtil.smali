.class public Lcn/jingling/lib/filters/realsize/FlipUtil;
.super Ljava/lang/Object;
.source "FlipUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flipLine(Landroid/content/Context;[III)V
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "pixels"    # [I
    .param p2, "line"    # I
    .param p3, "height"    # I

    .prologue
    .line 16
    array-length v1, p1

    .line 17
    .local v1, "w":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    div-int/lit8 v2, v1, 0x2

    if-lt v0, v2, :cond_0

    .line 20
    return-void

    .line 18
    :cond_0
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v0, v2}, Lcn/jingling/lib/filters/realsize/FlipUtil;->swap([III)V

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static swap([III)V
    .locals 2
    .param p0, "data"    # [I
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 7
    aget v0, p0, p1

    aget v1, p0, p2

    if-eq v0, v1, :cond_0

    .line 8
    aget v0, p0, p1

    aget v1, p0, p2

    xor-int/2addr v0, v1

    aput v0, p0, p1

    .line 9
    aget v0, p0, p2

    aget v1, p0, p1

    xor-int/2addr v0, v1

    aput v0, p0, p2

    .line 10
    aget v0, p0, p1

    aget v1, p0, p2

    xor-int/2addr v0, v1

    aput v0, p0, p1

    .line 12
    :cond_0
    return-void
.end method
