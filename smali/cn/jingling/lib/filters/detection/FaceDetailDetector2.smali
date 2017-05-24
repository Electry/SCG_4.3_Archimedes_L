.class public Lcn/jingling/lib/filters/detection/FaceDetailDetector2;
.super Lcn/jingling/lib/filters/detection/AbstractDetector;
.source "FaceDetailDetector2.java"


# static fields
.field private static mCdnnFkd:Lcom/baidu/CdnnFkd;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 19
    new-instance v1, Lcom/baidu/CdnnFkd;

    invoke-direct {v1}, Lcom/baidu/CdnnFkd;-><init>()V

    sput-object v1, Lcn/jingling/lib/filters/detection/FaceDetailDetector2;->mCdnnFkd:Lcom/baidu/CdnnFkd;

    .line 20
    sget-object v1, Lcn/jingling/lib/filters/detection/FaceDetailDetector2;->mCdnnFkd:Lcom/baidu/CdnnFkd;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 21
    const-string v3, "/face/cdnnfkd_model"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 22
    const-string v4, "/face/facemodel/haarcascade_frontalface_alt_tree.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/baidu/CdnnFkd;->cdnnFkdModelInit(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 23
    .local v0, "state":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 24
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error initial CdnnFkd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/jingling/lib/filters/detection/AbstractDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public detect(Landroid/graphics/Bitmap;)[Landroid/graphics/Point;
    .locals 9
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 37
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/face/test.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 38
    .local v1, "fos":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {p1, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    sget-object v5, Lcn/jingling/lib/filters/detection/FaceDetailDetector2;->mCdnnFkd:Lcom/baidu/CdnnFkd;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/face/test.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/CdnnFkd;->cdnnFkd(Ljava/lang/String;)[I

    move-result-object v4

    .line 45
    .local v4, "ret":[I
    aget v5, v4, v8

    if-gez v5, :cond_0

    .line 46
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Detection failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 39
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "ret":[I
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 42
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "File write error!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 48
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "ret":[I
    :cond_0
    aget v5, v4, v8

    if-nez v5, :cond_2

    .line 49
    const/4 v3, 0x0

    .line 55
    :cond_1
    return-object v3

    .line 51
    :cond_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0x2

    new-array v3, v5, [Landroid/graphics/Point;

    .line 52
    .local v3, "points":[Landroid/graphics/Point;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_1

    .line 53
    new-instance v5, Landroid/graphics/Point;

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v4, v6

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x2

    aget v7, v4, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v2

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 30
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcn/jingling/lib/filters/detection/FaceDetailDetector2;->mCdnnFkd:Lcom/baidu/CdnnFkd;

    invoke-virtual {v0}, Lcom/baidu/CdnnFkd;->cdnnFkdModelRelease()V

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcn/jingling/lib/filters/detection/FaceDetailDetector2;->mCdnnFkd:Lcom/baidu/CdnnFkd;

    .line 63
    return-void
.end method
