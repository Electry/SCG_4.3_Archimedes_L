.class public Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;
.super Ljava/lang/Object;
.source "SCGMemoryUtils.java"


# static fields
.field public static final DELAY_TIME:I = 0x5dc

.field public static final MEMINFO:Ljava/lang/String; = "/proc/meminfo"

.field public static final MEM_DALVIK:I = 0x1202

.field public static final MEM_NATIVE:I = 0x1201

.field public static final MEM_TOTAL:I = 0x1200

.field public static final MEM_UPDATE:I = 0x1100

.field private static TAG:Ljava/lang/String;

.field private static mActivityManager:Landroid/app/ActivityManager;

.field private static mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private static sTotalMem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    .line 34
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    sput-object v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 36
    const-string v0, "SCGMemoryInfo"

    sput-object v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->sTotalMem:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMemFree(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    sget-object v1, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const/16 v1, 0x14

    shr-long/2addr v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMemTotalByte(Landroid/content/Context;)J
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    sget-object v1, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 71
    sget-object v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method

.method public static getMemTotalFromMemInfo()J
    .locals 10

    .prologue
    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, "content":Ljava/lang/String;
    const/4 v1, 0x0

    .line 141
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/meminfo"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x8

    invoke-direct {v2, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 144
    move-object v3, v6

    .line 151
    :cond_0
    if-eqz v2, :cond_3

    .line 153
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 160
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    const/16 v7, 0x3a

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 162
    .local v0, "begin":I
    const/16 v7, 0x6b

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 163
    .local v5, "end":I
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shr-int/lit8 v7, v7, 0xa

    int-to-long v8, v7

    return-wide v8

    .line 154
    .end local v0    # "begin":I
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "end":I
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 156
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 146
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "line":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 147
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    if-eqz v1, :cond_1

    .line 153
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 154
    :catch_2
    move-exception v4

    .line 155
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 149
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    if-eqz v1, :cond_1

    .line 153
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 154
    :catch_4
    move-exception v4

    .line 155
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v1, :cond_2

    .line 153
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 156
    :cond_2
    :goto_4
    throw v7

    .line 154
    :catch_5
    move-exception v4

    .line 155
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 151
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 148
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 146
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public static getMemTotalM(Landroid/content/Context;)I
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 82
    sget v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->sTotalMem:I

    if-nez v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->getMemTotalByte(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/UnitsUtils;->Byte2M(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->sTotalMem:I

    .line 85
    :cond_0
    sget v0, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->sTotalMem:I

    return v0
.end method

.method public static getVSS(Landroid/content/Context;)J
    .locals 21
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 105
    const-string v16, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 106
    .local v2, "activityManager":Landroid/app/ActivityManager;
    new-instance v9, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v9}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 107
    .local v9, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v9}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 109
    sget-object v16, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " memoryInfo.availMem "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v9, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v16, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " memoryInfo.lowMemory "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-boolean v0, v9, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v16, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " memoryInfo.threshold "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v9, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    .line 115
    .local v15, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 116
    .local v11, "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 117
    .local v14, "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v0, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    .end local v14    # "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 122
    .local v7, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 123
    .local v6, "key":I
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v13, v0, [I

    .line 124
    .local v13, "pids":[I
    const/16 v16, 0x0

    aput v6, v13, v16

    .line 125
    invoke-virtual {v2, v13}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v10

    .line 126
    .local v10, "memoryInfoArray":[Landroid/os/Debug$MemoryInfo;
    move-object v3, v10

    .local v3, "arr$":[Landroid/os/Debug$MemoryInfo;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v12, v3, v5

    .line 127
    .local v12, "pidMemoryInfo":Landroid/os/Debug$MemoryInfo;
    sget-object v16, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->TAG:Ljava/lang/String;

    const-string v17, "** MEMINFO in pid %d [%s] **\n"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, v13, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    aget v20, v13, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v16, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " pidMemoryInfo.getTotalPrivateDirty(): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v16, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " pidMemoryInfo.getTotalPss(): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v16, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " pidMemoryInfo.getTotalSharedDirty(): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 134
    .end local v3    # "arr$":[Landroid/os/Debug$MemoryInfo;
    .end local v5    # "i$":I
    .end local v6    # "key":I
    .end local v8    # "len$":I
    .end local v10    # "memoryInfoArray":[Landroid/os/Debug$MemoryInfo;
    .end local v12    # "pidMemoryInfo":Landroid/os/Debug$MemoryInfo;
    .end local v13    # "pids":[I
    :cond_2
    const-wide/16 v16, 0x0

    return-wide v16
.end method

.method public static getmem_SELF(Landroid/content/Context;)[I
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 92
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 97
    .local v0, "result":[I
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 98
    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    long-to-int v2, v2

    shr-int/lit8 v2, v2, 0xa

    aput v2, v0, v1

    .line 100
    return-object v0
.end method
