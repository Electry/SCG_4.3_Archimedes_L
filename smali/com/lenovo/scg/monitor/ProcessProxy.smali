.class public Lcom/lenovo/scg/monitor/ProcessProxy;
.super Ljava/lang/Object;
.source "ProcessProxy.java"


# static fields
.field private static final PROCESS_STATS_FORMAT:[I

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/os/Process;",
            ">;"
        }
    .end annotation
.end field

.field private static mProcess:Landroid/os/Process;


# instance fields
.field private final mProcessStatsData:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/os/Process;

    invoke-direct {v0}, Landroid/os/Process;-><init>()V

    sput-object v0, Lcom/lenovo/scg/monitor/ProcessProxy;->mProcess:Landroid/os/Process;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/monitor/ProcessProxy;->mClass:Ljava/lang/Class;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/monitor/ProcessProxy;->SYSTEM_CPU_FORMAT:[I

    .line 63
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/scg/monitor/ProcessProxy;->PROCESS_STATS_FORMAT:[I

    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    .line 63
    :array_1
    .array-data 4
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x2020
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/lenovo/scg/monitor/ProcessProxy;->mProcessStatsData:[J

    return-void
.end method

.method public static getPidForPidNmae(Ljava/lang/String;)I
    .locals 3
    .param p0, "pidNmae"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 174
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/lenovo/scg/monitor/ProcessProxy;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    .line 175
    .local v0, "pids":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 176
    aget v1, v0, v1

    .line 178
    :cond_0
    return v1
.end method

.method private static final getPidsForCommands([Ljava/lang/String;)[I
    .locals 9
    .param p0, "cmds"    # [Ljava/lang/String;

    .prologue
    .line 211
    const/4 v3, 0x0

    .line 212
    .local v3, "pids":[I
    sget-object v4, Lcom/lenovo/scg/monitor/ProcessProxy;->mClass:Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 213
    sget-object v4, Lcom/lenovo/scg/monitor/ProcessProxy;->mProcess:Landroid/os/Process;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/lenovo/scg/monitor/ProcessProxy;->mClass:Ljava/lang/Class;

    .line 216
    :cond_0
    :try_start_0
    sget-object v4, Lcom/lenovo/scg/monitor/ProcessProxy;->mClass:Ljava/lang/Class;

    const-string v5, "getPidsForCommands"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 217
    .local v2, "method":Ljava/lang/reflect/Method;
    sget-object v4, Lcom/lenovo/scg/monitor/ProcessProxy;->mProcess:Landroid/os/Process;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 231
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 218
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getProcessCpuTime(I)J
    .locals 7
    .param p0, "pid"    # I

    .prologue
    const/4 v6, 0x0

    .line 102
    const/4 v4, 0x4

    new-array v1, v4, [J

    .line 103
    .local v1, "processtime":[J
    const-wide/16 v2, 0x0

    .line 104
    .local v2, "totalprocesstime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/monitor/ProcessProxy;->PROCESS_STATS_FORMAT:[I

    invoke-static {v4, v5, v6, v1, v6}, Lcom/lenovo/scg/monitor/ProcessProxy;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 106
    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    :cond_0
    return-wide v2
.end method

.method public static getTotalCpuTime()J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 82
    const/4 v4, 0x7

    new-array v1, v4, [J

    .line 83
    .local v1, "sysSPUtime":[J
    const-wide/16 v2, 0x0

    .line 84
    .local v2, "totaltime":J
    const-string v4, "/proc/stat"

    sget-object v5, Lcom/lenovo/scg/monitor/ProcessProxy;->SYSTEM_CPU_FORMAT:[I

    invoke-static {v4, v5, v6, v1, v6}, Lcom/lenovo/scg/monitor/ProcessProxy;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 86
    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "i":I
    :cond_0
    return-wide v2
.end method

.method public static final getVmRSSThreadsFormPid(I)[J
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v4, 0x0

    .line 193
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "VmRSS:"

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string v3, "Threads:"

    aput-object v3, v0, v2

    .line 194
    .local v0, "procStatusLabels":[Ljava/lang/String;
    array-length v2, v0

    new-array v1, v2, [J

    .line 195
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/lenovo/scg/monitor/ProcessProxy;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 197
    return-object v1
.end method

.method public static myPid()I
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public static final readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
    .locals 10
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "format"    # [I
    .param p2, "outStrings"    # [Ljava/lang/String;
    .param p3, "outLongs"    # [J
    .param p4, "outFloats"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 126
    new-instance v1, Landroid/os/Process;

    invoke-direct {v1}, Landroid/os/Process;-><init>()V

    .line 127
    .local v1, "mProcess":Landroid/os/Process;
    const/4 v2, 0x0

    .line 129
    .local v2, "readProcFileMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "readProcFile"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, [I

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, [Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, [J

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-class v9, [F

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 131
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 150
    :goto_0
    return v3

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v3, v4

    .line 135
    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v3, v4

    .line 139
    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v3, v4

    .line 143
    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move v3, v4

    .line 147
    goto :goto_0
.end method

.method public static final readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "reqFields"    # [Ljava/lang/String;
    .param p2, "outSizes"    # [J

    .prologue
    .line 283
    :try_start_0
    sget-object v2, Lcom/lenovo/scg/monitor/ProcessProxy;->mClass:Ljava/lang/Class;

    const-string/jumbo v3, "readProcLines"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, [J

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 284
    .local v1, "method":Ljava/lang/reflect/Method;
    sget-object v2, Lcom/lenovo/scg/monitor/ProcessProxy;->mProcess:Landroid/os/Process;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 298
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 291
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 294
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
