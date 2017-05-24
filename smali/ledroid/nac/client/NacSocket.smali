.class abstract Lledroid/nac/client/NacSocket;
.super Ljava/lang/Object;
.source "NacSocket.java"

# interfaces
.implements Lledroid/nac/client/RootSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/nac/client/NacSocket$NacResponse;
    }
.end annotation


# static fields
.field private static final AVAILABLE_WAY:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final AVAILABLE_WAY_IP:I = 0x1

.field private static final AVAILABLE_WAY_LOCAL:I = 0x2

.field private static final AVAILABLE_WAY_NO_WAY:I = -0x1

.field private static final AVAILABLE_WAY_TRY:I = 0x0

.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "ledroid-nac"

.field protected static final TIME_OUT_FOR_SOCKET:I = 0x3e8


# instance fields
.field private mReaderLock:Ljava/lang/Object;

.field private mSocketReader:Ljava/io/BufferedReader;

.field private mSocketWriter:Ljava/io/Writer;

.field private mWriterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lledroid/nac/utils/DebugConfig;->isDebugable()Z

    move-result v0

    sput-boolean v0, Lledroid/nac/client/NacSocket;->DEBUG:Z

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lledroid/nac/client/NacSocket;->AVAILABLE_WAY:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lledroid/nac/client/NacSocket;->mReaderLock:Ljava/lang/Object;

    .line 30
    iput-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketReader:Ljava/io/BufferedReader;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lledroid/nac/client/NacSocket;->mWriterLock:Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketWriter:Ljava/io/Writer;

    .line 228
    return-void
.end method

.method protected static newNacSocket()Lledroid/nac/client/NacSocket;
    .locals 4

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "nacSocket":Lledroid/nac/client/NacSocket;
    sget-object v1, Lledroid/nac/client/NacSocket;->AVAILABLE_WAY:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    sget-boolean v1, Lledroid/nac/client/NacSocket;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 129
    const-string v2, "ledroid-nac"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NacSocket] Create: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    return-object v0

    .line 111
    :pswitch_0
    new-instance v0, Lledroid/nac/client/NacSocketByIP;

    .end local v0    # "nacSocket":Lledroid/nac/client/NacSocket;
    invoke-direct {v0}, Lledroid/nac/client/NacSocketByIP;-><init>()V

    .line 112
    .restart local v0    # "nacSocket":Lledroid/nac/client/NacSocket;
    invoke-virtual {v0}, Lledroid/nac/client/NacSocket;->initialize()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :pswitch_1
    new-instance v0, Lledroid/nac/client/NacSocketByLocal;

    .end local v0    # "nacSocket":Lledroid/nac/client/NacSocket;
    invoke-direct {v0}, Lledroid/nac/client/NacSocketByLocal;-><init>()V

    .line 118
    .restart local v0    # "nacSocket":Lledroid/nac/client/NacSocket;
    invoke-virtual {v0}, Lledroid/nac/client/NacSocket;->initialize()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-static {}, Lledroid/nac/client/NacSocket;->tryToGetNacSocket()Lledroid/nac/client/NacSocket;

    move-result-object v0

    .line 124
    goto :goto_0

    .line 129
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static tryToGetNacSocket()Lledroid/nac/client/NacSocket;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lledroid/nac/client/NacSocketByLocal;

    invoke-direct {v0}, Lledroid/nac/client/NacSocketByLocal;-><init>()V

    .line 138
    .local v0, "nacSocket":Lledroid/nac/client/NacSocket;
    invoke-virtual {v0}, Lledroid/nac/client/NacSocket;->initialize()Z

    move-result v1

    if-nez v1, :cond_4

    .line 139
    sget-boolean v1, Lledroid/nac/client/NacSocket;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "ledroid-nac"

    const-string v2, "[NacSocket] Try 1 Failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    new-instance v0, Lledroid/nac/client/NacSocketByIP;

    .end local v0    # "nacSocket":Lledroid/nac/client/NacSocket;
    invoke-direct {v0}, Lledroid/nac/client/NacSocketByIP;-><init>()V

    .line 144
    .restart local v0    # "nacSocket":Lledroid/nac/client/NacSocket;
    invoke-virtual {v0}, Lledroid/nac/client/NacSocket;->initialize()Z

    move-result v1

    if-nez v1, :cond_3

    .line 145
    sget-boolean v1, Lledroid/nac/client/NacSocket;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 146
    const-string v1, "ledroid-nac"

    const-string v2, "[NacSocket] Try 2 Failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    const/4 v0, 0x0

    .line 160
    :cond_2
    :goto_0
    return-object v0

    .line 151
    :cond_3
    sget-boolean v1, Lledroid/nac/client/NacSocket;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 152
    const-string v1, "ledroid-nac"

    const-string v2, "[NacSocket] Try 2 Succeeded."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v1, Lledroid/nac/client/NacSocket;->AVAILABLE_WAY:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 156
    :cond_4
    sget-boolean v1, Lledroid/nac/client/NacSocket;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 157
    const-string v1, "ledroid-nac"

    const-string v2, "[NacSocket] Try 1 Succeeded."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v1, Lledroid/nac/client/NacSocket;->AVAILABLE_WAY:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 5

    .prologue
    .line 177
    iget-object v2, p0, Lledroid/nac/client/NacSocket;->mWriterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 178
    :try_start_0
    iget-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 180
    :try_start_1
    iget-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketWriter:Ljava/io/Writer;

    .line 188
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    iget-object v2, p0, Lledroid/nac/client/NacSocket;->mReaderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 190
    :try_start_3
    iget-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketReader:Ljava/io/BufferedReader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 192
    :try_start_4
    iget-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    :goto_1
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketReader:Ljava/io/BufferedReader;

    .line 197
    :cond_1
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 198
    invoke-virtual {p0}, Lledroid/nac/client/NacSocket;->onDestroy()V

    .line 199
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v1, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NacSocket] Close error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 183
    :catch_1
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string v1, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NacSocket] Close error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    .line 193
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 165
    sget-boolean v0, Lledroid/nac/client/NacSocket;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "ledroid-nac"

    const-string v1, "[NacSocket] finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    invoke-virtual {p0}, Lledroid/nac/client/NacSocket;->destroy()V

    .line 170
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 171
    return-void
