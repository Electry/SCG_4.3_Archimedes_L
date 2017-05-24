.class public Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;
.super Ljava/lang/Object;
.source "AndroidCPUUtils.java"


# static fields
.field public static final CPU_TYPE_INTEL:I = 0x0

.field public static final CPU_TYPE_MTK:I = 0x1

.field public static final CPU_TYPE_QUALCOMM:I = 0x3

.field public static final CPU_TYPE_SAMSUNG:I = 0x2

.field public static final CPU_TYPE_UNKNOW:I = -0x1

.field private static SCG_CPU_TYPE:I

.field private static SCG_HARDWARE_INFO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, -0x1

    sput v0, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_HARDWARE_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCPUType()I
    .locals 10

    .prologue
    const/4 v8, -0x1

    .line 64
    sget v7, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I

    if-ne v7, v8, :cond_9

    .line 65
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 66
    .local v4, "mPreferences":Landroid/content/SharedPreferences;
    const-string v7, "key_cpu_type"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, "cpuType":I
    if-eq v0, v8, :cond_0

    .line 69
    sput v0, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I

    .line 70
    sget v7, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I

    .line 111
    .local v5, "reader":Ljava/io/RandomAccessFile;
    :goto_0
    return v7

    .line 73
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    :cond_0
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v8, "x86"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 74
    const/4 v7, 0x0

    sput v7, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I

    .line 75
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "key_cpu_type"

    sget v9, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    sget v7, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I

    goto :goto_0

    .line 79
    :cond_1
    const/4 v5, 0x0

    .line 81
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "/proc/cpuinfo"

    const-string/jumbo v8, "r"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .local v6, "reader":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 83
    .local v3, "mLineString":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 84
    const-string v7, "Hardware"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 85
    const-string v7, "Qualcomm"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    const/4 v7, 0x3

    sput v7, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 96
    .end local v3    # "mLineString":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .local v2, "ex":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    if-eqz v5, :cond_3

    .line 100
    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 108
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_3
    :goto_3
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "key_cpu_type"

    sget v9, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    sget v7, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I

    goto :goto_0

    .line 87
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "mLineString":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    :cond_4
    :try_start_4
    const-string v7, "STUTTGART"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 88
    const/4 v7, 0x2

    sput v7, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v7

    move-object v5, v6

    .line 99
    .end local v3    # "mLineString":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :goto_4
    if-eqz v5, :cond_5

    .line 100
    :try_start_5
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 105
    :cond_5
    :goto_5
    throw v7

    .line 89
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "mLineString":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    :cond_6
    :try_start_6
    const-string v7, "MT"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 90
    const/4 v7, 0x1

    sput v7, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 99
    :cond_7
    if-eqz v6, :cond_8

    .line 100
    :try_start_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_8
    move-object v5, v6

    .line 105
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 102
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 106
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "mLineString":Ljava/lang/String;
    .restart local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 104
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 104
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 111
    .end local v0    # "cpuType":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "mPreferences":Landroid/content/SharedPreferences;
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    :cond_9
    sget v7, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I

    goto/16 :goto_0

    .line 98
    .restart local v0    # "cpuType":I
    .restart local v4    # "mPreferences":Landroid/content/SharedPreferences;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    goto :goto_4

    .line 95
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static getHardwareInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 124
    sget-object v5, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_HARDWARE_INFO:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 125
    const/4 v3, 0x0

    .line 127
    .local v3, "reader":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "/proc/cpuinfo"

    const-string/jumbo v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .local v4, "reader":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 129
    .local v2, "mLineString":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 130
    const-string v5, "Hardware"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sput-object v5, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_HARDWARE_INFO:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 136
    .end local v2    # "mLineString":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .local v1, "ex":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    if-eqz v3, :cond_1

    .line 140
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 148
    :cond_1
    :goto_2
    sget-object v5, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_HARDWARE_INFO:Ljava/lang/String;

    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    return-object v5

    .line 139
    .restart local v2    # "mLineString":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    :cond_2
    if-eqz v4, :cond_1

    .line 140
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 142
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "mLineString":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "ex":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 139
    :goto_3
    if-eqz v3, :cond_3

    .line 140
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 145
    :cond_3
    :goto_4
    throw v5

    .line 142
    :catch_3
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "mLineString":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 135
    .end local v2    # "mLineString":Ljava/lang/String;
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static isCPUTypeUnknow()Z
    .locals 2

    .prologue
    .line 48
    sget v0, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->SCG_CPU_TYPE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIntelCPU()Z
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->getCPUType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMtkCPU()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->getCPUType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQualcommCPU()Z
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->getCPUType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSamsungCPU()Z
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->getCPUType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
