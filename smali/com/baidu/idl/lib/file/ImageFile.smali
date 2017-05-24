.class public Lcom/baidu/idl/lib/file/ImageFile;
.super Ljava/lang/Object;
.source "ImageFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/idl/lib/file/ImageFile$LoadTask;,
        Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;,
        Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;,
        Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;,
        Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;,
        Lcom/baidu/idl/lib/file/ImageFile$SaveTask;,
        Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;
    }
.end annotation


# static fields
.field private static final ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

.field public static final FILE_NOT_EXSIT:I = -0x2

.field public static final FILE_PATH_NOT_EXIST:I = -0x4

.field private static final IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_ORIENTATION:I = 0x3

.field private static final JPEG_QUALITY:I = 0x5f

.field private static final MAX_CONCURRENT_THREAD_NUM:I = 0x1

.field public static final MIN_SD_CARD_SPACE:J = 0x500000L

.field public static final ORIGINAL_SIZE:I = 0x270f

.field public static final OTHER_ERROR:I = -0x1

.field public static final OUT_OF_MEMORY:I = -0x5

.field public static final SDCARD_FULL:I = -0x7

.field public static final STILL_RUNNING:I = -0x6

.field public static final SUCCESSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageFile"

.field public static final TYPE_JPG:I = 0x0

.field public static final TYPE_PNG:I = 0x1

.field public static final URI_NOT_EXSIT:I = -0x3

.field private static final WHERE_CLAUSE:Ljava/lang/String; = "(mime_type in (?, ?, ?))"

.field private static sImageTaskQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLoadTask:Lcom/baidu/idl/lib/file/ImageFile$LoadTask;

.field private mOnFileLoadedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;

.field private mOnFileSavedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;

.field private mOnSampleFileListener:Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;

.field private mSampleFileTask:Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;

.field private mSaveTask:Lcom/baidu/idl/lib/file/ImageFile$SaveTask;

