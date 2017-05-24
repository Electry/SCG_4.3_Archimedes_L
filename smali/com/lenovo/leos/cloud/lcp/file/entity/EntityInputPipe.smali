.class public Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;
.super Ljava/lang/Object;
.source "EntityInputPipe.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "FileInputPipe"


# instance fields
.field private entity:Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
            "<+",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lastInputStream:Ljava/io/InputStream;

.field private length:J

.field private maxPointer:J

.field private progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private streamPointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->$assertionsDisabled:Z

    .line 14
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
            "<+",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<+Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;>;"
    const-wide/16 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->length:J

    .line 26
    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->streamPointer:J

    .line 27
    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->maxPointer:J

    .line 18
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->entity:Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    .line 21
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->length:J

    .line 22
    return-void
.end method

.method private notifyFinish()V
    .locals 4

    .prologue
    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v2, :cond_0

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FileInputPipe"

    const-string v3, "Unexcepted Exception in the progressListener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyProgress(JI)V
    .locals 7
    .param p1, "currentOffset"    # J
    .param p3, "size"    # I

    .prologue
    .line 36
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->maxPointer:J

    cmp-long v1, v4, p1

    if-lez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v6, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->lastInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_2

    .line 43
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v1, v6}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    .line 46
    :cond_2
    int-to-long v4, p3

    add-long v2, p1, v4

    .line 47
    .local v2, "pointerAfterRead":J
    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->length:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 48
    const-string v1, "FileInputPipe"

    const-string/jumbo v4, "pointerAfterRead should less than leght, there must be some problem"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->length:J

    invoke-interface/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v2    # "pointerAfterRead":J
    .end local v6    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FileInputPipe"

    const-string v4, "Unexcepted Exception in the progressListener"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->length:J

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->entity:Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 122
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->lastInputStream:Ljava/io/InputStream;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 123
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read([BJI)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offsetInPipe"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->notifyProgress(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->lastInputStream:Ljava/io/InputStream;

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->streamPointer:J

    cmp-long v6, v6, p2

    if-lez v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/Closeable;

    const/4 v7, 0x0

    .line 74
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->lastInputStream:Ljava/io/InputStream;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 75
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->entity:Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    invoke-interface {v6}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->inputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->lastInputStream:Ljava/io/InputStream;

    .line 76
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->streamPointer:J

    .line 79
    :cond_1
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->streamPointer:J

    sub-long v4, p2, v6

    .line 80
    .local v4, "toSkip":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 81
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->lastInputStream:Ljava/io/InputStream;

    invoke-virtual {v6, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 82
    .local v2, "realSkiped":J
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->streamPointer:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->streamPointer:J

    .line 85
    .end local v2    # "realSkiped":J
    :cond_2
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->lastInputStream:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 86
    .local v1, "readSize":I
    if-lez v1, :cond_4

    .line 87
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->streamPointer:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->streamPointer:J

    .line 94
    :goto_0
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->maxPointer:J

    iget-wide v8, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->streamPointer:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 95
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->streamPointer:J

    iput-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->maxPointer:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :cond_3
    monitor-exit p0

    return v1

    .line 88
    :cond_4
    const/4 v6, 0x1

    :try_start_2
    new-array v6, v6, [Ljava/io/Closeable;

    const/4 v7, 0x0

    .line 89
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->lastInputStream:Ljava/io/InputStream;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 90
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->lastInputStream:Ljava/io/InputStream;

    .line 91
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->notifyFinish()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 99
    .end local v1    # "readSize":I
    .end local v4    # "toSkip":J
    :catch_0
    move-exception v0

    .local v0, "ioe":Ljava/io/IOException;
    const/4 v6, 0x1

    :try_start_3
    new-array v6, v6, [Ljava/io/Closeable;

    const/4 v7, 0x0

    .line 100
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->lastInputStream:Ljava/io/InputStream;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 101
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->lastInputStream:Ljava/io/InputStream;

    .line 102
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 32
    return-void
.end method
