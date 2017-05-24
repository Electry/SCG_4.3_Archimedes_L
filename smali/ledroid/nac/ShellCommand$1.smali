.class Lledroid/nac/ShellCommand$1;
.super Ljava/lang/Object;
.source "ShellCommand.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/nac/ShellCommand;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mSuccess:Z

.field final synthetic this$0:Lledroid/nac/ShellCommand;


# direct methods
.method constructor <init>(Lledroid/nac/ShellCommand;)V
    .locals 1

    .prologue
    .line 322
    iput-object p1, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lledroid/nac/ShellCommand$1;->mSuccess:Z

    return-void
.end method

.method private handleSocketCommandResponse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    :cond_0
    :goto_0
    iget-object v1, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    invoke-virtual {v1}, Lledroid/nac/ShellCommand;->hasExecError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    :cond_1
    :goto_1
    iget-object v1, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # invokes: Lledroid/nac/ShellCommand;->destoryForSocketResponseIOStream()V
    invoke-static {v1}, Lledroid/nac/ShellCommand;->access$400(Lledroid/nac/ShellCommand;)V

    .line 377
    return-void

    .line 355
    :cond_2
    iget-object v1, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # invokes: Lledroid/nac/ShellCommand;->readCommandResponse()Ljava/lang/String;
    invoke-static {v1}, Lledroid/nac/ShellCommand;->access$200(Lledroid/nac/ShellCommand;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 357
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 359
    :cond_3
    const-string v1, "Started"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    # getter for: Lledroid/nac/ShellCommand;->DEBUG:Z
    invoke-static {}, Lledroid/nac/ShellCommand;->access$000()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    const-string v1, "ledroid-nac"

    const-string v2, "====> Response Reply Started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_4
    iget-object v1, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseWaitingId:I
    invoke-static {v1}, Lledroid/nac/ShellCommand;->access$100(Lledroid/nac/ShellCommand;)I

    move-result v1

    invoke-direct {p0, v1}, Lledroid/nac/ShellCommand$1;->shellCommandResponseStarted(I)V

    goto :goto_0

    .line 365
    :cond_5
    const-string v1, "Finished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 366
    # getter for: Lledroid/nac/ShellCommand;->DEBUG:Z
    invoke-static {}, Lledroid/nac/ShellCommand;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    const-string v1, "ledroid-nac"

    const-string v2, "====> Response Reply Finished"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 372
    :cond_6
    iget-object v1, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseCallback:Lledroid/nac/ShellCommand$ShellCommandResponse;
    invoke-static {v1}, Lledroid/nac/ShellCommand;->access$300(Lledroid/nac/ShellCommand;)Lledroid/nac/ShellCommand$ShellCommandResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseWaitingId:I
    invoke-static {v1}, Lledroid/nac/ShellCommand;->access$100(Lledroid/nac/ShellCommand;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lledroid/nac/ShellCommand$1;->shellCommandResponse(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private shellCommandResponse(ILjava/lang/String;)V
    .locals 1
    .param p1, "exeId"    # I
    .param p2, "reply"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v0, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseCallback:Lledroid/nac/ShellCommand$ShellCommandResponse;
    invoke-static {v0}, Lledroid/nac/ShellCommand;->access$300(Lledroid/nac/ShellCommand;)Lledroid/nac/ShellCommand$ShellCommandResponse;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lledroid/nac/ShellCommand$ShellCommandResponse;->onShellCommandResponse(ILjava/lang/String;)V

    .line 381
    return-void
.end method

.method private shellCommandResponseFinished(I)V
    .locals 1
    .param p1, "exeId"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseCallback:Lledroid/nac/ShellCommand$ShellCommandResponse;
    invoke-static {v0}, Lledroid/nac/ShellCommand;->access$300(Lledroid/nac/ShellCommand;)Lledroid/nac/ShellCommand$ShellCommandResponse;

    move-result-object v0

    instance-of v0, v0, Lledroid/nac/ShellCommand$ShellCommandResponseEx;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseCallback:Lledroid/nac/ShellCommand$ShellCommandResponse;
    invoke-static {v0}, Lledroid/nac/ShellCommand;->access$300(Lledroid/nac/ShellCommand;)Lledroid/nac/ShellCommand$ShellCommandResponse;

    move-result-object v0

    check-cast v0, Lledroid/nac/ShellCommand$ShellCommandResponseEx;

    invoke-interface {v0, p1}, Lledroid/nac/ShellCommand$ShellCommandResponseEx;->onShellCommandResponseFinished(I)V

    .line 395
    :cond_0
    return-void
.end method

.method private shellCommandResponseStarted(I)V
    .locals 1
    .param p1, "exeId"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseCallback:Lledroid/nac/ShellCommand$ShellCommandResponse;
    invoke-static {v0}, Lledroid/nac/ShellCommand;->access$300(Lledroid/nac/ShellCommand;)Lledroid/nac/ShellCommand$ShellCommandResponse;

    move-result-object v0

    instance-of v0, v0, Lledroid/nac/ShellCommand$ShellCommandResponseEx;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseCallback:Lledroid/nac/ShellCommand$ShellCommandResponse;
    invoke-static {v0}, Lledroid/nac/ShellCommand;->access$300(Lledroid/nac/ShellCommand;)Lledroid/nac/ShellCommand$ShellCommandResponse;

    move-result-object v0

    check-cast v0, Lledroid/nac/ShellCommand$ShellCommandResponseEx;

    invoke-interface {v0, p1}, Lledroid/nac/ShellCommand$ShellCommandResponseEx;->onShellCommandResponseStarted(I)V

    .line 388
    :cond_0
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v1, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    invoke-virtual {v1}, Lledroid/nac/ShellCommand;->hasExecError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-boolean v1, p0, Lledroid/nac/ShellCommand$1;->mSuccess:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 345
    :goto_0
    return-object v1

    .line 332
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lledroid/nac/ShellCommand$1;->handleSocketCommandResponse()V

    .line 333
    const/4 v1, 0x1

    iput-boolean v1, p0, Lledroid/nac/ShellCommand$1;->mSuccess:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    # getter for: Lledroid/nac/ShellCommand;->DEBUG:Z
    invoke-static {}, Lledroid/nac/ShellCommand;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    const-string v1, "ledroid-nac"

    const-string v2, "[ShellCommand] Response End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v1, "ledroid-nac"

    const-string v2, "[ShellCommand] Shell command task finished"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    iget-object v1, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseWaitingId:I
    invoke-static {v1}, Lledroid/nac/ShellCommand;->access$100(Lledroid/nac/ShellCommand;)I

    move-result v1

    invoke-direct {p0, v1}, Lledroid/nac/ShellCommand$1;->shellCommandResponseFinished(I)V

    .line 345
    :goto_1
    iget-boolean v1, p0, Lledroid/nac/ShellCommand$1;->mSuccess:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    # getter for: Lledroid/nac/ShellCommand;->DEBUG:Z
    invoke-static {}, Lledroid/nac/ShellCommand;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    const-string v1, "ledroid-nac"

    const-string v2, "[ShellCommand] Response End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v1, "ledroid-nac"

    const-string v2, "[ShellCommand] Shell command task finished"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_2
    iget-object v1, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseWaitingId:I
    invoke-static {v1}, Lledroid/nac/ShellCommand;->access$100(Lledroid/nac/ShellCommand;)I

    move-result v1

    invoke-direct {p0, v1}, Lledroid/nac/ShellCommand$1;->shellCommandResponseFinished(I)V

    goto :goto_1

    .line 336
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    # getter for: Lledroid/nac/ShellCommand;->DEBUG:Z
    invoke-static {}, Lledroid/nac/ShellCommand;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 340
    const-string v1, "ledroid-nac"

    const-string v2, "[ShellCommand] Response End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v1, "ledroid-nac"

    const-string v2, "[ShellCommand] Shell command task finished"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_3
    iget-object v1, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseWaitingId:I
    invoke-static {v1}, Lledroid/nac/ShellCommand;->access$100(Lledroid/nac/ShellCommand;)I

    move-result v1

    invoke-direct {p0, v1}, Lledroid/nac/ShellCommand$1;->shellCommandResponseFinished(I)V

    goto :goto_1

    .line 339
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    # getter for: Lledroid/nac/ShellCommand;->DEBUG:Z
    invoke-static {}, Lledroid/nac/ShellCommand;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 340
    const-string v2, "ledroid-nac"

    const-string v3, "[ShellCommand] Response End"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v2, "ledroid-nac"

    const-string v3, "[ShellCommand] Shell command task finished"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_4
    iget-object v2, p0, Lledroid/nac/ShellCommand$1;->this$0:Lledroid/nac/ShellCommand;

    # getter for: Lledroid/nac/ShellCommand;->mResponseWaitingId:I
    invoke-static {v2}, Lledroid/nac/ShellCommand;->access$100(Lledroid/nac/ShellCommand;)I

    move-result v2

    invoke-direct {p0, v2}, Lledroid/nac/ShellCommand$1;->shellCommandResponseFinished(I)V

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lledroid/nac/ShellCommand$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
