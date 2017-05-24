.class Lcom/lenovo/scg/common/utils/android/LogFileBin;
.super Ljava/lang/Object;
.source "StatusLog.java"


# instance fields
.field private mDOS:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "strFilePathName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 29
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/lenovo/scg/common/utils/android/LogFileBin;->mDOS:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/common/utils/android/LogFileBin;->mDOS:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public wInt(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/common/utils/android/LogFileBin;->mDOS:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 42
    iget-object v1, p0, Lcom/lenovo/scg/common/utils/android/LogFileBin;->mDOS:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public wLong(J)V
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/common/utils/android/LogFileBin;->mDOS:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 53
    iget-object v1, p0, Lcom/lenovo/scg/common/utils/android/LogFileBin;->mDOS:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
