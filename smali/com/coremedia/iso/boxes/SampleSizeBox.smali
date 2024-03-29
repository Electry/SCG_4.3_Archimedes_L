.class public Lcom/coremedia/iso/boxes/SampleSizeBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SampleSizeBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "stsz"


# instance fields
.field sampleCount:I

.field private sampleSize:J

.field private sampleSizes:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "stsz"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSizes:[J

    .line 40
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 90
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSize:J

    .line 91
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleCount:I

    .line 93
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 94
    iget v1, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSizes:[J

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleCount:I

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSizes:[J

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 105
    iget-wide v6, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSize:J

    invoke-static {p1, v6, v7}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 107
    iget-wide v6, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSize:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSizes:[J

    array-length v3, v3

    int-to-long v6, v3

    invoke-static {p1, v6, v7}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 109
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSizes:[J

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-wide v4, v0, v1

    .line 110
    .local v4, "sampleSize1":J
    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "sampleSize1":J
    :cond_0
    iget v3, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleCount:I

    int-to-long v6, v3

    invoke-static {p1, v6, v7}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 116
    :cond_1
    return-void
.end method

.method protected getContentSize()J
    .locals 4

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSizes:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    :goto_0
    add-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSampleCount()J
    .locals 4

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 68
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleCount:I

    int-to-long v0, v0

    .line 70
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSizes:[J

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getSampleSize()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSize:J

    return-wide v0
.end method

.method public getSampleSizeAtIndex(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 60
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSize:J

    .line 62
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSizes:[J

    aget-wide v0, v0, p1

    goto :goto_0
.end method

.method public getSampleSizes()[J
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSizes:[J

    return-object v0
.end method

.method public setSampleSize(J)V
    .locals 1
    .param p1, "sampleSize"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSize:J

    .line 55
    return-void
.end method

.method public setSampleSizes([J)V
    .locals 0
    .param p1, "sampleSizes"    # [J

    .prologue
    .line 80
    iput-object p1, p0, Lcom/coremedia/iso/boxes/SampleSizeBox;->sampleSizes:[J

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SampleSizeBox[sampleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";sampleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
