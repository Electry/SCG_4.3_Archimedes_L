.class public Lcn/jingling/lib/filters/detection/FaceDetailDetector;
.super Lcn/jingling/lib/filters/detection/AbstractDetector;
.source "FaceDetailDetector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceDetailDetector"


# instance fields
.field private mProcessor:Lcom/lmd/handler/LMDHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/jingling/lib/filters/detection/AbstractDetector;-><init>()V

    return-void
.end method

.method private static generateFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFile"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 71
    .local v5, "is":Ljava/io/InputStream;
    const-string v7, "face_detail"

    .line 72
    const/4 v8, 0x0

    .line 71
    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 73
    .local v2, "cascadeDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "face_detail"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v3, "cascadeFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    .local v6, "os":Ljava/io/FileOutputStream;
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 78
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    .line 81
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 88
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "cascadeDir":Ljava/io/File;
    .end local v3    # "cascadeFile":Ljava/io/File;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/FileOutputStream;
    :goto_1
    return-object v7

    .line 79
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "cascadeDir":Ljava/io/File;
    .restart local v3    # "cascadeFile":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "cascadeDir":Ljava/io/File;
    .end local v3    # "cascadeFile":Ljava/io/File;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 86
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static getZoomVal(II)F
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 92
    if-ge p0, p1, :cond_1

    move v1, p0

    .line 93
    .local v1, "minsize":I
    :goto_0
    const v0, 0x3fa66666    # 1.3f

    .line 94
    .local v0, "fScale":F
    const/16 v2, 0x780

    if-lt v1, v2, :cond_2

    .line 95
    const/high16 v0, 0x40c00000    # 6.0f

    .line 102
    :cond_0
    :goto_1
    return v0

    .end local v0    # "fScale":F
    .end local v1    # "minsize":I
    :cond_1
    move v1, p1

    .line 92
    goto :goto_0

    .line 96
    .restart local v0    # "fScale":F
    .restart local v1    # "minsize":I
    :cond_2
    const/16 v2, 0x400

    if-lt v1, v2, :cond_3

    .line 97
    const/high16 v0, 0x40900000    # 4.5f

    goto :goto_1

    .line 98
    :cond_3
    const/16 v2, 0x280

    if-lt v1, v2, :cond_4

    .line 99
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_1

    .line 100
    :cond_4
    const/16 v2, 0x140

    if-lt v1, v2, :cond_0

    .line 101
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1
.end method


# virtual methods
.method public detect(Landroid/graphics/Bitmap;)[Landroid/graphics/Point;
    .locals 14
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 35
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 36
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 37
    .local v1, "pixels":[I
    mul-int v0, v3, v7

    mul-int/lit8 v0, v0, 0x3

    new-array v8, v0, [B

    .local v8, "bgr":[B
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 38
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 39
    invoke-static {v1, v8, v3, v7}, Lcn/jingling/lib/filters/CMTProcessor;->transToReversedBGR([I[BII)V

    .line 40
    const/4 v1, 0x0

    .line 42
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/imagestream.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 43
    .local v11, "os":Ljava/io/OutputStream;
    invoke-virtual {v11, v8}, Ljava/io/OutputStream;->write([B)V

    .line 44
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 45
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v11    # "os":Ljava/io/OutputStream;
    :goto_0
    iget-object v0, p0, Lcn/jingling/lib/filters/detection/FaceDetailDetector;->mProcessor:Lcom/lmd/handler/LMDHandler;

    invoke-static {v3, v7}, Lcn/jingling/lib/filters/detection/FaceDetailDetector;->getZoomVal(II)F

    move-result v2

    invoke-virtual {v0, v8, v3, v7, v2}, Lcom/lmd/handler/LMDHandler;->LMDWorker([BIIF)[I

    move-result-object v13

    .line 54
    .local v13, "ret":[I
    const/4 v8, 0x0

    .line 55
    array-length v0, v13

    new-array v12, v0, [Landroid/graphics/Point;

    .line 56
    .local v12, "points":[Landroid/graphics/Point;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v13

    div-int/lit8 v0, v0, 0x2

    if-lt v10, v0, :cond_0

    .line 59
    return-object v12

    .line 46
    .end local v10    # "i":I
    .end local v12    # "points":[Landroid/graphics/Point;
    .end local v13    # "ret":[I
    :catch_0
    move-exception v9

    .line 48
    .local v9, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 51
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v10    # "i":I
    .restart local v12    # "points":[Landroid/graphics/Point;
    .restart local v13    # "ret":[I
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    mul-int/lit8 v2, v10, 0x2

    aget v2, v13, v2

    mul-int/lit8 v4, v10, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, v13, v4

    invoke-direct {v0, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v12, v10

    .line 56
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v1, Lcom/lmd/handler/LMDHandler;

    invoke-direct {v1}, Lcom/lmd/handler/LMDHandler;-><init>()V

    iput-object v1, p0, Lcn/jingling/lib/filters/detection/FaceDetailDetector;->mProcessor:Lcom/lmd/handler/LMDHandler;

    .line 28
    iget-object v1, p0, Lcn/jingling/lib/filters/detection/FaceDetailDetector;->mProcessor:Lcom/lmd/handler/LMDHandler;

    const-string v2, "LMD.mdl"

    invoke-static {p1, v2}, Lcn/jingling/lib/filters/detection/FaceDetailDetector;->generateFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lmd/handler/LMDHandler;->LMDInitHandler(Ljava/lang/String;)Z

    move-result v0

    .line 29
    .local v0, "init":Z
    const-string v1, "FaceDetailDetector"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/jingling/lib/filters/detection/FaceDetailDetector;->mProcessor:Lcom/lmd/handler/LMDHandler;

    invoke-virtual {v0}, Lcom/lmd/handler/LMDHandler;->LMDDestoryHandler()V

    .line 65
    return-void
.end method
