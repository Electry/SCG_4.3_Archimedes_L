.class Lledroid/nac/client/RootSocketClient$1;
.super Ljava/lang/Object;
.source "RootSocketClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/nac/client/RootSocketClient;
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
        "Lledroid/nac/client/RootSocketResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lledroid/nac/client/RootSocketClient;


# direct methods
.method constructor <init>(Lledroid/nac/client/RootSocketClient;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lledroid/nac/client/RootSocketClient$1;->this$0:Lledroid/nac/client/RootSocketClient;

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
    .line 132
    invoke-virtual {p0}, Lledroid/nac/client/RootSocketClient$1;->call()Lledroid/nac/client/RootSocketResponse;

    move-result-object v0

    return-object v0
.end method

.method public call()Lledroid/nac/client/RootSocketResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lledroid/nac/client/RootSocketClient$1;->this$0:Lledroid/nac/client/RootSocketClient;

    # getter for: Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;
    invoke-static {v0}, Lledroid/nac/client/RootSocketClient;->access$000(Lledroid/nac/client/RootSocketClient;)Lledroid/nac/client/RootSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lledroid/nac/client/RootSocketClient$1;->this$0:Lledroid/nac/client/RootSocketClient;

    # getter for: Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;
    invoke-static {v0}, Lledroid/nac/client/RootSocketClient;->access$000(Lledroid/nac/client/RootSocketClient;)Lledroid/nac/client/RootSocket;

    move-result-object v0

    invoke-interface {v0}, Lledroid/nac/client/RootSocket;->getRootSocketResponse()Lledroid/nac/client/RootSocketResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
