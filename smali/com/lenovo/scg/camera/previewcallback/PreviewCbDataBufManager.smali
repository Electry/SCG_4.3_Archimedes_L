.class public Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;
.super Ljava/lang/Object;
.source "PreviewCbDataBufManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewCbDataBufManager"


# instance fields
.field private mListToAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mListToDeal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mListToFill:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private m_nMaxBufferNum:I

.field private m_nPreviewFormat:I

.field private m_nPreviewHeight:I

.field private m_nPreviewWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "nMaxBufferNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToAll:Ljava/util/ArrayList;

    .line 39
    iput p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nMaxBufferNum:I

    .line 40
    iput v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewWidth:I

    .line 41
    iput v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewHeight:I

    .line 42
    iput v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewFormat:I

    .line 44
    return-void
.end method

.method private allocPreviewCbDataBuffer()V
    .locals 8

    .prologue
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 84
    .local v2, "start":J
    new-instance v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    iget v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewHeight:I

    iget v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewFormat:I

    invoke-direct {v0, v1, v4, v5}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;-><init>(III)V

    .line 85
    .local v0, "buf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v1, "PreviewCbDataBufManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allocPreviewCbDataBuffer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method private resizeBuffers()V
    .locals 5

    .prologue
    .line 48
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    monitor-enter v2

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToAll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    iget v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewHeight:I

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->ResizeBuffer(II)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    monitor-exit v2

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addBufferForDeal(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;)V
    .locals 3
    .param p1, "buf"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    monitor-enter v1

    .line 157
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->getBufferState()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    move-result-object v0

    sget-object v2, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inHAL:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    if-ne v0, v2, :cond_0

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inDeal:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->setBufferState(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;)V

    .line 163
    :cond_0
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fetchBufferForFill()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    .locals 8

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "buf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    monitor-enter v5

    .line 120
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToAll:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v6, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nMaxBufferNum:I

    if-ge v4, v6, :cond_0

    .line 121
    const-string v4, "PreviewCbDataBufManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nListSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m_nMaxBufferNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nMaxBufferNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->allocPreviewCbDataBuffer()V

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 126
    .local v3, "nListSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 127
    iget-object v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    move-object v1, v0

    .line 128
    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->getBufferState()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    move-result-object v4

    sget-object v6, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inFill:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    if-ne v4, v6, :cond_2

    .line 130
    iget-object v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 131
    sget-object v4, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inHAL:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->setBufferState(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;)V

    .line 139
    :cond_1
    const-string v4, "PreviewCbDataBufManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetchBufferForFill mListToFill.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    monitor-exit v5

    .line 141
    return-object v1

    .line 134
    :cond_2
    const/4 v1, 0x0

    .line 126
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "i":I
    .end local v3    # "nListSize":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public freeAllCallbackDataBuf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iput v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nMaxBufferNum:I

    .line 236
    iput v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewWidth:I

    .line 237
    iput v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewHeight:I

    .line 238
    iput v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewFormat:I

    .line 240
    return-void
.end method

.method public getBufferForDeal()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    .locals 5

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "buf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    monitor-enter v3

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    move-object v1, v0

    .line 182
    if-eqz v1, :cond_0

    .line 183
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    :cond_0
    monitor-exit v3

    .line 188
    return-object v1

    .line 187
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getLastBufferForDeal()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    .locals 7

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "buf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    iget-object v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    monitor-enter v4

    .line 195
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 196
    .local v2, "nSize":I
    if-lez v2, :cond_0

    .line 197
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    move-object v1, v0

    .line 198
    if-eqz v1, :cond_0

    .line 199
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    sget-object v3, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inHAL:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->setBufferState(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;)V

    .line 201
    const-string v3, "PreviewCbDataBufManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBufferForDeal mListToDeal.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    monitor-exit v4

    .line 205
    return-object v1

    .line 204
    .end local v2    # "nSize":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getPreviewFormat()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewFormat:I

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewWidth:I

    return v0
.end method

.method public hasBufferToDeal()Z
    .locals 3

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 171
    :goto_0
    monitor-exit v2

    .line 173
    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetBuffer()V
    .locals 4

    .prologue
    .line 209
    const-string v2, "PreviewCbDataBufManager"

    const-string/jumbo v3, "resetBuffer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToDeal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToAll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 213
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    .line 214
    .local v0, "buf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->getBufferState()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inHAL:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    if-ne v2, v3, :cond_0

    .line 215
    const-string v2, "PreviewCbDataBufManager"

    const-string/jumbo v3, "resetBuffer, delete buffer in hal"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->getBufferState()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inDeal:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    if-ne v2, v3, :cond_1

    .line 221
    sget-object v2, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inFill:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->setBufferState(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;)V

    .line 222
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    .end local v0    # "buf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    :cond_2
    return-void
.end method

.method public returnBufferForFill(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;)V
    .locals 2
    .param p1, "buf"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->mListToFill:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inFill:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->setBufferState(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;)V

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBufferSize(III)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "fmt"    # I

    .prologue
    .line 92
    const-string v0, "PreviewCbDataBufManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, setBufferSize, w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewHeight:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewFormat:I

    if-eq v0, p3, :cond_1

    .line 94
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewWidth:I

    .line 95
    iput p2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewHeight:I

    .line 96
    iput p3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->m_nPreviewFormat:I

    .line 97
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->resizeBuffers()V

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->resetBuffer()V

    .line 100
    return-void
.end method
