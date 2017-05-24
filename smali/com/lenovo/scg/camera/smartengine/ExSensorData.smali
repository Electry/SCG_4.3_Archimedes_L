.class public Lcom/lenovo/scg/camera/smartengine/ExSensorData;
.super Ljava/lang/Object;
.source "ExSensorData.java"


# static fields
.field private static B:[Ljava/lang/String; = null

.field private static CCT:[Ljava/lang/String; = null

.field private static G:[Ljava/lang/String; = null

.field private static ISPData:[Ljava/lang/String; = null

.field private static ISPtemp:[Ljava/lang/String; = null

.field private static LUX:[Ljava/lang/String; = null

.field private static R:[Ljava/lang/String; = null

.field private static final SensorBackRGB:Ljava/lang/String; = "sys/bus/i2c/devices/2-0044/lux"

.field private static TAG:Ljava/lang/String;

.field private static ispData:[F

.field private static rgb:[I

.field private static tempBytes:[B

.field private static tmp:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const/16 v0, 0x64

    new-array v0, v0, [B

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->tempBytes:[B

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->rgb:[I

    .line 18
    sput-object v1, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->tmp:[Ljava/lang/String;

    .line 19
    sput-object v1, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->R:[Ljava/lang/String;

    .line 20
    sput-object v1, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->G:[Ljava/lang/String;

    .line 21
    sput-object v1, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->B:[Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->CCT:[Ljava/lang/String;

    .line 23
    sput-object v1, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->LUX:[Ljava/lang/String;

    .line 24
    const-string v0, "ExSensorData"

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->TAG:Ljava/lang/String;

    .line 55
    sput-object v1, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ISPtemp:[Ljava/lang/String;

    .line 56
    const/16 v0, 0xd

    new-array v0, v0, [F

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ispData:[F

    .line 57
    sput-object v1, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ISPData:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackRGBData()[I
    .locals 4

    .prologue
    .line 48
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->rgb:[I

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->rgb:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->rgb:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getISPData()[F
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 71
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->getISPString()[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "temp":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 73
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/16 v2, 0xd

    if-ge v0, v2, :cond_0

    .line 74
    aget-object v2, v1, v0

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ISPData:[Ljava/lang/String;

    .line 75
    sget-object v2, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ISPData:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ISPData:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ISPData:[Ljava/lang/String;

    aget-object v2, v2, v5

    if-nez v2, :cond_1

    .line 84
    .end local v0    # "i":I
    :cond_0
    sget-object v2, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ispData:[F

    return-object v2

    .line 79
    .restart local v0    # "i":I
    :cond_1
    const-string v2, "[smart_app]ExSensorData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getISPData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ISPData[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ISPData:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v2, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ispData:[F

    sget-object v3, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ISPData:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized getISPString()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    const-class v1, Lcom/lenovo/scg/camera/smartengine/ExSensorData;

    monitor-enter v1

    :try_start_0
    const-string v0, "[smart_app]ExSensorData"

    const-string v2, "getISPString"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ISPtemp:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static readBackRGB()[I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    sget-object v3, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->tempBytes:[B

    const-string/jumbo v4, "sys/bus/i2c/devices/2-0044/lux"

    invoke-static {v3, v6, v4}, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->readFile([BILjava/lang/String;)I

    move-result v1

    .line 28
    .local v1, "readBytes":I
    if-lez v1, :cond_2

    .line 29
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->tempBytes:[B

    invoke-direct {v3, v4, v6, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "rgbstr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 31
    sget-object v3, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readBackRGB rgbstr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->tmp:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->tmp:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 34
    sget-object v3, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->tmp:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->R:[Ljava/lang/String;

    .line 35
    sget-object v3, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->rgb:[I

    sget-object v4, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->R:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "i":I
    :cond_0
    sget-object v3, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "readBackRGB rgbstr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    sget-object v4, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->rgb:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    aput v4, v3, v6

    sget-object v4, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->rgb:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    aput v4, v3, v7

    .line 43
    .end local v2    # "rgbstr":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 42
    :cond_2
    sget-object v3, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readBackRGB readBytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static readFile([BILjava/lang/String;)I
    .locals 8
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 89
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 90
    :cond_0
    sget-object v5, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readFile buffer is null or length is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, -0x1

    .line 110
    :goto_0
    return v0

    .line 94
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "fid":Ljava/io/File;
    const/4 v0, 0x0

    .line 96
    .local v0, "byteRead":I
    const/4 v3, 0x0

    .line 98
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    :try_start_1
    array-length v5, p0

    invoke-virtual {v4, p0, p1, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 105
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 108
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .line 106
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 109
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 101
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v5, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readFile error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 106
    :catch_2
    move-exception v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 105
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 108
    :goto_3
    throw v5

    .line 106
    :catch_3
    move-exception v1

    .line 107
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 100
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static declared-synchronized setISPString([Ljava/lang/String;)V
    .locals 3
    .param p0, "data"    # [Ljava/lang/String;

    .prologue
    .line 60
    const-class v1, Lcom/lenovo/scg/camera/smartengine/ExSensorData;

    monitor-enter v1

    :try_start_0
    const-string v0, "[smart_app]ExSensorData"

    const-string/jumbo v2, "setISPString"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sput-object p0, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->ISPtemp:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v1

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static writeFile([BILjava/lang/String;)V
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "fid":Ljava/io/File;
    const/4 v2, 0x0

    .line 122
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_1
    array-length v4, p0

    invoke-virtual {v3, p0, p1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 124
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 132
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 130
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 133
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 126
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 130
    :catch_2
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 129
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 132
    :goto_3
    throw v4

    .line 130
    :catch_3
    move-exception v0

    .line 131
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 125
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
