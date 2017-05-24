.class public Lcom/lenovo/scg/LeImageJI/CLeJpegHead;
.super Ljava/lang/Object;
.source "CLeJpegHead.java"


# instance fields
.field private mJpegHeadMem:J

.field private mPExif:J

.field private mThumbNailLen:J

.field private pThumbNail:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const-string v0, "LeCSC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 130
    const-string v0, "Lejpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 131
    const-string v0, "Leskia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 132
    const-string v0, "LeImage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 133
    const-string v0, "LeImageJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    .line 6
    iput-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mThumbNailLen:J

    .line 7
    iput-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    .line 8
    iput-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->pThumbNail:J

    return-void
.end method

.method private native CreateJPGInfoC([BII)J
.end method

.method private native GenerateWholeFileSizeC(J[BI)V
.end method

.method private native GetExifC(J)J
.end method

.method private native GetExifThumbnailC(J)[B
.end method

.method private native GetWholeFileSizeC(J)I
.end method

.method private native ReleaseExifC(JJ)V
.end method

.method private native ReleaseExifThumbnailC(JJ)I
.end method

.method private native ReleaseJpegMemC(J)V
.end method

.method private native ReplaceExifC(JJ)V
.end method

.method private native ReplaceExifThumbnailByteC(JJ[BI)V
.end method

.method private native ReplaceExifThumbnailC(JJJ)V
.end method


# virtual methods
.method public GenerateWholeFileSize([B)V
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->GenerateWholeFileSizeC(J[BI)V

    .line 106
    return-void
.end method

.method public GetExifThumbnail()[B
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->GetExifThumbnailC(J)[B

    move-result-object v0

    return-object v0
.end method

.method public GetJpegExif()V
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->GetExifC(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    .line 45
    return-void
.end method

.method public GetJpegExifForOut()J
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->GetJpegExif()V

    .line 50
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    return-wide v0
.end method

.method public GetWholeFileSize()I
    .locals 2

    .prologue
    .line 96
    .line 97
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->GetWholeFileSizeC(J)I

    move-result v0

    .line 98
    return v0
.end method

.method public ReleaseExif()V
    .locals 4

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->ReleaseExifC(JJ)V

    .line 39
    return-void
.end method

.method public ReplaceExif()V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->GetJpegExif()V

    .line 56
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->ReplaceExifC(JJ)V

    .line 57
    return-void
.end method

.method public ReplaceExif(J)V
    .locals 3

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->ReplaceExifC(JJ)V

    .line 63
    return-void
.end method

.method public ReplaceExifThumbnail(J)V
    .locals 9

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->GetJpegExif()V

    .line 89
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    iget-wide v4, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    move-object v1, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->ReplaceExifThumbnailC(JJJ)V

    .line 90
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->ReplaceExifC(JJ)V

    .line 91
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->ReleaseExifC(JJ)V

    .line 92
    return-void
.end method

.method public ReplaceExifThumbnail([B)V
    .locals 8

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->GetJpegExif()V

    .line 77
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    iget-wide v4, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    array-length v7, p1

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->ReplaceExifThumbnailByteC(JJ[BI)V

    .line 78
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->ReplaceExifC(JJ)V

    .line 79
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->ReleaseExifC(JJ)V

    .line 80
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 30
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mPExif:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->ReleaseExifC(JJ)V

    .line 32
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->ReleaseJpegMemC(J)V

    .line 34
    return-void
.end method

.method public init([BILcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;)V
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p3}, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->GetValue()I

    move-result v0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->CreateJPGInfoC([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeJpegHead;->mJpegHeadMem:J

    .line 24
    return-void
.end method
