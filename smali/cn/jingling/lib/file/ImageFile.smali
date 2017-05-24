.class public Lcn/jingling/lib/file/ImageFile;
.super Ljava/lang/Object;
.source "ImageFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/file/ImageFile$LoadTask;,
        Lcn/jingling/lib/file/ImageFile$OnFileLoadedListener;,
        Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;,
        Lcn/jingling/lib/file/ImageFile$OnSampleFileListener;,
        Lcn/jingling/lib/file/ImageFile$SampleFileTask;,
        Lcn/jingling/lib/file/ImageFile$SaveTask;,
        Lcn/jingling/lib/file/ImageFile$ThreadNote;
    }
.end annotation


# static fields
.field private static final ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

.field public static final FILE_NOT_EXSIT:I = -0x2

.field public static final FILE_PATH_NOT_EXIST:I = -0x4

.field private static final IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_ORIENTATION:I = 0x3

.field public static final JPEG_QUALITY:I = 0x64

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
            "Lcn/jingling/lib/file/ImageFile$ThreadNote;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLoadTask:Lcn/jingling/lib/file/ImageFile$LoadTask;

.field private mOnFileLoadedListener:Lcn/jingling/lib/file/ImageFile$OnFileLoadedListener;

.field private mOnFileSavedListener:Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;

.field private mOnSampleFileListener:Lcn/jingling/lib/file/ImageFile$OnSampleFileListener;

.field private mSampleFileTask:Lcn/jingling/lib/file/ImageFile$SampleFileTask;

.field private mSaveTask:Lcn/jingling/lib/file/ImageFile$SaveTask;

