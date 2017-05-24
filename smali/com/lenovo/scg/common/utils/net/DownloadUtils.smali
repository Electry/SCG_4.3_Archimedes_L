.class public Lcom/lenovo/scg/common/utils/net/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/OutputStream;)Z
    .locals 4
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 73
    invoke-static {p0, v0, p2}, Lcom/lenovo/scg/common/utils/net/DownloadUtils;->dump(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    const/4 v2, 0x1

    .line 79
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return v2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "DownloadService"

    const-string v3, "fail to download"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    const/4 v2, 0x0

    .line 79
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static dump(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 50
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 51
    .local v0, "buffer":[B
    array-length v3, v0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 52
    .local v1, "rc":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 53
    .local v2, "thread":Ljava/lang/Thread;
    new-instance v3, Lcom/lenovo/scg/common/utils/net/DownloadUtils$1;

    invoke-direct {v3, v2}, Lcom/lenovo/scg/common/utils/net/DownloadUtils$1;-><init>(Ljava/lang/Thread;)V

    invoke-interface {p0, v3}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 60
    :goto_0
    if-lez v1, :cond_1

    .line 61
    invoke-interface {p0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 62
    :cond_0
    invoke-virtual {p2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 63
    array-length v3, v0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 66
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 67
    return-void
.end method

.method public static requestDownload(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/File;)Z
    .locals 4
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p0, p1, v1}, Lcom/lenovo/scg/common/utils/net/DownloadUtils;->download(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 45
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 42
    :catch_0
    move-exception v2

    .line 43
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    const/4 v3, 0x0

    .line 45
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 42
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
