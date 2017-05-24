.class final Lledroid/nac/client/NacSocketByLocal;
.super Lledroid/nac/client/NacSocket;
.source "NacSocketByLocal.java"


# instance fields
.field private mCreateTime:J

.field private mName:Ljava/lang/String;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lledroid/nac/client/NacSocket;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    return-void
.end method

.method private initInternal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    :try_start_0
    iput-object p1, p0, Lledroid/nac/client/NacSocketByLocal;->mName:Ljava/lang/String;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lledroid/nac/client/NacSocketByLocal;->mCreateTime:J

    .line 19
    sget-boolean v2, Lledroid/nac/client/NacSocketByLocal;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 20
    const-string v2, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NacSocketByLocal] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Create: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lledroid/nac/client/NacSocketByLocal;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lledroid/nac/client/NacSocketByLocal;->mCreateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v2, p0, Lledroid/nac/client/NacSocketByLocal;->mName:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "address":Landroid/net/LocalSocketAddress;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    .line 25
    iget-object v2, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 26
    iget-object v2, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 27
    iget-object v2, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lledroid/nac/client/NacSocketByLocal;->onInitialize(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 29
    sget-boolean v2, Lledroid/nac/client/NacSocketByLocal;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 30
    const-string v2, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NacSocketByLocal] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lledroid/nac/client/NacSocketByLocal;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lledroid/nac/client/NacSocketByLocal;->mCreateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :cond_1
    :goto_0
    iget-object v2, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lledroid/nac/client/NacSocketByLocal;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 34
    const-string v2, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NacSocketByLocal] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Failed Connected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lledroid/nac/client/NacSocketByLocal;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lledroid/nac/client/NacSocketByLocal;->mCreateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_2
    invoke-virtual {p0}, Lledroid/nac/client/NacSocketByLocal;->onDestroy()V

    goto :goto_0

    .line 38
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected initialize()Z
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "nac_safe_server"

    invoke-direct {p0, v0}, Lledroid/nac/client/NacSocketByLocal;->initInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "nac_server"

    invoke-direct {p0, v0}, Lledroid/nac/client/NacSocketByLocal;->initInternal(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    iget-object v0, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    .line 54
    :try_start_0
    sget-boolean v0, Lledroid/nac/client/NacSocketByLocal;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "ledroid-nac"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NacSocketByLocal] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lledroid/nac/client/NacSocketByLocal;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lledroid/nac/client/NacSocketByLocal;->mCreateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iput-object v4, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    iput-object v4, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lledroid/nac/client/NacSocketByLocal;->mSocket:Landroid/net/LocalSocket;

    throw v0
.end method