.field private mThreadNote:Lcn/jingling/lib/file/ImageFile$ThreadNote;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-array v0, v5, [Ljava/lang/String;

    .line 79
    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    const-string v1, "image/gif"

    aput-object v1, v0, v4

    .line 78
    sput-object v0, Lcn/jingling/lib/file/ImageFile;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 82
    const-string v1, "datetaken"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v4

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    .line 81
    sput-object v0, Lcn/jingling/lib/file/ImageFile;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/jingling/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/Set;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcn/jingling/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1(Lcn/jingling/lib/file/ImageFile;)Lcn/jingling/lib/file/ImageFile$ThreadNote;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/jingling/lib/file/ImageFile;->mThreadNote:Lcn/jingling/lib/file/ImageFile$ThreadNote;

    return-object v0
.end method

.method static synthetic access$2(Lcn/jingling/lib/file/ImageFile;)Lcn/jingling/lib/file/ImageFile$OnFileLoadedListener;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/jingling/lib/file/ImageFile;->mOnFileLoadedListener:Lcn/jingling/lib/file/ImageFile$OnFileLoadedListener;

    return-object v0
.end method

.method static synthetic access$3(Lcn/jingling/lib/file/ImageFile;Lcn/jingling/lib/file/ImageFile$OnFileLoadedListener;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcn/jingling/lib/file/ImageFile;->mOnFileLoadedListener:Lcn/jingling/lib/file/ImageFile$OnFileLoadedListener;

    return-void
.end method

.method static synthetic access$4(Lcn/jingling/lib/file/ImageFile;)Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcn/jingling/lib/file/ImageFile;->mOnFileSavedListener:Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;

    return-object v0
.end method

.method static synthetic access$5(Lcn/jingling/lib/file/ImageFile;Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcn/jingling/lib/file/ImageFile;->mOnFileSavedListener:Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;

    return-void
.end method

.method static synthetic access$6(Lcn/jingling/lib/file/ImageFile;)Lcn/jingling/lib/file/ImageFile$OnSampleFileListener;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/jingling/lib/file/ImageFile;->mOnSampleFileListener:Lcn/jingling/lib/file/ImageFile$OnSampleFileListener;

    return-object v0
.end method

.method static synthetic access$7(Lcn/jingling/lib/file/ImageFile;Lcn/jingling/lib/file/ImageFile$OnSampleFileListener;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcn/jingling/lib/file/ImageFile;->mOnSampleFileListener:Lcn/jingling/lib/file/ImageFile$OnSampleFileListener;

    return-void
.end method

.method private static createCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 13
    .param p0, "mContentResolver"    # Landroid/content/ContentResolver;
    .param p1, "mBaseUri"    # Landroid/net/Uri;

    .prologue
    .line 610
    const/4 v11, 0x0

    .line 612
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v4, v0

    .line 614
    .local v4, "args":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 615
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 616
    sget-object v2, Lcn/jingling/lib/file/ImageFile;->IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v3, "(_data=?)"

    .line 617
    invoke-static {}, Lcn/jingling/lib/file/ImageFile;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 615
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .end local v4    # "args":[Ljava/lang/String;
    :goto_0
    move-object v0, v11

    .line 625
    :goto_1
    return-object v0

    .line 619
    :cond_0
    sget-object v7, Lcn/jingling/lib/file/ImageFile;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 620
    const-string v8, "(mime_type in (?, ?, ?))"

    sget-object v9, Lcn/jingling/lib/file/ImageFile;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    invoke-static {}, Lcn/jingling/lib/file/ImageFile;->sortOrder()Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    move-object v6, p1

    .line 619
    invoke-static/range {v5 .. v10}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 622
    :catch_0
    move-exception v12

    .line 623
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
    .line 940
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/jingling/lib/file/ImageFile;->fileScan(Landroid/content/Context;Ljava/lang/String;II)V

    .line 941
    return-void
.end method

.method public static fileScan(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "orientation"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 884
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 885
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_2

    .line 886
    :cond_0
    const-string v13, "ImageFile"

    const-string v14, "File Scan failed: file doesn\'t exist or is an empty file."

    invoke-static {v13, v14}, Lcn/jingling/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_1
    :goto_0
    return-void

    .line 890
    :cond_2
    const/4 v11, 0x0

    .line 892
    .local v11, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v13, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 893
    .local v6, "filename":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "."

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 894
    .local v7, "filetitle":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 895
    .local v8, "parentFile":Ljava/io/File;
    if-nez v8, :cond_3

    .line 896
    new-instance v8, Ljava/io/File;

    .end local v8    # "parentFile":Ljava/io/File;
    const-string v13, "/"

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 903
    .restart local v8    # "parentFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 904
    .local v10, "parentPath":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 905
    .local v9, "parentName":Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    const/16 v13, 0x8

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 906
    .local v12, "values":Landroid/content/ContentValues;
    const-string/jumbo v13, "title"

    invoke-virtual {v12, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v13, "_display_name"

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v13, "description"

    .line 909
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 908
    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v13, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 911
    const-string v13, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 912
    const-string v13, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 913
    const-string/jumbo v14, "mime_type"

    if-nez p2, :cond_5

    const-string v13, "image/jpeg"

    :goto_1
    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string/jumbo v13, "orientation"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    const-string v13, "bucket_id"

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    const-string v13, "bucket_display_name"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v13, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 920
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 919
    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 926
    .end local v6    # "filename":Ljava/lang/String;
    .end local v7    # "filetitle":Ljava/lang/String;
    .end local v8    # "parentFile":Ljava/io/File;
    .end local v9    # "parentName":Ljava/lang/String;
    .end local v10    # "parentPath":Ljava/lang/String;
    .end local v12    # "values":Landroid/content/ContentValues;
    :goto_2
    if-eqz v11, :cond_4

    const-string v13, ""

    invoke-virtual {v11, v13}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 927
    :cond_4
    const-string v13, "ImageFile"

    const-string v14, "Insertion into database failed! Now send the broadcast."

    invoke-static {v13, v14}, Lcn/jingling/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "file://"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 930
    .local v5, "fileUri":Ljava/lang/String;
    const-string v13, "%"

    const-string v14, "%25"

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 931
    const-string v13, "#"

    const-string v14, "%23"

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 932
    const-string v13, " "

    const-string v14, "%20"

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 933
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 934
    .local v2, "data":Landroid/net/Uri;
    new-instance v13, Landroid/content/Intent;

    .line 935
    const-string v14, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v13, v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 934
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 914
    .end local v2    # "data":Landroid/net/Uri;
    .end local v5    # "fileUri":Ljava/lang/String;
    .restart local v6    # "filename":Ljava/lang/String;
    .restart local v7    # "filetitle":Ljava/lang/String;
    .restart local v8    # "parentFile":Ljava/io/File;
    .restart local v9    # "parentName":Ljava/lang/String;
    .restart local v10    # "parentPath":Ljava/lang/String;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_1
    const-string v13, "image/png"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 922
    .end local v6    # "filename":Ljava/lang/String;
    .end local v7    # "filetitle":Ljava/lang/String;
    .end local v8    # "parentFile":Ljava/io/File;
    .end local v9    # "parentName":Ljava/lang/String;
    .end local v10    # "parentPath":Ljava/lang/String;
    .end local v12    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 923
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getBitmapSample(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "longEdge"    # I
    .param p3, "shortEdge"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 232
    const-string v2, "ImageFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getBitmapSample: uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 234
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0, p2, p3}, Lcn/jingling/lib/file/ImageFile;->getBitmapSampleValue(Ljava/io/InputStream;II)I

    move-result v1

    .line 235
    .local v1, "sample":I
    const-string v2, "ImageFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sample: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 237
    invoke-static {v0, v1}, Lcn/jingling/lib/file/ImageFile;->getBitmapSample(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static getBitmapSample(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "sample"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 259
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 260
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 261
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 262
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 263
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 264
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 265
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-object v0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ImageFile"

    const-string v4, "file close error"

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBitmapSample([BII)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "longEdge"    # I
    .param p2, "shortEdge"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 251
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {v0, p1, p2}, Lcn/jingling/lib/file/ImageFile;->getBitmapSampleValue(Ljava/io/InputStream;II)I

    move-result v1

    .line 252
    .local v1, "sample":I
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 253
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {v0, v1}, Lcn/jingling/lib/file/ImageFile;->getBitmapSample(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static getBitmapSampleValue(Ljava/io/InputStream;II)I
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "longEdge"    # I
    .param p2, "shortEdge"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 290
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 291
    const/4 v5, 0x0

    invoke-static {p0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 292
    const/4 v2, 0x1

    .line 294
    .local v2, "nSample":I
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v5, v6, :cond_0

    .line 295
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 296
    .local v1, "nLong":I
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 301
    .local v3, "nShort":I
    :goto_0
    add-int/lit8 v5, v2, 0x1

    mul-int/2addr v5, p2

    if-gt v3, v5, :cond_1

    .line 302
    add-int/lit8 v5, v2, 0x1

    mul-int/2addr v5, p1

    .line 301
    if-gt v1, v5, :cond_1

    .line 306
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_1
    return v2

    .line 298
    .end local v1    # "nLong":I
    .end local v3    # "nShort":I
    :cond_0
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 299
    .restart local v1    # "nLong":I
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 301
    .restart local v3    # "nShort":I
    goto :goto_0

    .line 303
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ImageFile"

    const-string v6, "file close error"

    invoke-static {v5, v6}, Lcn/jingling/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 2
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 525
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_2

    .line 526
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 532
    :cond_1
    :goto_0
    return-object v0

    .line 528
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 529
    .local v0, "cfg":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_1

    .line 530
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 315
    if-nez p0, :cond_1

    .line 316
    const/4 v1, 0x0

    .line 330
    :cond_0
    :goto_0
    return-object v1

    .line 318
    :cond_1
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 321
    .local v2, "s":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 322
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

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 327
    .end local v0    # "e":I
    .end local v2    # "s":I
    .local v1, "file":Ljava/lang/String;
    :goto_1
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 325
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
    .line 393
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 394
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    if-nez p1, :cond_0

    .line 395
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 397
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 398
    .local v0, "b":[B
    return-object v0
.end method

.method public static getImageOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 556
    invoke-static {p0, p1}, Lcn/jingling/lib/file/ImageFile;->getOrientationFromMedia(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 557
    .local v0, "orientation":I
    if-nez v0, :cond_0

    .line 558
    invoke-static {p1}, Lcn/jingling/lib/file/ImageFile;->getOrientationFromExif(Landroid/net/Uri;)I

    move-result v0

    .line 560
    :cond_0
    return v0
.end method

.method private static getOrientationFromExif(Landroid/net/Uri;)I
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 579
    const/4 v2, 0x0

    .line 581
    .local v2, "orientation":I
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "targetScheme":Ljava/lang/String;
    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 585
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    .line 586
    const/4 v5, 0x1

    .line 585
    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 584
    invoke-static {v4}, Lcn/jingling/lib/file/Shared;->exifOrientationToDegrees(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 591
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "targetScheme":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getOrientationFromMedia(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 565
    .local v1, "mContentResolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 566
    .local v0, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 568
    .local v2, "orientation":I
    invoke-static {v1, p1}, Lcn/jingling/lib/file/ImageFile;->createCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 569
    if-eqz v0, :cond_1

    .line 570
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 573
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 575
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

    .line 353
    const-string v1, "ImageFile"

    .line 354
    const-string v2, "getRealPathFromUri: %s"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v1, v2}, Lcn/jingling/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 388
    :cond_0
    :goto_0
    return-object v10

    .line 358
    :cond_1
    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v3, v6

    .line 359
    .local v3, "proj":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 361
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 365
    const/4 v4, 0x0

    .line 366
    const/4 v5, 0x0

    .line 367
    const/4 v6, 0x0

    move-object v2, p1

    .line 361
    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 370
    if-eqz v8, :cond_0

    .line 373
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 374
    .local v7, "column_index":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    const/4 v1, -0x1

    if-eq v7, v1, :cond_0

    .line 378
    :try_start_1
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .local v10, "path":Ljava/lang/String;
    goto :goto_0

    .line 379
    .end local v10    # "path":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 380
    .local v9, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .restart local v10    # "path":Ljava/lang/String;
    goto :goto_0

    .line 386
    .end local v7    # "column_index":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "path":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 387
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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
            Lcn/jingling/lib/file/OtherException;,
            Lcn/jingling/lib/file/SDCardFullException;
        }
    .end annotation

    .prologue
    .line 512
    invoke-static {p0, p1, p2, p3}, Lcn/jingling/lib/file/ImageFile;->loadImage(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 513
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {p0, v0, p4, v1, v2}, Lcn/jingling/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/net/Uri;

    .line 514
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static isSdcardFull()Z
    .locals 12

    .prologue
    .line 335
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "sdcard":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "file":Ljava/io/File;
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 338
    .local v4, "statFs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v6, v5

    .line 339
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v8, v5

    const-wide/16 v10, 0x4

    sub-long/2addr v8, v10

    .line 338
    mul-long v0, v6, v8

    .line 341
    .local v0, "availableSpare":J
    const-string v5, "----------availableSpare-------------"

    .line 342
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 341
    invoke-static {v5, v6}, Lcn/jingling/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v5, "----------availableSpare-------------"

    .line 344
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 343
    invoke-static {v5, v6}, Lcn/jingling/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v5, "----------availableSpare-------------"

    .line 346
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 345
    invoke-static {v5, v6}, Lcn/jingling/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
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
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/jingling/lib/file/OtherException;,
            Ljava/lang/OutOfMemoryError;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, p3}, Lcn/jingling/lib/file/ImageFile;->getBitmapSample(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 471
    if-nez v0, :cond_0

    .line 472
    new-instance v1, Lcn/jingling/lib/file/OtherException;

    invoke-direct {v1}, Lcn/jingling/lib/file/OtherException;-><init>()V

    throw v1

    .line 474
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 475
    invoke-static {v0, p2, p3}, Lcn/jingling/lib/file/ImageFile;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 479
    :goto_0
    invoke-static {p0, p1}, Lcn/jingling/lib/file/ImageFile;->getImageOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .line 480
    .local v7, "orientation":I
    if-eqz v7, :cond_1

    .line 481
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 482
    .local v5, "mtx":Landroid/graphics/Matrix;
    int-to-float v2, v7

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 483
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 484
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 483
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 486
    .end local v5    # "mtx":Landroid/graphics/Matrix;
    :cond_1
    return-object v0

    .line 477
    .end local v7    # "orientation":I
    :cond_2
    invoke-static {v0, p3, p2}, Lcn/jingling/lib/file/ImageFile;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/jingling/lib/file/OtherException;
        }
    .end annotation

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 713
    .local v5, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 715
    .local v0, "h":I
    int-to-float v6, v5

    int-to-float v7, p1

    div-float v4, v6, v7

    .line 716
    .local v4, "rw":F
    int-to-float v6, v0

    int-to-float v7, p2

    div-float v3, v6, v7

    .line 717
    .local v3, "rh":F
    cmpl-float v6, v4, v3

    if-lez v6, :cond_1

    move v2, v4

    .line 719
    .local v2, "r":F
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v2, v6

    if-gez v6, :cond_2

    .line 720
    invoke-static {p0}, Lcn/jingling/lib/file/ImageFile;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 721
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 722
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 726
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-object v1

    .end local v2    # "r":F
    :cond_1
    move v2, v3

    .line 717
    goto :goto_0

    .line 726
    .restart local v2    # "r":F
    :cond_2
    invoke-static {p0, v2}, Lcn/jingling/lib/file/ImageFile;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method public static rotateOrFlipImage(Lcn/jingling/sdkdemo/utils/RotateOrFlipType;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "rotateOrFlipType"    # Lcn/jingling/sdkdemo/utils/RotateOrFlipType;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isNeedToRecycle"    # Z

    .prologue
    const/16 v2, 0x9

    const/high16 v1, -0x40800000    # -1.0f

    .line 955
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 956
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v8, 0x0

    .line 958
    .local v8, "newBitmap":Landroid/graphics/Bitmap;
    sget-object v0, Lcn/jingling/sdkdemo/utils/RotateOrFlipType;->CLOCKWISE:Lcn/jingling/sdkdemo/utils/RotateOrFlipType;

    if-ne p0, v0, :cond_2

    .line 960
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 983
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 984
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 986
    .local v4, "height":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 987
    const/4 v6, 0x1

    move-object v0, p1

    .line 986
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 989
    if-eqz p2, :cond_1

    .line 991
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 992
    const/4 p1, 0x0

    .line 1001
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_1
    :goto_1
    return-object v8

    .line 962
    :cond_2
    sget-object v0, Lcn/jingling/sdkdemo/utils/RotateOrFlipType;->ANTICLOCKWISE:Lcn/jingling/sdkdemo/utils/RotateOrFlipType;

    if-ne p0, v0, :cond_3

    .line 964
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 966
    :cond_3
    sget-object v0, Lcn/jingling/sdkdemo/utils/RotateOrFlipType;->LEFT_RIGHT:Lcn/jingling/sdkdemo/utils/RotateOrFlipType;

    if-ne p0, v0, :cond_4

    .line 968
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_0

    .line 971
    :cond_4
    sget-object v0, Lcn/jingling/sdkdemo/utils/RotateOrFlipType;->UP_DOWN:Lcn/jingling/sdkdemo/utils/RotateOrFlipType;

    if-ne p0, v0, :cond_5

    .line 973
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_0

    .line 976
    :cond_5
    sget-object v0, Lcn/jingling/sdkdemo/utils/RotateOrFlipType;->UP_DOWN_AND_LEFT_RIGHT:Lcn/jingling/sdkdemo/utils/RotateOrFlipType;

    if-ne p0, v0, :cond_0

    .line 978
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 994
    :catch_0
    move-exception v7

    .line 996
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 997
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v7

    .line 998
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 968
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 973
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
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
            Lcn/jingling/lib/file/OtherException;,
            Lcn/jingling/lib/file/SDCardFullException;
        }
    .end annotation

    .prologue
    .line 413
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcn/jingling/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;IILcn/jingling/lib/file/ExifInfo;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;IILcn/jingling/lib/file/ExifInfo;Z)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "quality"    # I
    .param p5, "exif"    # Lcn/jingling/lib/file/ExifInfo;
    .param p6, "needScan"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/jingling/lib/file/OtherException;,
            Lcn/jingling/lib/file/SDCardFullException;
        }
    .end annotation

    .prologue
    .line 449
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 450
    .local v9, "pos":I
    if-gtz v9, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 459
    :goto_0
    return-object v0

    .line 453
    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "dir":Ljava/lang/String;
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 456
    const-string v4, ".png"

    const/4 v5, 0x1

    const/16 v6, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcn/jingling/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/jingling/lib/file/ExifInfo;Z)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 458
    :cond_1
    if-nez p3, :cond_2

    .line 459
    const-string v4, ".jpg"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcn/jingling/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/jingling/lib/file/ExifInfo;Z)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_2
    new-instance v0, Lcn/jingling/lib/file/OtherException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcn/jingling/lib/file/OtherException;-><init>(Ljava/lang/String;)V

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
            Lcn/jingling/lib/file/OtherException;,
            Lcn/jingling/lib/file/SDCardFullException;
        }
    .end annotation

    .prologue
    .line 431
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcn/jingling/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;IILcn/jingling/lib/file/ExifInfo;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/jingling/lib/file/ExifInfo;Z)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "quality"    # I
    .param p7, "exif"    # Lcn/jingling/lib/file/ExifInfo;
    .param p8, "needScan"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/jingling/lib/file/OtherException;,
            Lcn/jingling/lib/file/SDCardFullException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-static {}, Lcn/jingling/lib/file/ImageFile;->isSdcardFull()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 654
    new-instance v5, Lcn/jingling/lib/file/SDCardFullException;

    invoke-direct {v5}, Lcn/jingling/lib/file/SDCardFullException;-><init>()V

    throw v5

    .line 657
    :cond_0
    if-gtz p6, :cond_1

    .line 658
    const/16 p6, 0x64

    .line 661
    :cond_1
    const-string v5, "\\."

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "nameArr":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_6

    .line 664
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 665
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    const-string/jumbo v6, "png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    .line 666
    const-string/jumbo v6, "tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 667
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, "newPath":Ljava/lang/String;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    const-string/jumbo v6, "tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 669
    const/16 p8, 0x0

    .line 675
    :cond_3
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 676
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 677
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .restart local v1    # "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 681
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 682
    .local v2, "fileOS":Ljava/io/FileOutputStream;
    if-nez p5, :cond_7

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    invoke-virtual {p1, v5, p6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 684
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 685
    if-eqz p8, :cond_4

    .line 686
    invoke-static {p0, v4, p5}, Lcn/jingling/lib/file/ImageFile;->fileScan(Landroid/content/Context;Ljava/lang/String;I)V

    .line 692
    :cond_4
    const-string v5, "ImageFile"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "save ok at:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    if-eqz p7, :cond_5

    .line 701
    :try_start_1
    invoke-static {v4, p7}, Lcn/jingling/lib/file/ExifUtils;->saveExifToFile(Ljava/lang/String;Lcn/jingling/lib/file/ExifInfo;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 707
    :cond_5
    :goto_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 672
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    .end local v4    # "newPath":Ljava/lang/String;
    :cond_6
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

    .line 683
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "fileOS":Ljava/io/FileOutputStream;
    :cond_7
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 693
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 695
    new-instance v5, Lcn/jingling/lib/file/OtherException;

    const-string v6, "cannot save image"

    invoke-direct {v5, v6}, Lcn/jingling/lib/file/OtherException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 703
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fileOS":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 704
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

    .line 491
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 492
    .local v5, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 494
    .local v1, "h":I
    int-to-float v7, v5

    div-float/2addr v7, p1

    float-to-int v6, v7

    .line 495
    .local v6, "w1":I
    int-to-float v7, v1

    div-float/2addr v7, p1

    float-to-int v2, v7

    .line 497
    .local v2, "h1":I
    invoke-static {p0}, Lcn/jingling/lib/file/ImageFile;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 498
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 499
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 500
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 501
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 502
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9, v9, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0, v7, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 505
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 506
    return-object v3
.end method

.method public static setFileOrientation(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 948
    invoke-static {p0, p1, p2, p3}, Lcn/jingling/lib/file/ImageFile;->fileScan(Landroid/content/Context;Ljava/lang/String;II)V

    .line 949
    invoke-static {p1, p3}, Lcn/jingling/lib/file/ExifUtils;->setExifOrientation(Ljava/lang/String;I)V

    .line 950
    return-void
.end method

.method private static sortOrder()Ljava/lang/String;
    .locals 4

    .prologue
    .line 595
    const-string v0, " DESC"

    .line 599
    .local v0, "ascending":Ljava/lang/String;
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 605
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
.method public getSampleFileAsync(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/String;ILcn/jingling/lib/file/ImageFile$OnSampleFileListener;)I
    .locals 5
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "l"    # Lcn/jingling/lib/file/ImageFile$OnSampleFileListener;

    .prologue
    const/4 v0, 0x0

    .line 202
    iput-object p7, p0, Lcn/jingling/lib/file/ImageFile;->mOnSampleFileListener:Lcn/jingling/lib/file/ImageFile$OnSampleFileListener;

    .line 203
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSampleFileTask:Lcn/jingling/lib/file/ImageFile$SampleFileTask;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSampleFileTask:Lcn/jingling/lib/file/ImageFile$SampleFileTask;

    invoke-virtual {v1}, Lcn/jingling/lib/file/ImageFile$SampleFileTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 205
    :cond_0
    new-instance v1, Lcn/jingling/lib/file/ImageFile$SampleFileTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/jingling/lib/file/ImageFile$SampleFileTask;-><init>(Lcn/jingling/lib/file/ImageFile;Lcn/jingling/lib/file/ImageFile$SampleFileTask;)V

    iput-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSampleFileTask:Lcn/jingling/lib/file/ImageFile$SampleFileTask;

    .line 207
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSampleFileTask:Lcn/jingling/lib/file/ImageFile$SampleFileTask;

    invoke-virtual {v1}, Lcn/jingling/lib/file/ImageFile$SampleFileTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2

    .line 208
    const/4 v0, -0x6

    .line 211
    :goto_0
    return v0

    .line 210
    :cond_2
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSampleFileTask:Lcn/jingling/lib/file/ImageFile$SampleFileTask;

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

    invoke-virtual {v1, v2}, Lcn/jingling/lib/file/ImageFile$SampleFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public loadImageAsync(Landroid/content/Context;Landroid/net/Uri;IILcn/jingling/lib/file/ImageFile$OnFileLoadedListener;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "l"    # Lcn/jingling/lib/file/ImageFile$OnFileLoadedListener;

    .prologue
    .line 117
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcn/jingling/lib/file/ImageFile;->loadImageAsync(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Object;Lcn/jingling/lib/file/ImageFile$OnFileLoadedListener;)I

    move-result v0

    return v0
.end method

.method public loadImageAsync(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Object;Lcn/jingling/lib/file/ImageFile$OnFileLoadedListener;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "tag"    # Ljava/lang/Object;
    .param p6, "l"    # Lcn/jingling/lib/file/ImageFile$OnFileLoadedListener;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 139
    iput-object p6, p0, Lcn/jingling/lib/file/ImageFile;->mOnFileLoadedListener:Lcn/jingling/lib/file/ImageFile$OnFileLoadedListener;

    .line 140
    iget-object v0, p0, Lcn/jingling/lib/file/ImageFile;->mLoadTask:Lcn/jingling/lib/file/ImageFile$LoadTask;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/jingling/lib/file/ImageFile;->mLoadTask:Lcn/jingling/lib/file/ImageFile$LoadTask;

    invoke-virtual {v0}, Lcn/jingling/lib/file/ImageFile$LoadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    .line 142
    :cond_0
    new-instance v0, Lcn/jingling/lib/file/ImageFile$LoadTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcn/jingling/lib/file/ImageFile$LoadTask;-><init>(Lcn/jingling/lib/file/ImageFile;Lcn/jingling/lib/file/ImageFile$LoadTask;)V

    iput-object v0, p0, Lcn/jingling/lib/file/ImageFile;->mLoadTask:Lcn/jingling/lib/file/ImageFile$LoadTask;

    .line 144
    :cond_1
    iget-object v0, p0, Lcn/jingling/lib/file/ImageFile;->mLoadTask:Lcn/jingling/lib/file/ImageFile$LoadTask;

    invoke-virtual {v0}, Lcn/jingling/lib/file/ImageFile$LoadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_2

    .line 145
    const/4 v0, -0x6

    .line 155
    :goto_0
    return v0

    .line 147
    :cond_2
    sget-object v2, Lcn/jingling/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;

    monitor-enter v2

    .line 148
    :try_start_0
    new-instance v0, Lcn/jingling/lib/file/ImageFile$ThreadNote;

    iget-object v3, p0, Lcn/jingling/lib/file/ImageFile;->mLoadTask:Lcn/jingling/lib/file/ImageFile$LoadTask;

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

    .line 149
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    invoke-direct {v0, p0, v3, v4}, Lcn/jingling/lib/file/ImageFile$ThreadNote;-><init>(Lcn/jingling/lib/file/ImageFile;Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 148
    iput-object v0, p0, Lcn/jingling/lib/file/ImageFile;->mThreadNote:Lcn/jingling/lib/file/ImageFile$ThreadNote;

    .line 150
    sget-object v0, Lcn/jingling/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;

    iget-object v3, p0, Lcn/jingling/lib/file/ImageFile;->mThreadNote:Lcn/jingling/lib/file/ImageFile$ThreadNote;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcn/jingling/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v7, :cond_3

    .line 152
    iget-object v0, p0, Lcn/jingling/lib/file/ImageFile;->mThreadNote:Lcn/jingling/lib/file/ImageFile$ThreadNote;

    iget-object v0, v0, Lcn/jingling/lib/file/ImageFile$ThreadNote;->task:Landroid/os/AsyncTask;

    check-cast v0, Lcn/jingling/lib/file/ImageFile$LoadTask;

    iget-object v3, p0, Lcn/jingling/lib/file/ImageFile;->mThreadNote:Lcn/jingling/lib/file/ImageFile$ThreadNote;

    iget-object v3, v3, Lcn/jingling/lib/file/ImageFile$ThreadNote;->params:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcn/jingling/lib/file/ImageFile$LoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    :cond_3
    monitor-exit v2

    move v0, v1

    .line 155
    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveImageAsync(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;IILcn/jingling/lib/file/ImageFile$OnFileSavedListener;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "quality"    # I
    .param p6, "l"    # Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;

    .prologue
    const/4 v0, 0x0

    .line 188
    iput-object p6, p0, Lcn/jingling/lib/file/ImageFile;->mOnFileSavedListener:Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;

    .line 189
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSaveTask:Lcn/jingling/lib/file/ImageFile$SaveTask;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSaveTask:Lcn/jingling/lib/file/ImageFile$SaveTask;

    invoke-virtual {v1}, Lcn/jingling/lib/file/ImageFile$SaveTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 191
    :cond_0
    new-instance v1, Lcn/jingling/lib/file/ImageFile$SaveTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/jingling/lib/file/ImageFile$SaveTask;-><init>(Lcn/jingling/lib/file/ImageFile;Lcn/jingling/lib/file/ImageFile$SaveTask;)V

    iput-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSaveTask:Lcn/jingling/lib/file/ImageFile$SaveTask;

    .line 193
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSaveTask:Lcn/jingling/lib/file/ImageFile$SaveTask;

    invoke-virtual {v1}, Lcn/jingling/lib/file/ImageFile$SaveTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2

    .line 194
    const/4 v0, -0x6

    .line 197
    :goto_0
    return v0

    .line 196
    :cond_2
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSaveTask:Lcn/jingling/lib/file/ImageFile$SaveTask;

    const/4 v2, 0x5

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

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcn/jingling/lib/file/ImageFile$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public saveImageAsync(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;ILcn/jingling/lib/file/ImageFile$OnFileSavedListener;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "l"    # Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;

    .prologue
    const/4 v0, 0x0

    .line 174
    iput-object p5, p0, Lcn/jingling/lib/file/ImageFile;->mOnFileSavedListener:Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;

    .line 175
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSaveTask:Lcn/jingling/lib/file/ImageFile$SaveTask;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSaveTask:Lcn/jingling/lib/file/ImageFile$SaveTask;

    invoke-virtual {v1}, Lcn/jingling/lib/file/ImageFile$SaveTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 177
    :cond_0
    new-instance v1, Lcn/jingling/lib/file/ImageFile$SaveTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/jingling/lib/file/ImageFile$SaveTask;-><init>(Lcn/jingling/lib/file/ImageFile;Lcn/jingling/lib/file/ImageFile$SaveTask;)V

    iput-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSaveTask:Lcn/jingling/lib/file/ImageFile$SaveTask;

    .line 179
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSaveTask:Lcn/jingling/lib/file/ImageFile$SaveTask;

    invoke-virtual {v1}, Lcn/jingling/lib/file/ImageFile$SaveTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2

    .line 180
    const/4 v0, -0x6

    .line 183
    :goto_0
    return v0

    .line 182
    :cond_2
    iget-object v1, p0, Lcn/jingling/lib/file/ImageFile;->mSaveTask:Lcn/jingling/lib/file/ImageFile$SaveTask;

    const/4 v2, 0x5

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

    const/4 v3, 0x4

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcn/jingling/lib/file/ImageFile$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
