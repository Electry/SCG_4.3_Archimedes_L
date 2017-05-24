.class public Lcn/jingling/lib/file/CopyOfLog;
.super Ljava/lang/Object;
.source "CopyOfLog.java"


# static fields
.field static SDFile:Ljava/io/File;

.field static fos:Ljava/io/FileOutputStream;

.field static logFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcn/jingling/lib/file/CopyOfLog;->SDFile:Ljava/io/File;

    .line 17
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jingling/lib/file/CopyOfLog;->SDFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "myMatrix.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcn/jingling/lib/file/CopyOfLog;->logFile:Ljava/io/File;

    .line 18
    sget-object v1, Lcn/jingling/lib/file/CopyOfLog;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    sget-object v1, Lcn/jingling/lib/file/CopyOfLog;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 21
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcn/jingling/lib/file/CopyOfLog;->logFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v1, Lcn/jingling/lib/file/CopyOfLog;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :cond_1
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 25
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 27
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public writeArrayAsMatrix([II)V
    .locals 4
    .param p1, "origPixel"    # [I
    .param p2, "lineLenth"    # I

    .prologue
    .line 33
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 37
    .local v1, "i":I
    :goto_1
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 38
    sget-object v2, Lcn/jingling/lib/file/CopyOfLog;->fos:Ljava/io/FileOutputStream;

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 40
    add-int/lit8 v2, v1, 0x1

    rem-int/2addr v2, p2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    array-length v3, p1

    if-ne v2, v3, :cond_3

    .line 41
    :cond_2
    sget-object v2, Lcn/jingling/lib/file/CopyOfLog;->fos:Ljava/io/FileOutputStream;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 44
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    :cond_3
    sget-object v2, Lcn/jingling/lib/file/CopyOfLog;->fos:Ljava/io/FileOutputStream;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
