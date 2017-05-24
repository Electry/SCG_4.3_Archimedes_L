.class public Lcn/jingling/lib/textbubble/PointsCaculation;
.super Ljava/lang/Object;
.source "PointsCaculation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static caculateTwoPointsAngle(DDDD)D
    .locals 4
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D

    .prologue
    .line 34
    double-to-int v0, p0

    double-to-int v1, p2

    double-to-int v2, p4

    double-to-int v3, p6

    invoke-static {v0, v1, v2, v3}, Lcn/jingling/lib/textbubble/PointsCaculation;->caculateTwoPointsAngle(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static caculateTwoPointsAngle(IIII)D
    .locals 4
    .param p0, "x1"    # I
    .param p1, "y1"    # I
    .param p2, "x2"    # I
    .param p3, "y2"    # I

    .prologue
    .line 29
    sub-int v0, p3, p1

    int-to-double v0, v0

    sub-int v2, p2, p0

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static caculateTwoPointsAngle(Lcn/jingling/lib/textbubble/PwMotion;)D
    .locals 8
    .param p0, "mEvent"    # Lcn/jingling/lib/textbubble/PwMotion;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0, v2}, Lcn/jingling/lib/textbubble/PwMotion;->getX(I)D

    move-result-wide v0

    invoke-virtual {p0, v2}, Lcn/jingling/lib/textbubble/PwMotion;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v6}, Lcn/jingling/lib/textbubble/PwMotion;->getX(I)D

    move-result-wide v4

    invoke-virtual {p0, v6}, Lcn/jingling/lib/textbubble/PwMotion;->getY(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcn/jingling/lib/textbubble/PointsCaculation;->caculateTwoPointsAngle(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static caculateTwoPointsDis(DDDD)D
    .locals 4
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D

    .prologue
    .line 11
    double-to-int v0, p0

    double-to-int v1, p2

    double-to-int v2, p4

    double-to-int v3, p6

    invoke-static {v0, v1, v2, v3}, Lcn/jingling/lib/textbubble/PointsCaculation;->caculateTwoPointsDis(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static caculateTwoPointsDis(IIII)D
    .locals 3
    .param p0, "x1"    # I
    .param p1, "y1"    # I
    .param p2, "x2"    # I
    .param p3, "y2"    # I

    .prologue
    .line 16
    sub-int v0, p0, p2

    sub-int v1, p0, p2

    mul-int/2addr v0, v1

    sub-int v1, p1, p3

    sub-int v2, p1, p3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static caculateTwoPointsDis(Lcn/jingling/lib/textbubble/PwMotion;)D
    .locals 8
    .param p0, "mEvent"    # Lcn/jingling/lib/textbubble/PwMotion;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v2}, Lcn/jingling/lib/textbubble/PwMotion;->getX(I)D

    move-result-wide v0

    invoke-virtual {p0, v2}, Lcn/jingling/lib/textbubble/PwMotion;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v6}, Lcn/jingling/lib/textbubble/PwMotion;->getX(I)D

    move-result-wide v4

    invoke-virtual {p0, v6}, Lcn/jingling/lib/textbubble/PwMotion;->getY(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcn/jingling/lib/textbubble/PointsCaculation;->caculateTwoPointsDis(DDDD)D

    move-result-wide v0

    return-wide v0
.end method
