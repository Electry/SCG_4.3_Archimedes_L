.class public Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
.super Ljava/lang/Object;
.source "MiniCameraRational.java"


# instance fields
.field private final mDenominator:J

.field private final mNumerator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "nominator"    # J
    .param p3, "denominator"    # J

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mNumerator:J

    .line 47
    iput-wide p3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mDenominator:J

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)V
    .locals 2
    .param p1, "r"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-wide v0, p1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mNumerator:J

    iput-wide v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mNumerator:J

    .line 55
    iget-wide v0, p1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mDenominator:J

    iput-wide v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mDenominator:J

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v2

    .line 85
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    instance-of v3, p1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 89
    check-cast v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .line 90
    .local v0, "data":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    iget-wide v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mNumerator:J

    iget-wide v6, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mNumerator:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mDenominator:J

    iget-wide v6, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mDenominator:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getDenominator()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mDenominator:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mNumerator:J

    return-wide v0
.end method

.method public toDouble()D
    .locals 4

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mNumerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mDenominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mNumerator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->mDenominator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
