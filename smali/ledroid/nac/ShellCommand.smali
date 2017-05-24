.class public final Lledroid/nac/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/nac/ShellCommand$ShellCommandResponseEx;,
        Lledroid/nac/ShellCommand$ShellCommandResponse;
    }
.end annotation


# static fields
.field private static final CMD_END_MARK:Ljava/lang/String; = "CMD_END_MARK"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ledroid-nac"

.field private static mInstance:Lledroid/nac/ShellCommand;


# instance fields
.field private final mCommand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mResponseCallback:Lledroid/nac/ShellCommand$ShellCommandResponse;

.field private final mResponseTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseWaitingId:I

.field private mResponseWaitter:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransport:Lledroid/nac/client/ICommandTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lledroid/nac/utils/DebugConfig;->isDebugable()Z

    move-result v0

    sput-boolean v0, Lledroid/nac/ShellCommand;->DEBUG:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lledroid/nac/ShellCommand;->mInstance:Lledroid/nac/ShellCommand;

    return-void
.end method

.method private constructor <init>(Lledroid/nac/client/ICommandTransport;)V
    .locals 3
    .param p1, "transport"    # Lledroid/nac/client/ICommandTransport;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lledroid/nac/ShellCommand;->mTempFiles:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lledroid/nac/ShellCommand;->mExecError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    iput-object v2, p0, Lledroid/nac/ShellCommand;->mResponseCallback:Lledroid/nac/ShellCommand$ShellCommandResponse;

    .line 37
    iput-object v2, p0, Lledroid/nac/ShellCommand;->mResponseWaitter:Ljava/util/concurrent/Future;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lledroid/nac/ShellCommand;->mResponseWaitingId:I

    .line 322
    new-instance v0, Lledroid/nac/ShellCommand$1;

    invoke-direct {v0, p0}, Lledroid/nac/ShellCommand$1;-><init>(Lledroid/nac/ShellCommand;)V

    iput-object v0, p0, Lledroid/nac/ShellCommand;->mResponseTask:Ljava/util/concurrent/Callable;

    .line 63
    iput-object p1, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    .line 64
    return-void
.end method

.method private varargs constructor <init>(Lledroid/nac/client/ICommandTransport;[Ljava/lang/String;)V
    .locals 0
    .param p1, "transport"    # Lledroid/nac/client/ICommandTransport;
    .param p2, "command"    # [Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lledroid/nac/ShellCommand;-><init>(Lledroid/nac/client/ICommandTransport;)V

    .line 68
    invoke-virtual {p0, p2}, Lledroid/nac/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/nac/ShellCommand;

    .line 69
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lledroid/nac/ShellCommand;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lledroid/nac/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lledroid/nac/ShellCommand;

    .prologue
    .line 26
    iget v0, p0, Lledroid/nac/ShellCommand;->mResponseWaitingId:I

    return v0
.end method

.method static synthetic access$200(Lledroid/nac/ShellCommand;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lledroid/nac/ShellCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lledroid/nac/ShellCommand;->readCommandResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lledroid/nac/ShellCommand;)Lledroid/nac/ShellCommand$ShellCommandResponse;
    .locals 1
    .param p0, "x0"    # Lledroid/nac/ShellCommand;

    .prologue
    .line 26
    iget-object v0, p0, Lledroid/nac/ShellCommand;->mResponseCallback:Lledroid/nac/ShellCommand$ShellCommandResponse;

    return-object v0
.end method

.method static synthetic access$400(Lledroid/nac/ShellCommand;)V
    .locals 0
    .param p0, "x0"    # Lledroid/nac/ShellCommand;

    .prologue
    .line 26
    invoke-direct {p0}, Lledroid/nac/ShellCommand;->destoryForSocketResponseIOStream()V

    return-void
.end method

.method private createTempExecutableFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;

    .prologue
    .line 185
    const/4 v3, 0x0

    .line 187
    .local v3, "tempFile":Ljava/io/File;
    :try_start_0
    invoke-static {p1, p2, p3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 188
    new-instance v2, Lledroid/nac/utils/ReflectClass;

    const-class v4, Ljava/io/File;

    invoke-direct {v2, v4, v3}, Lledroid/nac/utils/ReflectClass;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 189
    .local v2, "fr":Lledroid/nac/utils/ReflectClass;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    .line 190
    .local v0, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v4, "setExecutable"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v0, v5}, Lledroid/nac/utils/ReflectClass;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v4, "setReadable"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v0, v5}, Lledroid/nac/utils/ReflectClass;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 199
    .end local v0    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "fr":Lledroid/nac/utils/ReflectClass;
    :goto_0
    return-object v3

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "ledroid-nac"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createTempFile Failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "ledroid-nac"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createTempFile Failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "ledroid-nac"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createTempFile Failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private destoryForSocketResponseIOStream()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    invoke-interface {v0}, Lledroid/nac/client/ICommandTransport;->destory()V

    .line 320
    :cond_0
    return-void
.end method

