.class public Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
.super Ljava/lang/Object;
.source "PreviewTexDataBufManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBufferSize:I

.field private mBufferToPass1:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

.field private mBufferToPass2:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

.field private mBuffersNum:I

.field private m_bBufferAllocated:Z

.field private mlistToAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mlistToConTex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mlistToDealOut:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "PreviewTexDataBufManager"

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBuffersNum:I

    .line 43
    iput v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferSize:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToAll:Ljava/util/ArrayList;

    .line 48
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->m_bBufferAllocated:Z

    .line 49
    return-void
.end method


# virtual methods
.method public addBufferForConvertToTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V
    .locals 4
    .param p1, "buf"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v0, "PreviewTexDataBufManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addBufferForConvertToTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fetchBufferForDealOut()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    .locals 5

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    monitor-enter v3

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    move-object v1, v0

    .line 116
    :cond_0
    monitor-exit v3

    .line 117
    return-object v1

    .line 116
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public freeAllTexDataBuffer()V
    .locals 4

    .prologue
    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToAll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 172
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 173
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .line 174
    .local v0, "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->freeBuffer()V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass1:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass1:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->freeBuffer()V

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass2:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    if-eqz v3, :cond_2

    .line 181
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass2:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->freeBuffer()V

    .line 184
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 185
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToAll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 187
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBuffersNum:I

    .line 188
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferSize:I

    .line 189
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->m_bBufferAllocated:Z

    .line 190
    monitor-exit p0

    .line 191
    return-void

    .line 190
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getBufferForConvertToTexture()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    .locals 5

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    monitor-enter v3

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    move-object v1, v0

    .line 164
    :cond_0
    monitor-exit v3

    .line 165
    return-object v1

    .line 164
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getFirstBufferForConvertToTexture()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    .locals 5

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    monitor-enter v3

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    move-object v1, v0

    .line 152
    :cond_0
    monitor-exit v3

    .line 154
    return-object v1

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getFirstBufferToPass()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass1:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    return-object v0
.end method

.method public getSecondBufferToPass()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass2:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    return-object v0
.end method

.method public hasBufferForConvertToTexture()Z
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    monitor-enter v2

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 141
    :goto_0
    monitor-exit v2

    .line 142
    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasBufferToDealOut()Z
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    monitor-enter v2

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 104
    :goto_0
    monitor-exit v2

    .line 106
    return v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 104
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
    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToAll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    :try_start_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToConTex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 206
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 207
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 208
    return-void

    .line 202
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 207
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 206
    .restart local v0    # "i":I
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public returnBufferForDealOut(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V
    .locals 4
    .param p1, "buf"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v0, "PreviewTexDataBufManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returnBufferForDealOut "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBufferSize(III)V
    .locals 4
    .param p1, "nBufSize"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 69
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->m_bBufferAllocated:Z

    if-nez v2, :cond_2

    .line 70
    iput p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferSize:I

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBuffersNum:I

    if-ge v1, v2, :cond_0

    .line 72
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;-><init>(III)V

    .line 73
    .local v0, "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->allocBuffer()Z

    .line 74
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :cond_0
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    invoke-direct {v2, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;-><init>(III)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass1:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .line 78
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass1:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->allocBuffer()Z

    .line 80
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    invoke-direct {v2, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;-><init>(III)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass2:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .line 81
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass2:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->allocBuffer()Z

    .line 83
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->m_bBufferAllocated:Z

    .line 96
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->resetBuffer()V

    .line 97
    return-void

    .line 84
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferSize:I

    if-eq v2, p1, :cond_1

    .line 85
    iput p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferSize:I

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->waitForAllBuffersAvailable()V

    .line 88
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBuffersNum:I

    if-ge v1, v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .line 90
    .restart local v0    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    iget v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferSize:I

    invoke-virtual {v0, v2, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->resizeBuffer(III)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 92
    .end local v0    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass1:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    iget v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferSize:I

    invoke-virtual {v2, v3, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->resizeBuffer(III)Z

    .line 93
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferToPass2:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    iget v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBufferSize:I

    invoke-virtual {v2, v3, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->resizeBuffer(III)Z

    goto :goto_1
.end method

.method public waitForAllBuffersAvailable()V
    .locals 4

    .prologue
    .line 54
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mlistToDealOut:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->mBuffersNum:I

    if-ne v1, v2, :cond_0

    .line 64
    return-void

    .line 59
    :cond_0
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
