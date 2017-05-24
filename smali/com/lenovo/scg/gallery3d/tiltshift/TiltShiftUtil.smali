.class public Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;
.super Ljava/lang/Object;
.source "TiltShiftUtil.java"


# instance fields
.field public imgHeight:I

.field public imgWidth:I

.field public mBlurBitmap:Landroid/graphics/Bitmap;

.field public mClearBitmap:Landroid/graphics/Bitmap;

.field public mInitMapHeight:I

.field public mInitMapWidth:I

.field public mScaleBitmap:Landroid/graphics/Bitmap;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mShowViewHeight:I

.field public mShowViewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenWidth:I

    .line 29
    const/16 v0, 0x780

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenHeight:I

    .line 31
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 37
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->imgWidth:I

    .line 39
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->imgHeight:I

    .line 41
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapWidth:I

    .line 43
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapHeight:I

    .line 45
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewWidth:I

    .line 47
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewHeight:I

    return-void
.end method

.method public static bitmapToByte(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 50
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    .local v1, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 56
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance p2, Ljava/io/File;

    .end local p2    # "directory":Ljava/io/File;
    const-string v5, "/mnt/sdcard/DCIM/Camera"

    invoke-direct {p2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .restart local p2    # "directory":Ljava/io/File;
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    const/4 v1, 0x0

    .line 85
    :goto_0
    return-object v1

    .line 72
    :cond_1
    const/4 v1, 0x0

    .line 73
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 76
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p4, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 77
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    .end local v3    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    const/16 v5, 0x5a

    :try_start_2
    invoke-virtual {p1, p4, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->closeStream(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .line 84
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 76
    :cond_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p3

    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->closeStream(Ljava/io/Closeable;)V

    throw v5

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .line 80
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2
.end method
