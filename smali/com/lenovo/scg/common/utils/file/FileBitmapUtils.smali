.class public Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;
.super Ljava/lang/Object;
.source "FileBitmapUtils.java"


# static fields
.field private static FILEPATH:Ljava/lang/String; = null

.field public static final PREPARING:J = -0x2L

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PhotoGrapher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->FILEPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 163
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static Bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    const/4 v0, 0x0

    .line 150
    if-nez p0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    array-length v1, p0

    if-eqz v1, :cond_0

    .line 154
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->FILEPATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 182
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 187
    .local v4, "subs":[Ljava/io/File;
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 188
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->deleteFile(Ljava/io/File;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "subs":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static getAvailableSpace()J
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 195
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "state":Ljava/lang/String;
    const-string v3, "checking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    const-wide/16 v4, -0x2

    .line 216
    :cond_0
    :goto_0
    return-wide v4

    .line 200
    :cond_1
    const-string/jumbo v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->FILEPATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    sget-object v3, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->FILEPATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    goto :goto_0

    .line 213
    .end local v1    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v3

    .line 216
    const-wide/16 v4, -0x3

    goto :goto_0
.end method

.method public static getPhotoUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "sortName"    # Ljava/lang/String;
    .param p2, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "filenameSplits":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->FILEPATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static ioToByte(Ljava/lang/String;)[B
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "bytes":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 141
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 142
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->FILEPATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 94
    .local v3, "oldExif":Landroid/media/ExifInterface;
    if-nez v3, :cond_0

    .line 95
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v5, "oldPath":Ljava/io/File;
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "oldExif":Landroid/media/ExifInterface;
    .local v4, "oldExif":Landroid/media/ExifInterface;
    move-object v3, v4

    .line 103
    .end local v4    # "oldExif":Landroid/media/ExifInterface;
    .end local v5    # "oldPath":Ljava/io/File;
    .restart local v3    # "oldExif":Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->ioToByte(Ljava/lang/String;)[B

    move-result-object v2

    .line 104
    .local v2, "jpegDate":[B
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->Bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 98
    .end local v2    # "jpegDate":[B
    .restart local v5    # "oldPath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadImageByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "sortName"    # Ljava/lang/String;
    .param p2, "updatetime"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    const-string p1, ""

    .line 111
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    const-string p2, ""

    .line 114
    :cond_1
    if-eqz p0, :cond_2

    .line 115
    const-string v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "filenameSplits":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v7, v2

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    .end local v2    # "filenameSplits":[Ljava/lang/String;
    :cond_2
    const-string v7, "local"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get image   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->FILEPATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "filePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 123
    .local v4, "oldExif":Landroid/media/ExifInterface;
    if-nez v4, :cond_3

    .line 124
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v6, "oldPath":Ljava/io/File;
    :try_start_0
    new-instance v5, Landroid/media/ExifInterface;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "oldExif":Landroid/media/ExifInterface;
    .local v5, "oldExif":Landroid/media/ExifInterface;
    move-object v4, v5

    .line 132
    .end local v5    # "oldExif":Landroid/media/ExifInterface;
    .end local v6    # "oldPath":Ljava/io/File;
    .restart local v4    # "oldExif":Landroid/media/ExifInterface;
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->ioToByte(Ljava/lang/String;)[B

    move-result-object v3

    .line 133
    .local v3, "jpegDate":[B
    return-object v3

    .line 127
    .end local v3    # "jpegDate":[B
    .restart local v6    # "oldPath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveImage([BLjava/lang/String;)Z
    .locals 10
    .param p0, "data"    # [B
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 58
    new-instance v0, Ljava/io/File;

    sget-object v7, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->FILEPATH:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "dir":Ljava/io/File;
    const-string v7, "jiaxiaowei"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---------------saveImage       data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",filename:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",FILEPATH:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->FILEPATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, "outputStream":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 62
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 63
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    const-string v6, "jiaxiaowei"

    const-string v7, "file exit"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return v5

    .line 69
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 71
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    if-eqz v4, :cond_2

    .line 81
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v3, v4

    .line 88
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 82
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    move v5, v6

    .line 84
    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    if-eqz v3, :cond_3

    .line 81
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    move v5, v6

    .line 84
    goto :goto_0

    .line 82
    :catch_2
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 84
    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 76
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    if-eqz v3, :cond_4

    .line 81
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    move v5, v6

    .line 84
    goto :goto_0

    .line 82
    :catch_4
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 84
    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_5

    .line 81
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 84
    :cond_5
    throw v5

    .line 82
    :catch_5
    move-exception v1

    .line 83
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 84
    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 75
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 72
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static writeTofiles(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "sortName"    # Ljava/lang/String;

    .prologue
    .line 34
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "filenameSplits":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    :cond_2
    invoke-static {p1}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 40
    .local v0, "bytes":[B
    invoke-static {v0, p2}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->saveImage([BLjava/lang/String;)Z

    goto :goto_0
.end method

.method public static writeTofiles(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    return v1

    .line 45
    :cond_1
    invoke-static {p1}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 46
    .local v0, "bytes":[B
    invoke-static {v0, p2}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->saveImage([BLjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public deleteTempFile()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils$1;-><init>(Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils$1;->start()V

    .line 179
    return-void
.end method
