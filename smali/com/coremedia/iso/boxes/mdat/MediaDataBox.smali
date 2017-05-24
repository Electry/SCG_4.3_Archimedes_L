.class public final Lcom/coremedia/iso/boxes/mdat/MediaDataBox;
.super Ljava/lang/Object;
.source "MediaDataBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final BUFFER_SIZE:I = 0xa00000

.field private static LOG:Ljava/util/logging/Logger; = null

.field public static final TYPE:Ljava/lang/String; = "mdat"


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private content:Ljava/nio/ByteBuffer;

.field private contentSize:J

.field private fileChannel:Ljava/nio/channels/FileChannel;

.field header:Ljava/nio/ByteBuffer;

.field parent:Lcom/coremedia/iso/boxes/ContainerBox;

.field private startPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->$assertionsDisabled:Z

    .line 50
    const-class v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->LOG:Ljava/util/logging/Logger;

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->cache:Ljava/util/Map;

    return-void
.end method

.method private checkStillOk()Z
    .locals 8

    .prologue
    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-wide v4, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->startPosition:J

    iget-object v3, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 118
    iget-object v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 119
    .local v1, "h2":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 120
    iget-object v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 121
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 122
    sget-boolean v2, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "It seems that the content I want to read has already been overwritten."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "h2":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    const/4 v2, 0x0

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return v2

    .line 123
    .restart local v1    # "h2":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static transfer(Ljava/nio/channels/FileChannel;JJLjava/nio/channels/WritableByteChannel;)V
    .locals 13
    .param p0, "from"    # Ljava/nio/channels/FileChannel;
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "to"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const-wide/32 v8, 0x3ff8000    # 3.31399947E-316

    .line 90
    .local v8, "maxCount":J
    const-wide/16 v10, 0x0

    .line 91
    .local v10, "offset":J
    :goto_0
    cmp-long v0, v10, p3

    if-gez v0, :cond_0

    .line 92
    add-long v2, p1, v10

    sub-long v0, p3, v10

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    add-long/2addr v10, v0

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 8
    .param p1, "writableByteChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    .line 98
    sget-boolean v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->checkStillOk()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->startPosition:J

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->contentSize:J

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->transfer(Ljava/nio/channels/FileChannel;JJLjava/nio/channels/WritableByteChannel;)V

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 102
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 103
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->content:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0
.end method

.method public declared-synchronized getContent(JI)Ljava/nio/ByteBuffer;
    .locals 17
    .param p1, "offset"    # J
    .param p3, "length"    # I

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->cache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 155
    .local v10, "chacheEntryOffset":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->cache:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    .line 157
    .local v8, "cacheEntry":Ljava/nio/ByteBuffer;
    if-eqz v8, :cond_0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move/from16 v0, p3

    int-to-long v4, v0

    add-long v4, v4, p1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 159
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p1, v2

    long-to-int v2, v2

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 161
    .local v9, "cachedSample":Ljava/nio/ByteBuffer;
    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v10    # "chacheEntryOffset":Ljava/lang/Long;
    :goto_0
    monitor-exit p0

    return-object v9

    .line 170
    .end local v8    # "cacheEntry":Ljava/nio/ByteBuffer;
    .end local v9    # "cachedSample":Ljava/nio/ByteBuffer;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->startPosition:J

    add-long v4, v4, p1

    const-wide/32 v6, 0xa00000

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->contentSize:J

    sub-long v14, v14, p1

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 177
    .restart local v8    # "cacheEntry":Ljava/nio/ByteBuffer;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->cache:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 180
    .restart local v9    # "cachedSample":Ljava/nio/ByteBuffer;
    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 154
    .end local v8    # "cacheEntry":Ljava/nio/ByteBuffer;
    .end local v9    # "cachedSample":Ljava/nio/ByteBuffer;
    .end local v12    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 171
    .restart local v12    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .line 172
    .local v11, "e1":Ljava/io/IOException;
    :try_start_3
    sget-object v2, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Even mapping just 10MB of the source file into the memory failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 173
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Delayed reading of mdat content failed. Make sure not to close the FileChannel that has been used to create the IsoFile!"

    invoke-direct {v2, v3, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getHeader()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 133
    iget-object v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v0, v2

    .line 134
    .local v0, "size":J
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->contentSize:J

    add-long/2addr v0, v2

    .line 135
    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "mdat"

    return-object v0
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 5
    .param p1, "readableByteChannel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "contentSize"    # J
    .param p5, "boxParser"    # Lcom/coremedia/iso/BoxParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iput-object p2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    .line 140
    iput-wide p3, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->contentSize:J

    .line 142
    instance-of v0, p1, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    sget v0, Lcom/googlecode/mp4parser/AbstractBox;->MEM_MAP_THRESHOLD:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    move-object v0, p1

    .line 143
    check-cast v0, Ljava/nio/channels/FileChannel;

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object v0, p1

    .line 144
    check-cast v0, Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->startPosition:J

    move-object v0, p1

    .line 145
    check-cast v0, Ljava/nio/channels/FileChannel;

    check-cast p1, Ljava/nio/channels/FileChannel;

    .end local p1    # "readableByteChannel":Ljava/nio/channels/ReadableByteChannel;
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long/2addr v2, p3

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 150
    :goto_0
    return-void

    .line 147
    .restart local p1    # "readableByteChannel":Ljava/nio/channels/ReadableByteChannel;
    :cond_0
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/ChannelHelper;->readFully(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->content:Ljava/nio/ByteBuffer;

    .line 148
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->cache:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->content:Ljava/nio/ByteBuffer;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
    .locals 0
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/ContainerBox;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    .line 79
    return-void
.end method
