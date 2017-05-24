.class public Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;
.super Ljava/lang/Object;
.source "SCGCPUInfoUtils.java"


# static fields
.field public static CPU_CORES:I = 0x0

.field public static final CPU_CORE_NUMBER:Ljava/lang/String; = "/sys/devices/system/cpu/present"

.field public static final CPU_CUR_FREP:Ljava/lang/String; = "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_cur_freq"

.field public static final CPU_MAX_FREP:Ljava/lang/String; = "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_cur_freq"

.field public static final CPU_OFFLINE:Ljava/lang/String; = "/sys/devices/system/cpu/offline"

.field public static final CPU_ONLINE:Ljava/lang/String; = "/sys/devices/system/cpu/online"

.field public static final MEDIA_SERVER_NAME:Ljava/lang/String; = "/system/bin/mediaserver"

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field public static final START_GETCPU_SUAGE_001:I = 0x9001

.field public static final START_GETCPU_SUAGE_002:I = 0x9002

.field public static final STOP_GETCPU_SUAGE:I = 0x9003

.field private static final SYSTEM_CPU_FORMAT:[I

.field public static mOnLineCpuBuffer:Ljava/nio/ByteBuffer;

.field public static mOnLineCpuFreqBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->CPU_CORES:I

    .line 28
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->mOnLineCpuBuffer:Ljava/nio/ByteBuffer;

    .line 30
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->mOnLineCpuFreqBuffer:Ljava/nio/ByteBuffer;

    .line 97
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->SYSTEM_CPU_FORMAT:[I

    return-void

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
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllOnLineCPUCurFrep()[I
    .locals 4

    .prologue
    .line 287
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->getOnLineCPUsFromMem()[I

    move-result-object v2

    .line 288
    .local v2, "onlinecpu_number":[I
    array-length v3, v2

    new-array v0, v3, [I

    .line 290
    .local v0, "all_apu_frep":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 291
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->getOnLineCPUCurFrep(I)I

    move-result v3

    aput v3, v0, v1

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-object v0
.end method

.method public static getCPUCoreNumber()I
    .locals 9

    .prologue
    .line 66
    const/4 v6, 0x0

    .line 67
    .local v6, "result":I
    const/4 v3, 0x0

    .line 68
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 70
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v8, "/sys/devices/system/cpu/present"

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v3    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "readLine":Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "splitStrings":[Ljava/lang/String;
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 85
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 86
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 93
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v5    # "readLine":Ljava/lang/String;
    .end local v7    # "splitStrings":[Ljava/lang/String;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :goto_0
    sput v6, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->CPU_CORES:I

    .line 94
    return v6

    .line 87
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "readLine":Ljava/lang/String;
    .restart local v7    # "splitStrings":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 92
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "readLine":Ljava/lang/String;
    .end local v7    # "splitStrings":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 86
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 87
    :catch_2
    move-exception v2

    .line 89
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 82
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 86
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 87
    :catch_4
    move-exception v2

    .line 89
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 85
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 86
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 90
    :goto_4
    throw v8

    .line 87
    :catch_5
    move-exception v2

    .line 89
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 84
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 80
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 77
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public static getCPUStat()[J
    .locals 13

    .prologue
    .line 107
    const/4 v8, 0x7

    new-array v7, v8, [J

    .line 108
    .local v7, "sysCpu1":[J
    const-wide/16 v4, 0x0

    .line 109
    .local v4, "idle1":J
    const-wide/16 v0, 0x0

    .line 111
    .local v0, "cpu1":J
    new-instance v3, Landroid/os/Process;

    invoke-direct {v3}, Landroid/os/Process;-><init>()V

    .line 112
    .local v3, "mProcess":Landroid/os/Process;
    const/4 v6, 0x0

    .line 114
    .local v6, "readProcFileMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "readProcFile"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, [I

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, [Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, [J

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-class v12, [F

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 117
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "/proc/stat"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->SYSTEM_CPU_FORMAT:[I

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v7, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v6, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 131
    :goto_0
    const/4 v8, 0x3

    aget-wide v4, v7, v8

    .line 132
    const/4 v8, 0x0

    aget-wide v8, v7, v8

    const/4 v10, 0x1

    aget-wide v10, v7, v10

    add-long/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v7, v10

    add-long/2addr v8, v10

    const/4 v10, 0x4

    aget-wide v10, v7, v10

    add-long/2addr v8, v10

    const/4 v10, 0x5

    aget-wide v10, v7, v10

    add-long/2addr v8, v10

    const/4 v10, 0x6

    aget-wide v10, v7, v10

    add-long v0, v8, v10

    .line 133
    const/4 v8, 0x2

    new-array v8, v8, [J

    const/4 v9, 0x0

    aput-wide v4, v8, v9

    const/4 v9, 0x1

    aput-wide v0, v8, v9

    return-object v8

    .line 118
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCPU_USAGE([J[J)I
    .locals 8
    .param p0, "cpu1idle"    # [J
    .param p1, "cpu2idle"    # [J

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 146
    aget-wide v2, p1, v6

    aget-wide v4, p0, v6

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    aget-wide v2, p1, v6

    aget-wide v4, p1, v7

    add-long/2addr v2, v4

    aget-wide v4, p0, v6

    aget-wide v6, p0, v7

    add-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 147
    .local v0, "cpuusage":F
    float-to-int v1, v0

    return v1
.end method

.method public static getOnLineCPUCurFrep(I)I
    .locals 12
    .param p0, "cpuid"    # I

    .prologue
    .line 246
    const/4 v5, 0x0

    .line 247
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 248
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 250
    .local v2, "cpu_cur_frep":I
    :try_start_0
    const-string v8, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_cur_freq"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "cur_frep":Ljava/lang/String;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "readLine":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    .line 264
    if-eqz v6, :cond_0

    .line 265
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 267
    :cond_0
    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 275
    .end local v3    # "cur_frep":Ljava/lang/String;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v7    # "readLine":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_2
    :goto_0
    return v2

    .line 270
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "cur_frep":Ljava/lang/String;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "readLine":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 272
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 274
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 256
    .end local v3    # "cur_frep":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "readLine":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 258
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    if-eqz v5, :cond_3

    .line 265
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 267
    :cond_3
    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 270
    :catch_2
    move-exception v4

    .line 272
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 259
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 261
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 264
    if-eqz v5, :cond_4

    .line 265
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 267
    :cond_4
    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 270
    :catch_4
    move-exception v4

    .line 272
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 264
    :goto_3
    if-eqz v5, :cond_5

    .line 265
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 267
    :cond_5
    if-eqz v0, :cond_6

    .line 268
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 273
    :cond_6
    :goto_4
    throw v8

    .line 270
    :catch_5
    move-exception v4

    .line 272
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 263
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v3    # "cur_frep":Ljava/lang/String;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 259
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v4

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 256
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public static getOnLineCPUs()[I
    .locals 11

    .prologue
    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "cpus":[I
    const/4 v4, 0x0

    .line 160
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 162
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v10, "/sys/devices/system/cpu/online"

    invoke-direct {v5, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "readLine":Ljava/lang/String;
    const-string v10, "-"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, "splitStrings":[Ljava/lang/String;
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 168
    .local v7, "max_online_cpu":I
    add-int/lit8 v10, v7, 0x1

    new-array v2, v10, [I

    .line 169
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v10, v2

    if-ge v6, v10, :cond_0

    .line 170
    aput v6, v2, v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 169
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 181
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 182
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 188
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "i":I
    .end local v7    # "max_online_cpu":I
    .end local v8    # "readLine":Ljava/lang/String;
    .end local v9    # "splitStrings":[Ljava/lang/String;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_1
    return-object v2

    .line 183
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "i":I
    .restart local v7    # "max_online_cpu":I
    .restart local v8    # "readLine":Ljava/lang/String;
    .restart local v9    # "splitStrings":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 187
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 173
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "i":I
    .end local v7    # "max_online_cpu":I
    .end local v8    # "readLine":Ljava/lang/String;
    .end local v9    # "splitStrings":[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 175
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 182
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 183
    :catch_2
    move-exception v3

    .line 185
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 176
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 178
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 181
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 182
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 183
    :catch_4
    move-exception v3

    .line 185
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 180
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 181
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 182
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 186
    :goto_5
    throw v10

    .line 183
    :catch_5
    move-exception v3

    .line 185
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 180
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 176
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 173
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2
.end method

.method public static getOnLineCPUsFromMem()[I
    .locals 10

    .prologue
    .line 199
    const/4 v3, 0x0

    .line 201
    .local v3, "online_cpus":[I
    const/4 v4, 0x0

    .line 202
    .local v4, "readChannel":Ljava/nio/channels/FileChannel;
    sget-object v7, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->mOnLineCpuBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 203
    const/4 v5, 0x0

    .line 205
    .local v5, "readSize":I
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "/sys/devices/system/cpu/online"

    const-string/jumbo v9, "r"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 206
    sget-object v7, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->mOnLineCpuBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 215
    :goto_0
    add-int/lit8 v7, v5, -0x1

    new-array v6, v7, [B

    .line 217
    .local v6, "realCpus":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    add-int/lit8 v7, v5, -0x1

    if-ge v1, v7, :cond_0

    .line 218
    sget-object v7, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->mOnLineCpuBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    aput-byte v7, v6, v1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    .end local v1    # "j":I
    .end local v6    # "realCpus":[B
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "j":I
    .restart local v6    # "realCpus":[B
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "maxCPUID":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, -0x30

    new-array v3, v7, [I

    .line 224
    const/4 v1, 0x0

    :goto_2
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 225
    aput v1, v3, v1

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 227
    :cond_1
    sget-object v7, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->mOnLineCpuBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 229
    :try_start_1
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 234
    :goto_3
    return-object v3

    .line 230
    :catch_2
    move-exception v0

    .line 232
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