.end method

.method public getRootSocketResponse()Lledroid/nac/client/RootSocketResponse;
    .locals 9

    .prologue
    .line 203
    const/4 v5, 0x0

    .line 204
    .local v5, "nacResponse":Lledroid/nac/client/NacSocket$NacResponse;
    const/4 v4, 0x0

    .line 205
    .local v4, "line":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 206
    .local v0, "enterTime":J
    const-wide/16 v2, 0x0

    .line 207
    .local v2, "escape":J
    :goto_0
    if-nez v4, :cond_0

    .line 208
    invoke-virtual {p0}, Lledroid/nac/client/NacSocket;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 209
    if-eqz v4, :cond_1

    .line 210
    new-instance v5, Lledroid/nac/client/NacSocket$NacResponse;

    .end local v5    # "nacResponse":Lledroid/nac/client/NacSocket$NacResponse;
    invoke-direct {v5, v4}, Lledroid/nac/client/NacSocket$NacResponse;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v5    # "nacResponse":Lledroid/nac/client/NacSocket$NacResponse;
    :cond_0
    :goto_1
    return-object v5

    .line 214
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 215
    const-wide/16 v6, 0x3e8

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 216
    const-string v6, "ledroid-nac"

    const-string v7, "[NacSocket] Root Server no response for a long time"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    :cond_2
    sget-boolean v6, Lledroid/nac/client/NacSocket;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 220
    const-string v6, "ledroid-nac"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NacSocket] Waiting ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method protected abstract initialize()Z
.end method

.method protected abstract onDestroy()V
.end method

.method protected final onInitialize(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 89
    iget-object v2, p0, Lledroid/nac/client/NacSocket;->mReaderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketReader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    iget-object v2, p0, Lledroid/nac/client/NacSocket;->mWriterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 99
    :try_start_2
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v1, p2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketWriter:Ljava/io/Writer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public readLine()Ljava/lang/String;
    .locals 9

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "line":Ljava/lang/String;
    iget-object v6, p0, Lledroid/nac/client/NacSocket;->mReaderLock:Ljava/lang/Object;

    monitor-enter v6

    .line 39
    :try_start_0
    iget-object v5, p0, Lledroid/nac/client/NacSocket;->mSocketReader:Ljava/io/BufferedReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 40
    const/4 v3, 0x0

    .local v3, "tryCnt":I
    move v4, v3

    .line 41
    .end local v3    # "tryCnt":I
    .local v4, "tryCnt":I
    :goto_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tryCnt":I
    .restart local v3    # "tryCnt":I
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 43
    :try_start_1
    iget-object v5, p0, Lledroid/nac/client/NacSocket;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 44
    sget-boolean v5, Lledroid/nac/client/NacSocket;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 45
    const-string v5, "ledroid-nac"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NacSocket] Read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v3    # "tryCnt":I
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v6

    .line 61
    return-object v1

    .line 48
    .restart local v3    # "tryCnt":I
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v5, "Try again"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    .line 51
    .end local v3    # "tryCnt":I
    .restart local v4    # "tryCnt":I
    goto :goto_0

    .line 53
    .end local v4    # "tryCnt":I
    .restart local v3    # "tryCnt":I
    :cond_1
    sget-boolean v5, Lledroid/nac/client/NacSocket;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 54
    const-string v5, "ledroid-nac"

    const-string v7, "[NacSocket] Read Response Error: "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "tryCnt":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public write(Ljava/lang/String;)V
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v2, p0, Lledroid/nac/client/NacSocket;->mWriterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 69
    :try_start_1
    iget-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " &"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lledroid/nac/client/NacSocket;->mSocketWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_0
    :try_start_2
    sget-boolean v1, Lledroid/nac/client/NacSocket;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NacSocket] Exe: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " &"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    monitor-exit v2

    .line 79
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NacSocket] Exe error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