.field private mThreadNote:Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-array v0, v5, [Ljava/lang/String;

    .line 77
    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    const-string v1, "image/gif"

    aput-object v1, v0, v4

    .line 76
    sput-object v0, Lcom/baidu/idl/lib/file/ImageFile;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 80
    const-string v1, "datetaken"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v4

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    .line 79
    sput-object v0, Lcom/baidu/idl/lib/file/ImageFile;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/idl/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/Set;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/baidu/idl/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1(Lcom/baidu/idl/lib/file/ImageFile;)Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile;->mThreadNote:Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;

    return-object v0
.end method

.method static synthetic access$2(Lcom/baidu/idl/lib/file/ImageFile;)Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile;->mOnFileLoadedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mOnFileLoadedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;

    return-void
.end method

.method static synthetic access$4(Lcom/baidu/idl/lib/file/ImageFile;)Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile;->mOnFileSavedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mOnFileSavedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;

    return-void
.end method

.method static synthetic access$6(Lcom/baidu/idl/lib/file/ImageFile;)Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile;->mOnSampleFileListener:Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mOnSampleFileListener:Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;

    return-void
.end method

.method private static createCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 13
    .param p0, "mContentResolver"    # Landroid/content/ContentResolver;
    .param p1, "mBaseUri"    # Landroid/net/Uri;

    .prologue
    .line 525
    const/4 v11, 0x0

    .line 527
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v4, v0

    .line 529
    .local v4, "args":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 530
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 531
    sget-object v2, Lcom/baidu/idl/lib/file/ImageFile;->IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v3, "(_data=?)"

    .line 532
    invoke-static {}, Lcom/baidu/idl/lib/file/ImageFile;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 530
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .end local v4    # "args":[Ljava/lang/String;
    :goto_0
    move-object v0, v11

    .line 540
    :goto_1
    return-object v0

    .line 534
    :cond_0
    sget-object v7, Lcom/baidu/idl/lib/file/ImageFile;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 535
    const-string v8, "(mime_type in (?, ?, ?))"

    sget-object v9, Lcom/baidu/idl/lib/file/ImageFile;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    invoke-static {}, Lcom/baidu/idl/lib/file/ImageFile;->sortOrder()Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    move-object v6, p1

    .line 534
    invoke-static/range {v5 .. v10}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 537
    :catch_0
    move-exception v12

    .line 538
    .local v12, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static fileScan(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 819
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/idl/lib/file/ImageFile;->fileScan(Landroid/content/Context;Ljava/lang/String;II)V

    .line 820
    return-void
.end method

.method public static fileScan(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "orientation"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 777
    :try_start_0
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 778
    .local v3, "filename":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 779
    .local v4, "filetitle":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 780
    .local v5, "parentFile":Ljava/io/File;
    if-nez v5, :cond_0

    .line 781
    new-instance v5, Ljava/io/File;

    .end local v5    # "parentFile":Ljava/io/File;
    const-string v9, "/"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    .restart local v5    # "parentFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 789
    .local v7, "parentPath":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 790
    .local v6, "parentName":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    const/16 v9, 0x8

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 791
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v9, "description"

    .line 794
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 793
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v9, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 796
    const-string/jumbo v10, "mime_type"

    if-nez p2, :cond_1

    const-string v9, "image/jpeg"

    :goto_0
    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string/jumbo v9, "orientation"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    const-string v9, "bucket_id"

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 800
    const-string v9, "bucket_display_name"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v9, "_data"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 803
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 802
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "filetitle":Ljava/lang/String;
    .end local v5    # "parentFile":Ljava/io/File;
    .end local v6    # "parentName":Ljava/lang/String;
    .end local v7    # "parentPath":Ljava/lang/String;
    .end local v8    # "values":Landroid/content/ContentValues;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "file://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, "fileUri":Ljava/lang/String;
    const-string v9, "%"

    const-string v10, "%25"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 811
    const-string v9, "#"

    const-string v10, "%23"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 812
    const-string v9, " "

    const-string v10, "%20"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 813
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 814
    .local v0, "data":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 815
    invoke-direct {v9, v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 814
    invoke-virtual {p0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 816
    return-void

    .line 797
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "fileUri":Ljava/lang/String;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "filetitle":Ljava/lang/String;
    .restart local v5    # "parentFile":Ljava/io/File;
    .restart local v6    # "parentName":Ljava/lang/String;
    .restart local v7    # "parentPath":Ljava/lang/String;
    .restart local v8    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    const-string v9, "image/png"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 805
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "filetitle":Ljava/lang/String;
    .end local v5    # "parentFile":Ljava/io/File;
    .end local v6    # "parentName":Ljava/lang/String;
    .end local v7    # "parentPath":Ljava/lang/String;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 806
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getBitmapSample(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 216
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 217
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 220
    const-string v7, "ImageFile"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getBitmapSample: uri: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/idl/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 223
    .local v2, "is":Ljava/io/InputStream;
    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 224
    invoke-static {v2, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 225
    const/4 v4, 0x1

    .line 227
    .local v4, "nSample":I
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v7, v8, :cond_0

    .line 228
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 229
    .local v3, "nLong":I
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 234
    .local v5, "nShort":I
    :goto_0
    add-int/lit8 v7, v4, 0x1

    mul-int/2addr v7, p3

    if-gt v5, v7, :cond_1

    add-int/lit8 v7, v4, 0x1

    mul-int/2addr v7, p2

    if-gt v3, v7, :cond_1

    .line 238
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 243
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 244
    iput v4, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 245
    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 246
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 247
    invoke-static {v2, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :goto_2
    return-object v0

    .line 231
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "nLong":I
    .end local v5    # "nShort":I
    :cond_0
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 232
    .restart local v3    # "nLong":I
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 234
    .restart local v5    # "nShort":I
    goto :goto_0

    .line 235
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "ImageFile"

    const-string v8, "file close error"

    invoke-static {v7, v8}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "ImageFile"

    const-string v8, "file close error"

    invoke-static {v7, v8}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getBitmapSample([BII)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 262
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 263
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 265
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 266
    array-length v5, p0

    invoke-static {p0, v7, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 267
    const/4 v2, 0x1

    .line 269
    .local v2, "nSample":I
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v5, v6, :cond_0

    .line 270
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 271
    .local v1, "nLong":I
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 276
    .local v3, "nShort":I
    :goto_0
    add-int/lit8 v5, v2, 0x1

    mul-int/2addr v5, p2

    if-gt v3, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    mul-int/2addr v5, p1

    if-gt v1, v5, :cond_1

    .line 279
    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 280
    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 281
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 282
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 283
    array-length v5, p0

    invoke-static {p0, v7, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0

    .line 273
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "nLong":I
    .end local v3    # "nShort":I
    :cond_0
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 274
    .restart local v1    # "nLong":I
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 276
    .restart local v3    # "nShort":I
    goto :goto_0

    .line 277
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 290
    if-nez p0, :cond_1

    .line 291
    const/4 v1, 0x0

    .line 305
    :cond_0
    :goto_0
    return-object v1

    .line 293
    :cond_1
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 296
    .local v2, "s":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 297
    .local v0, "e":I
    const-string v3, "ImageFile"

    const-string/jumbo v4, "name: %s. s: %d. n:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v8

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 302
    .end local v0    # "e":I
    .end local v2    # "s":I
    .local v1, "file":Ljava/lang/String;
    :goto_1
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 300
    .end local v1    # "file":Ljava/lang/String;
    :cond_2
    move-object v1, p0

    .restart local v1    # "file":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getImageByte(Landroid/graphics/Bitmap;I)[B
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "type"    # I

    .prologue
    .line 365
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 366
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    if-nez p1, :cond_0

    .line 367
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 369
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 370
    .local v0, "b":[B
    return-object v0
.end method

.method public static getImageOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 471
    invoke-static {p0, p1}, Lcom/baidu/idl/lib/file/ImageFile;->getOrientationFromMedia(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 472
    .local v0, "orientation":I
    if-nez v0, :cond_0

    .line 473
    invoke-static {p1}, Lcom/baidu/idl/lib/file/ImageFile;->getOrientationFromExif(Landroid/net/Uri;)I

    move-result v0

    .line 475
    :cond_0
    return v0
.end method

.method private static getOrientationFromExif(Landroid/net/Uri;)I
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 494
    const/4 v2, 0x0

    .line 496
    .local v2, "orientation":I
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, "targetScheme":Ljava/lang/String;
    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 498
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 500
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    .line 501
    const/4 v5, 0x1

    .line 500
    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 499
    invoke-static {v4}, Lcom/baidu/idl/lib/file/Shared;->exifOrientationToDegrees(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 506
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "targetScheme":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getOrientationFromMedia(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 480
    .local v1, "mContentResolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 481
    .local v0, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 483
    .local v2, "orientation":I
    invoke-static {v1, p1}, Lcom/baidu/idl/lib/file/ImageFile;->createCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_1

    .line 485
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 488
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_1
    return v2
.end method

.method public static getRealPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 321
    const-string v1, "ImageFile"

    .line 322
    const-string v2, "getRealPathFromUri: %s"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-static {v1, v2}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 356
    :cond_0
    :goto_0
    return-object v10

    .line 326
    :cond_1
    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v3, v6

    .line 327
    .local v3, "proj":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 329
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 333
    const/4 v4, 0x0

    .line 334
    const/4 v5, 0x0

    .line 335
    const/4 v6, 0x0

    move-object v2, p1

    .line 329
    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 338
    if-nez v8, :cond_2

    .line 358
    if-eqz v8, :cond_0

    .line 359
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 341
    :cond_2
    :try_start_1
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 342
    .local v7, "column_index":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    const/4 v1, -0x1

    if-eq v7, v1, :cond_3

    .line 346
    :try_start_2
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 358
    .local v10, "path":Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_0

    .line 359
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 347
    .end local v10    # "path":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 348
    .local v9, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .restart local v10    # "path":Ljava/lang/String;
    goto :goto_1

    .line 358
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "path":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_0

    .line 359
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 354
    .end local v7    # "column_index":I
    :catch_1
    move-exception v9

    .line 355
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    if-eqz v8, :cond_0

    .line 359
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 357
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 358
    if-eqz v8, :cond_4

    .line 359
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_4
    throw v1
.end method

.method public static getSampleFile(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;,
            Ljava/io/FileNotFoundException;,
            Lcom/baidu/idl/lib/file/OtherException;,
            Lcom/baidu/idl/lib/file/SDCardFullException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/idl/lib/file/ImageFile;->loadImage(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 454
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/16 v2, 0x5f

    invoke-static {p0, v0, p4, v1, v2}, Lcom/baidu/idl/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/net/Uri;

    .line 455
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static isSdcardFull()Z
    .locals 12

    .prologue
    .line 309
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "sdcard":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v2, "file":Ljava/io/File;
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 312
    .local v4, "statFs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v6, v5

    .line 313
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v8, v5

    const-wide/16 v10, 0x4

    sub-long/2addr v8, v10

    .line 312
    mul-long v0, v6, v8

    .line 314
    .local v0, "availableSpare":J
    const-string v5, "----------availableSpare-------------"

    .line 315
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 314
    invoke-static {v5, v6}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-wide/32 v6, 0x500000

    cmp-long v5, v0, v6

    if-gez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static loadImage(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/idl/lib/file/OtherException;,
            Ljava/lang/OutOfMemoryError;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 408
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/idl/lib/file/ImageFile;->getBitmapSample(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 409
    if-nez v0, :cond_0

    .line 410
    new-instance v1, Lcom/baidu/idl/lib/file/OtherException;

    invoke-direct {v1}, Lcom/baidu/idl/lib/file/OtherException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :catch_0
    move-exception v7

    .line 425
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    new-instance v1, Lcom/baidu/idl/lib/file/OtherException;

    invoke-direct {v1}, Lcom/baidu/idl/lib/file/OtherException;-><init>()V

    throw v1

    .line 412
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 413
    invoke-static {v0, p2, p3}, Lcom/baidu/idl/lib/file/ImageFile;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    :goto_0
    invoke-static {p0, p1}, Lcom/baidu/idl/lib/file/ImageFile;->getImageOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 418
    .local v8, "orientation":I
    if-eqz v8, :cond_1

    .line 419
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 420
    .local v5, "mtx":Landroid/graphics/Matrix;
    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 421
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 422
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 421
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 428
    .end local v5    # "mtx":Landroid/graphics/Matrix;
    :cond_1
    return-object v0

    .line 415
    .end local v8    # "orientation":I
    :cond_2
    invoke-static {v0, p3, p2}, Lcom/baidu/idl/lib/file/ImageFile;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public static openImage(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/idl/lib/file/OtherException;,
            Ljava/lang/OutOfMemoryError;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 833
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/baidu/idl/lib/file/ImageFile;->openImage(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static openImage(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fromCamera"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/idl/lib/file/OtherException;,
            Ljava/lang/OutOfMemoryError;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 841
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/idl/lib/file/ImageFile;->getBitmapSample(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 842
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 843
    new-instance v1, Lcom/baidu/idl/lib/file/OtherException;

    invoke-direct {v1}, Lcom/baidu/idl/lib/file/OtherException;-><init>()V

    throw v1

    .line 847
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 848
    invoke-static {v0, p2, p3}, Lcom/baidu/idl/lib/file/ImageFile;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 858
    :goto_0
    invoke-static {p0, p1, p4}, Lcom/baidu/idl/lib/file/QueryImage;->getImageRotationAngleFromMedia2(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v8

    .line 859
    .local v8, "orient":I
    if-eqz v8, :cond_1

    .line 860
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 861
    .local v5, "mtx":Landroid/graphics/Matrix;
    int-to-float v2, v8

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 862
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 863
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 862
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 865
    .end local v5    # "mtx":Landroid/graphics/Matrix;
    :cond_1
    return-object v0

    .line 850
    .end local v8    # "orient":I
    :cond_2
    :try_start_1
    invoke-static {v0, p3, p2}, Lcom/baidu/idl/lib/file/ImageFile;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 852
    :catch_0
    move-exception v7

    .line 854
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 855
    new-instance v1, Lcom/baidu/idl/lib/file/OtherException;

    invoke-direct {v1}, Lcom/baidu/idl/lib/file/OtherException;-><init>()V

    throw v1
.end method

.method private static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/idl/lib/file/OtherException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 611
    .local v5, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 613
    .local v0, "h":I
    int-to-float v6, v5

    int-to-float v7, p1

    div-float v4, v6, v7

    .line 614
    .local v4, "rw":F
    int-to-float v6, v0

    int-to-float v7, p2

    div-float v3, v6, v7

    .line 615
    .local v3, "rh":F
    cmpl-float v6, v4, v3

    if-lez v6, :cond_0

    move v2, v4

    .line 617
    .local v2, "r":F
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v2, v6

    if-gez v6, :cond_1

    .line 618
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 619
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 622
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .end local v2    # "r":F
    :cond_0
    move v2, v3

    .line 615
    goto :goto_0

    .line 622
    .restart local v2    # "r":F
    :cond_1
    invoke-static {p0, v2}, Lcom/baidu/idl/lib/file/ImageFile;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method public static saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/net/Uri;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/idl/lib/file/OtherException;,
            Lcom/baidu/idl/lib/file/SDCardFullException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/baidu/idl/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;IILcom/baidu/idl/lib/file/ExifInfo;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;IILcom/baidu/idl/lib/file/ExifInfo;Z)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "quality"    # I
    .param p5, "exif"    # Lcom/baidu/idl/lib/file/ExifInfo;
    .param p6, "needScan"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/idl/lib/file/OtherException;,
            Lcom/baidu/idl/lib/file/SDCardFullException;
        }
    .end annotation

    .prologue
    .line 386
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 387
    .local v9, "pos":I
    if-gtz v9, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 396
    :goto_0
    return-object v0

    .line 390
    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "dir":Ljava/lang/String;
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 393
    const-string v4, ".png"

    const/4 v5, 0x1

    const/16 v6, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/baidu/idl/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/idl/lib/file/ExifInfo;Z)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_1
    if-nez p3, :cond_2

    .line 396
    const-string v4, ".jpg"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/baidu/idl/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/idl/lib/file/ExifInfo;Z)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_2
    new-instance v0, Lcom/baidu/idl/lib/file/OtherException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/baidu/idl/lib/file/OtherException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;IIZ)Landroid/net/Uri;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "quality"    # I
    .param p5, "needScan"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/idl/lib/file/OtherException;,
            Lcom/baidu/idl/lib/file/SDCardFullException;
        }
    .end annotation

    .prologue
    .line 380
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/baidu/idl/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;IILcom/baidu/idl/lib/file/ExifInfo;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/idl/lib/file/ExifInfo;Z)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "quality"    # I
    .param p7, "exif"    # Lcom/baidu/idl/lib/file/ExifInfo;
    .param p8, "needScan"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/idl/lib/file/OtherException;,
            Lcom/baidu/idl/lib/file/SDCardFullException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {}, Lcom/baidu/idl/lib/file/ImageFile;->isSdcardFull()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 555
    new-instance v5, Lcom/baidu/idl/lib/file/SDCardFullException;

    invoke-direct {v5}, Lcom/baidu/idl/lib/file/SDCardFullException;-><init>()V

    throw v5

    .line 558
    :cond_0
    const-string v5, "\\."

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "nameArr":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_5

    .line 561
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 562
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    const-string/jumbo v6, "png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    .line 563
    const-string/jumbo v6, "tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 564
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 565
    .local v4, "newPath":Ljava/lang/String;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    const-string/jumbo v6, "tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 566
    const/16 p8, 0x0

    .line 572
    :cond_2
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 574
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    .restart local v1    # "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 578
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 579
    .local v2, "fileOS":Ljava/io/FileOutputStream;
    if-nez p5, :cond_6

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    invoke-virtual {p1, v5, p6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 581
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 582
    if-eqz p8, :cond_3

    .line 583
    invoke-static {p0, v4, p5}, Lcom/baidu/idl/lib/file/ImageFile;->fileScan(Landroid/content/Context;Ljava/lang/String;I)V

    .line 589
    :cond_3
    const-string v5, "ImageFile"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "save ok at:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/idl/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    if-eqz p7, :cond_4

    .line 598
    :try_start_1
    invoke-static {v4, p7}, Lcom/baidu/idl/lib/file/ExifUtils;->saveExifToFile(Ljava/lang/String;Lcom/baidu/idl/lib/file/ExifInfo;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 604
    :cond_4
    :goto_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 569
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    .end local v4    # "newPath":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "newPath":Ljava/lang/String;
    goto :goto_0

    .line 580
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "fileOS":Ljava/io/FileOutputStream;
    :cond_6
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 590
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    new-instance v5, Lcom/baidu/idl/lib/file/OtherException;

    const-string v6, "cannot save image"

    invoke-direct {v5, v6}, Lcom/baidu/idl/lib/file/OtherException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 600
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fileOS":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 601
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 433
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 434
    .local v5, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 436
    .local v1, "h":I
    int-to-float v7, v5

    div-float/2addr v7, p1

    float-to-int v6, v7

    .line 437
    .local v6, "w1":I
    int-to-float v7, v1

    div-float/2addr v7, p1

    float-to-int v2, v7

    .line 439
    .local v2, "h1":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 440
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 441
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 442
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 443
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 444
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9, v9, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0, v7, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 447
    return-object v3
.end method

.method public static setFileOrientation(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 826
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/idl/lib/file/ImageFile;->fileScan(Landroid/content/Context;Ljava/lang/String;II)V

    .line 827
    invoke-static {p1, p3}, Lcom/baidu/idl/lib/file/ExifUtils;->setExifOrientation(Ljava/lang/String;I)V

    .line 828
    return-void
.end method

.method private static sortOrder()Ljava/lang/String;
    .locals 4

    .prologue
    .line 510
    const-string v0, " DESC"

    .line 514
    .local v0, "ascending":Ljava/lang/String;
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 520
    .local v1, "dateExpr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", _id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getSampleFileAsync(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/String;ILcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;)I
    .locals 5
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "l"    # Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;

    .prologue
    const/4 v0, 0x0

    .line 186
    iput-object p7, p0, Lcom/baidu/idl/lib/file/ImageFile;->mOnSampleFileListener:Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;

    .line 187
    iget-object v1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mSampleFileTask:Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mSampleFileTask:Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;

    invoke-virtual {v1}, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 189
    :cond_0
    new-instance v1, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;-><init>(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;)V

    iput-object v1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mSampleFileTask:Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mSampleFileTask:Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;

    invoke-virtual {v1}, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2

    .line 192
    const/4 v0, -0x6

    .line 195
    :goto_0
    return v0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mSampleFileTask:Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public loadImageAsync(Landroid/content/Context;Landroid/net/Uri;IILcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "l"    # Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;

    .prologue
    .line 115
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/idl/lib/file/ImageFile;->loadImageAsync(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Object;Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;)I

    move-result v0

    return v0
.end method

.method public loadImageAsync(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Object;Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "tag"    # Ljava/lang/Object;
    .param p6, "l"    # Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 137
    iput-object p6, p0, Lcom/baidu/idl/lib/file/ImageFile;->mOnFileLoadedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;

    .line 138
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile;->mLoadTask:Lcom/baidu/idl/lib/file/ImageFile$LoadTask;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile;->mLoadTask:Lcom/baidu/idl/lib/file/ImageFile$LoadTask;

    invoke-virtual {v0}, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    .line 140
    :cond_0
    new-instance v0, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;-><init>(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$LoadTask;)V

    iput-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile;->mLoadTask:Lcom/baidu/idl/lib/file/ImageFile$LoadTask;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile;->mLoadTask:Lcom/baidu/idl/lib/file/ImageFile$LoadTask;

    invoke-virtual {v0}, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_2

    .line 143
    const/4 v0, -0x6

    .line 153
    :goto_0
    return v0

    .line 145
    :cond_2
    sget-object v2, Lcom/baidu/idl/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;

    monitor-enter v2

    .line 146
    :try_start_0
    new-instance v0, Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;

    iget-object v3, p0, Lcom/baidu/idl/lib/file/ImageFile;->mLoadTask:Lcom/baidu/idl/lib/file/ImageFile$LoadTask;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 147
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    invoke-direct {v0, p0, v3, v4}, Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;-><init>(Lcom/baidu/idl/lib/file/ImageFile;Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 146
    iput-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile;->mThreadNote:Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;

    .line 148
    sget-object v0, Lcom/baidu/idl/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;

    iget-object v3, p0, Lcom/baidu/idl/lib/file/ImageFile;->mThreadNote:Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/baidu/idl/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v7, :cond_3

    .line 150
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile;->mThreadNote:Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;

    iget-object v0, v0, Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;->task:Landroid/os/AsyncTask;

    check-cast v0, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;

    iget-object v3, p0, Lcom/baidu/idl/lib/file/ImageFile;->mThreadNote:Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;

    iget-object v3, v3, Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;->params:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    :cond_3
    monitor-exit v2

    move v0, v1

    .line 153
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveImageAsync(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;ILcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "l"    # Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;

    .prologue
    const/4 v0, 0x0

    .line 172
    iput-object p5, p0, Lcom/baidu/idl/lib/file/ImageFile;->mOnFileSavedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;

    .line 173
    iget-object v1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mSaveTask:Lcom/baidu/idl/lib/file/ImageFile$SaveTask;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mSaveTask:Lcom/baidu/idl/lib/file/ImageFile$SaveTask;

    invoke-virtual {v1}, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 175
    :cond_0
    new-instance v1, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;-><init>(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$SaveTask;)V

    iput-object v1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mSaveTask:Lcom/baidu/idl/lib/file/ImageFile$SaveTask;

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mSaveTask:Lcom/baidu/idl/lib/file/ImageFile$SaveTask;

    invoke-virtual {v1}, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2

    .line 178
    const/4 v0, -0x6

    .line 181
    :goto_0
    return v0

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/baidu/idl/lib/file/ImageFile;->mSaveTask:Lcom/baidu/idl/lib/file/ImageFile$SaveTask;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
