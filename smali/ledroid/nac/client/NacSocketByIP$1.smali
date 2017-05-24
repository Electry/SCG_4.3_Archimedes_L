.class Lledroid/nac/client/NacSocketByIP$1;
.super Ljava/lang/Object;
.source "NacSocketByIP.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/nac/client/NacSocketByIP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/net/Socket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lledroid/nac/client/NacSocketByIP;


# direct methods
.method constructor <init>(Lledroid/nac/client/NacSocketByIP;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lledroid/nac/client/NacSocketByIP$1;->this$0:Lledroid/nac/client/NacSocketByIP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lledroid/nac/client/NacSocketByIP$1;->call()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 22
    .local v1, "s":Ljava/net/Socket;
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    const-string v3, "127.0.0.1"

    const/16 v4, 0x7531

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v1    # "s":Ljava/net/Socket;
    .local v2, "s":Ljava/net/Socket;
    const/16 v3, 0x3e8

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 24
    iget-object v3, p0, Lledroid/nac/client/NacSocketByIP$1;->this$0:Lledroid/nac/client/NacSocketByIP;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lledroid/nac/client/NacSocketByIP;->onInitialize(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 40
    .end local v2    # "s":Ljava/net/Socket;
    .restart local v1    # "s":Ljava/net/Socket;
    :goto_0
    return-object v1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 32
    :cond_0
    :goto_2
    const/4 v1, 0x0

    .line 34
    :cond_1
    sget-boolean v3, Lledroid/nac/client/NacSocket;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 35
    const-string v3, "ledroid-nac"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NacSocketByIp] Create Socket Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_2
    const-string v3, "ledroid-nac"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :catch_1
    move-exception v3

    goto :goto_2

    .line 25
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "s":Ljava/net/Socket;
    .restart local v2    # "s":Ljava/net/Socket;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "s":Ljava/net/Socket;
    .restart local v1    # "s":Ljava/net/Socket;
    goto :goto_1
.end method