.method private destroyTransport()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    invoke-interface {v0}, Lledroid/nac/client/ICommandTransport;->destory()V

    .line 111
    :cond_0
    return-void
.end method

.method private execAsScriptBatch(I)Lledroid/nac/ShellCommand;
    .locals 10
    .param p1, "exeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v6, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    if-nez v6, :cond_2

    .line 204
    :cond_0
    const/4 p0, 0x0

    .line 239
    .end local p0    # "this":Lledroid/nac/ShellCommand;
    :cond_1
    :goto_0
    return-object p0

    .line 206
    .restart local p0    # "this":Lledroid/nac/ShellCommand;
    :cond_2
    new-instance v2, Lledroid/nac/utils/AndroidApplicationPath;

    iget-object v6, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    invoke-interface {v6}, Lledroid/nac/client/ICommandTransport;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lledroid/nac/utils/AndroidApplicationPath;-><init>(Landroid/content/Context;)V

    .line 207
    .local v2, "path":Lledroid/nac/utils/AndroidApplicationPath;
    const-string v6, "ledroid"

    const-string v7, ".cmds"

    invoke-virtual {v2}, Lledroid/nac/utils/AndroidApplicationPath;->getPackageCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lledroid/nac/ShellCommand;->createTempExecutableFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 208
    .local v5, "tempFile":Ljava/io/File;
    if-eqz v5, :cond_1

    .line 211
    const/4 v3, 0x0

    .line 213
    .local v3, "shellBW":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 216
    .end local v3    # "shellBW":Ljava/io/BufferedWriter;
    .local v4, "shellBW":Ljava/io/BufferedWriter;
    :try_start_1
    iget-object v7, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    :try_start_2
    iget-object v6, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    .local v0, "cmd":Ljava/lang/String;
    const-string v6, "exit"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 223
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 224
    sget-boolean v6, Lledroid/nac/ShellCommand;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 225
    const-string v6, "ledroid-nac"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 228
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "shellBW":Ljava/io/BufferedWriter;
    .restart local v3    # "shellBW":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v3, :cond_4

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_4
    throw v6

    .line 228
    .end local v3    # "shellBW":Ljava/io/BufferedWriter;
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "shellBW":Ljava/io/BufferedWriter;
    :cond_5
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 230
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 232
    if-eqz v4, :cond_6

    .line 233
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 237
    :cond_6
    iget-object v6, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " & \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lledroid/nac/client/ICommandTransport;->write(Ljava/lang/String;)V

    .line 238
    iget-object v6, p0, Lledroid/nac/ShellCommand;->mTempFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 232
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "shellBW":Ljava/io/BufferedWriter;
    .restart local v3    # "shellBW":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v6

    goto :goto_2
.end method

.method private execCmdByCmd(I)V
    .locals 6
    .param p1, "exeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "cmd":Ljava/lang/String;
    iget-object v4, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    monitor-enter v4

    .line 171
    :try_start_0
    iget-object v3, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 172
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 174
    const-string v3, "exit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    iget-object v3, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    invoke-interface {v3, v1}, Lledroid/nac/client/ICommandTransport;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 180
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    const-string v5, "echo \"CMD_END_MARK\" \n"

    invoke-interface {v3, v5}, Lledroid/nac/client/ICommandTransport;->write(Ljava/lang/String;)V

    .line 181
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    return-void
.end method

