.class public Lledroid/root/internal/SuTransport;
.super Lledroid/root/internal/ShellTransport;
.source "SuTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/root/internal/SuTransport$1;,
        Lledroid/root/internal/SuTransport$SuRootResponse;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GET_ROOT_SHELL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SuShellTransport"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lledroid/root/internal/ShellTransport;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected final becomeProcess(Ljava/lang/String;)Z
    .locals 7
    .param p1, "suCmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 48
    new-instance v1, Lledroid/root/ShellCommand;

    invoke-direct {v1, p0}, Lledroid/root/ShellCommand;-><init>(Lledroid/root/ICommandTransport;)V

    .line 49
    .local v1, "sc":Lledroid/root/ShellCommand;
    new-instance v0, Lledroid/root/internal/SuTransport$SuRootResponse;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lledroid/root/internal/SuTransport$SuRootResponse;-><init>(Lledroid/root/internal/SuTransport;Lledroid/root/internal/SuTransport$1;)V

    .line 50
    .local v0, "response":Lledroid/root/internal/SuTransport$SuRootResponse;
    invoke-virtual {v1, v0}, Lledroid/root/ShellCommand;->setResponseCallBack(Lledroid/root/ShellCommand$ShellCommandResponse;)V

    .line 51
    invoke-virtual {p0, p1}, Lledroid/root/internal/SuTransport;->resetTransportProcess(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v2

    invoke-virtual {v2, v6}, Lledroid/root/ShellCommand;->exec(I)Lledroid/root/ShellCommand;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v6, v4, v5}, Lledroid/root/ShellCommand;->waitResponse(IJ)V

    .line 60
    :cond_0
    # getter for: Lledroid/root/internal/SuTransport$SuRootResponse;->mSuOk:Z
    invoke-static {v0}, Lledroid/root/internal/SuTransport$SuRootResponse;->access$100(Lledroid/root/internal/SuTransport$SuRootResponse;)Z

    move-result v2

    return v2
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "SuShellTransport"

    return-object v0
.end method

.method public getType()Lledroid/root/ShellTerminalController$TransportType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lledroid/root/ShellTerminalController$TransportType;->SU_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    return-object v0
.end method

.method public isRootTransport()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public prepare()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 29
    const-string v2, "/system/xbin/su"

    invoke-static {v2}, Lledroid/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/system/bin/su"

    invoke-static {v2}, Lledroid/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    :goto_0
    return v1

    .line 38
    :cond_0
    :try_start_0
    const-string/jumbo v2, "su"

    invoke-virtual {p0, v2}, Lledroid/root/internal/SuTransport;->becomeProcess(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e1":Ljava/io/IOException;
    goto :goto_0
.end method
