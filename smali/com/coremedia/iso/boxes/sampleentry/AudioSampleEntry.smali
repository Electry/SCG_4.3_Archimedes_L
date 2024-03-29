.class public Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "AudioSampleEntry.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/ContainerBox;


# static fields
.field public static final TYPE1:Ljava/lang/String; = "samr"

.field public static final TYPE10:Ljava/lang/String; = "mlpa"

.field public static final TYPE11:Ljava/lang/String; = "dtsl"

.field public static final TYPE12:Ljava/lang/String; = "dtsh"

.field public static final TYPE13:Ljava/lang/String; = "dtse"

.field public static final TYPE2:Ljava/lang/String; = "sawb"

.field public static final TYPE3:Ljava/lang/String; = "mp4a"

.field public static final TYPE4:Ljava/lang/String; = "drms"

.field public static final TYPE5:Ljava/lang/String; = "alac"

.field public static final TYPE7:Ljava/lang/String; = "owma"

.field public static final TYPE8:Ljava/lang/String; = "ac-3"

.field public static final TYPE9:Ljava/lang/String; = "ec-3"

.field public static final TYPE_ENCRYPTED:Ljava/lang/String; = "enca"


# instance fields
.field private boxParser:Lcom/coremedia/iso/BoxParser;

.field private bytesPerFrame:J

.field private bytesPerPacket:J

.field private bytesPerSample:J

.field private channelCount:I

.field private compressionId:I

.field private packetSize:I

.field private reserved1:I

.field private reserved2:J

.field private sampleRate:J

.field private sampleSize:I

.field private samplesPerPacket:J

.field private soundVersion:I

.field private soundVersion2Data:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v3, 0x14

    .line 183
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 186
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    .line 189
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    .line 190
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    .line 192
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    .line 193
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    .line 195
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    .line 197
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    .line 199
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    .line 200
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->type:Ljava/lang/String;

    const-string/jumbo v1, "mlpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    .line 205
    :cond_0
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    if-lez v0, :cond_1

    .line 206
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    .line 207
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    .line 208
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    .line 209
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    .line 211
    :cond_1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 213
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    .line 214
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 216
    :cond_2
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 218
    return-void
.end method

.method public getBytesPerFrame()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    return-wide v0
.end method

.method public getBytesPerPacket()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    return-wide v0
.end method

.method public getBytesPerSample()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    return-wide v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    return v0
.end method

.method public getCompressionId()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 252
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 253
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 254
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 255
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 256
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 257
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 258
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 260
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->type:Ljava/lang/String;

    const-string/jumbo v1, "mlpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 266
    :goto_0
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    if-lez v0, :cond_0

    .line 267
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 268
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 269
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 270
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 273
    :cond_0
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 274
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 276
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 277
    return-void

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0
.end method

.method protected getContentSize()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 223
    const-wide/16 v2, 0x1c

    .line 224
    .local v2, "contentSize":J
    iget v4, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    if-lez v4, :cond_1

    const-wide/16 v4, 0x10

    :goto_0
    add-long/2addr v2, v4

    .line 225
    iget v4, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-wide/16 v6, 0x14

    :cond_0
    add-long/2addr v2, v6

    .line 226
    iget-object v4, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 227
    .local v0, "boxe":Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1

    .end local v0    # "boxe":Lcom/coremedia/iso/boxes/Box;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    move-wide v4, v6

    .line 224
    goto :goto_0

    .line 229
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-wide v2
.end method

.method public getPacketSize()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    return v0
.end method

.method public getReserved1()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    return v0
.end method

.method public getReserved2()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    return-wide v0
.end method

.method public getSampleRate()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    return-wide v0
.end method

.method public getSampleSize()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    return v0
.end method

.method public getSamplesPerPacket()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    return-wide v0
.end method

.method public getSoundVersion()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    return v0
.end method

.method public getSoundVersion2Data()[B
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    return-object v0
.end method

.method public setBoxParser(Lcom/coremedia/iso/BoxParser;)V
    .locals 0
    .param p1, "boxParser"    # Lcom/coremedia/iso/BoxParser;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 179
    return-void
.end method

.method public setBytesPerFrame(J)V
    .locals 1
    .param p1, "bytesPerFrame"    # J

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    .line 159
    return-void
.end method

.method public setBytesPerPacket(J)V
    .locals 1
    .param p1, "bytesPerPacket"    # J

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    .line 155
    return-void
.end method

.method public setBytesPerSample(J)V
    .locals 1
    .param p1, "bytesPerSample"    # J

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    .line 163
    return-void
.end method

.method public setChannelCount(I)V
    .locals 0
    .param p1, "channelCount"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    .line 127
    return-void
.end method

.method public setCompressionId(I)V
    .locals 0
    .param p1, "compressionId"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    .line 143
    return-void
.end method

.method public setPacketSize(I)V
    .locals 0
    .param p1, "packetSize"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    .line 147
    return-void
.end method

.method public setReserved1(I)V
    .locals 0
    .param p1, "reserved1"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    .line 167
    return-void
.end method

.method public setReserved2(J)V
    .locals 1
    .param p1, "reserved2"    # J

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    .line 171
    return-void
.end method

.method public setSampleRate(J)V
    .locals 1
    .param p1, "sampleRate"    # J

    .prologue
    .line 134
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    .line 135
    return-void
.end method

.method public setSampleSize(I)V
    .locals 0
    .param p1, "sampleSize"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    .line 131
    return-void
.end method

.method public setSamplesPerPacket(J)V
    .locals 1
    .param p1, "samplesPerPacket"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    .line 151
    return-void
.end method

.method public setSoundVersion(I)V
    .locals 0
    .param p1, "soundVersion"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    .line 139
    return-void
.end method

.method public setSoundVersion2Data([B)V
    .locals 0
    .param p1, "soundVersion2Data"    # [B

    .prologue
    .line 174
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSampleEntry{bytesPerSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPerFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPerPacket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplesPerPacket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packetSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compressionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", soundVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boxes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