.method public static getNacShellCommandInstance(Landroid/content/Context;)Lledroid/nac/ShellCommand;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-class v2, Lledroid/nac/ShellCommand;

    monitor-enter v2

    .line 52
    :try_start_0
    sget-object v1, Lledroid/nac/ShellCommand;->mInstance:Lledroid/nac/ShellCommand;

    if-nez v1, :cond_0

    .line 53
    invoke-static {p0}, Lledroid/nac/client/TransportFactory;->getRootTransport(Landroid/content/Context;)Lledroid/nac/client/ICommandTransport;

    move-result-object v0

    .line 54
    .local v0, "transport":Lledroid/nac/client/ICommandTransport;
    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lledroid/nac/ShellCommand;

    invoke-direct {v1, v0}, Lledroid/nac/ShellCommand;-><init>(Lledroid/nac/client/ICommandTransport;)V

    sput-object v1, Lledroid/nac/ShellCommand;->mInstance:Lledroid/nac/ShellCommand;

    .line 58
    .end local v0    # "transport":Lledroid/nac/client/ICommandTransport;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    sget-object v1, Lledroid/nac/ShellCommand;->mInstance:Lledroid/nac/ShellCommand;

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isEmptyCommand()Z
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 133
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    return v1

    .line 132
    :cond_1
    const-string v1, "ledroid-nac"

    const-string v2, "Ignore: No any commands to execute"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private readCommandResponse()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    invoke-interface {v0}, Lledroid/nac/client/ICommandTransport;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs addCommand([Ljava/lang/String;)Lledroid/nac/ShellCommand;
    .locals 5
    .param p1, "command"    # [Ljava/lang/String;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object p0

    .line 90
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 92
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_2
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    iget-object v3, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    monitor-enter v3

    .line 98
    :try_start_0
    iget-object v2, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public exec()Lledroid/nac/ShellCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lledroid/nac/ShellCommand;->exec(I)Lledroid/nac/ShellCommand;

    move-result-object v0

    return-object v0
.end method

.method public exec(I)Lledroid/nac/ShellCommand;
    .locals 4
    .param p1, "exeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lledroid/nac/ShellCommand;->isEmptyCommand()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object p0

    .line 141
    :cond_1
    iget-object v2, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    monitor-enter v2

    .line 142
    :try_start_0
    iget-object v1, p0, Lledroid/nac/ShellCommand;->mExecError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :try_start_1
    iget-object v1, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    invoke-interface {v1}, Lledroid/nac/client/ICommandTransport;->onBeforeExec()V

    .line 145
    iget-object v1, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    invoke-interface {v1}, Lledroid/nac/client/ICommandTransport;->onlyAsScriptBatchExec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    invoke-direct {p0, p1}, Lledroid/nac/ShellCommand;->execAsScriptBatch(I)Lledroid/nac/ShellCommand;

    .line 150
    :goto_1
    iget-object v1, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    invoke-interface {v1}, Lledroid/nac/client/ICommandTransport;->flush()V

    .line 151
    iget-object v1, p0, Lledroid/nac/ShellCommand;->mTransport:Lledroid/nac/client/ICommandTransport;

    invoke-interface {v1}, Lledroid/nac/client/ICommandTransport;->onAfterExec()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    iget-object v2, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    monitor-enter v2

    .line 160
    :try_start_3
    iget-object v1, p0, Lledroid/nac/ShellCommand;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 161
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    iput p1, p0, Lledroid/nac/ShellCommand;->mResponseWaitingId:I

    .line 164
    invoke-static {}, Lledroid/nac/client/ExecutorManager;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lledroid/nac/ShellCommand;->mResponseTask:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lledroid/nac/ShellCommand;->mResponseWaitter:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 148
    :cond_2
    :try_start_4
    invoke-direct {p0, p1}, Lledroid/nac/ShellCommand;->execCmdByCmd(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    iget-object v1, p0, Lledroid/nac/ShellCommand;->mExecError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    invoke-direct {p0}, Lledroid/nac/ShellCommand;->destroyTransport()V

    .line 155
    throw v0

    .line 157
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 161
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v2, p0, Lledroid/nac/ShellCommand;->mTempFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 77
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    const-string v2, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove File Failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lledroid/nac/ShellCommand;->mTempFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    return-void
.end method

.method public hasExecError()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lledroid/nac/ShellCommand;->mExecError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setResponseCallBack(Lledroid/nac/ShellCommand$ShellCommandResponse;)V
    .locals 0
    .param p1, "callback"    # Lledroid/nac/ShellCommand$ShellCommandResponse;

    .prologue
    .line 104
    iput-object p1, p0, Lledroid/nac/ShellCommand;->mResponseCallback:Lledroid/nac/ShellCommand$ShellCommandResponse;

    .line 105
    return-void
.end method

.method public syncExec()Lledroid/nac/ShellCommand;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lledroid/nac/ShellCommand;->exec()Lledroid/nac/ShellCommand;

    .line 115
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lledroid/nac/ShellCommand;->waitResponse(J)V

    .line 116
    return-object p0
.end method

.method public waitResponse()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lledroid/nac/ShellCommand;->waitResponse(I)V

    .line 249
    return-void
.end method

.method public waitResponse(I)V
    .locals 2
    .param p1, "exeId"    # I

    .prologue
    .line 269
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lledroid/nac/ShellCommand;->waitResponse(IJ)V

    .line 270
    return-void
.end method

.method public waitResponse(IJ)V
    .locals 5
    .param p1, "exeId"    # I
    .param p2, "millis"    # J

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "execSuccess":Z
    iget-object v2, p0, Lledroid/nac/ShellCommand;->mResponseWaitter:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_1

    .line 284
    :try_start_0
    iget-object v2, p0, Lledroid/nac/ShellCommand;->mResponseWaitter:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 296
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lledroid/nac/ShellCommand;->mResponseWaitter:Ljava/util/concurrent/Future;

    .line 297
    const/4 v2, -0x1

    iput v2, p0, Lledroid/nac/ShellCommand;->mResponseWaitingId:I

    .line 300
    :cond_1
    sget-boolean v2, Lledroid/nac/ShellCommand;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 301
    const-string v2, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===> ShellCommand returned from Wait Response["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_2
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===> ShellCommand Wait Response error: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-boolean v2, Lledroid/nac/ShellCommand;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===> ShellCommand Wait Response error: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-boolean v2, Lledroid/nac/ShellCommand;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitResponse(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 259
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lledroid/nac/ShellCommand;->waitResponse(IJ)V

    .line 260
    return-void
.end method
