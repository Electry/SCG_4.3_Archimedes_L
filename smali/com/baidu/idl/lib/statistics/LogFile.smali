.class public Lcom/baidu/idl/lib/statistics/LogFile;
.super Ljava/lang/Object;
.source "LogFile.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field public static final SDF:Ljava/text/SimpleDateFormat;


# instance fields
.field public createLogFileTime:Ljava/lang/String;

.field public file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/idl/lib/statistics/LogFile;->SDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    .line 15
    iput-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->createLogFileTime:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/baidu/idl/lib/statistics/LogFile;->SDF:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->createLogFileTime:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->createLogFileTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/idl/lib/statistics/LogFile;->createFile(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "createFileIdx"    # I

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    .line 15
    iput-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->createLogFileTime:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/baidu/idl/lib/statistics/LogFile;->SDF:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->createLogFileTime:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->createLogFileTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/idl/lib/statistics/LogFile;->createFile(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "createFileTime"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    .line 15
    iput-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->createLogFileTime:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/baidu/idl/lib/statistics/LogFile;->createLogFileTime:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->createLogFileTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/idl/lib/statistics/LogFile;->createFile(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private createFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "createFileTime"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/idl/lib/statistics/LogFile;->getSdcardPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/.baiduIDLSdk/statistics/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    .line 46
    iget-object v2, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    if-nez v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    iget-object v2, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 52
    const-string/jumbo v3, "mounted"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 53
    .local v1, "sdCardExist":Z
    iget-object v2, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 54
    iget-object v2, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v1    # "sdCardExist":Z
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSdcardPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    const-string v0, ""

    .line 35
    .local v0, "rootPath":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkStoreLog()Z
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->createLogFileTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/idl/lib/statistics/LogFile;->createLogFileTime:Ljava/lang/String;

    sget-object v1, Lcom/baidu/idl/lib/statistics/LogFile;->SDF:Ljava/text/SimpleDateFormat;

    .line 68
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkValid()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/baidu/idl/lib/statistics/LogFile;->checkStoreLog()Z

    move-result v0

    return v0
.end method
