.class public Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;
.super Ljava/lang/Object;
.source "PicPostProcessJNI.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mPicPostProcessJni:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

.field private static mRefCount:I


# instance fields
.field private final FILE_MAX_SIZE:I

.field private mContext:Landroid/content/Context;

.field private mDstBitmap:Landroid/graphics/Bitmap;

.field private mEyeLinerColorValue:I

.field private mModelDataFileName:Ljava/lang/String;

.field private mOutLineFileName:Ljava/lang/String;

.field private mSrcDataLen:I

.field private mSrcPicHeight:I

.field private mSrcPicWidth:I

.field private mUtil:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    const-string v1, "PicPostProcessJNI"

    sput-object v1, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    .line 39
    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mPicPostProcessJni:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    .line 41
    const/4 v1, 0x0

    sput v1, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    .line 79
    :try_start_0
    const-string v1, "LeCSC"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 80
    const-string v1, "Leskia"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 81
    const-string v1, "LeImage"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 82
    const-string v1, "arcsoft_flawless_face"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "scg_facebeauty_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 84
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 85
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t loadLibrary \r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mContext:Landroid/content/Context;

    .line 18
    const-string/jumbo v0, "outline.dat"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mOutLineFileName:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "makeup_basic.dat"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mModelDataFileName:Ljava/lang/String;

    .line 23
    const v0, 0xc800

    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->FILE_MAX_SIZE:I

    .line 25
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mDstBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput v1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mSrcPicWidth:I

    .line 30
    iput v1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mSrcPicHeight:I

    .line 33
    iput v1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mSrcDataLen:I

    .line 35
    iput v1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mEyeLinerColorValue:I

    .line 37
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mUtil:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;

    .line 72
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mUtil:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0909

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mEyeLinerColorValue:I

    .line 75
    return-void
.end method

.method private final native arcsoftInit([B[B)J
.end method

.method private final native arcsoftPreProcessFace(Landroid/graphics/Bitmap;)J
.end method

.method private final native arcsoftProcessFace(Landroid/graphics/Bitmap;Ljava/util/ArrayList;[ILjava/util/ArrayList;I)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;",
            ">;I)J"
        }
    .end annotation
.end method

.method private final native arcsoftProcessFaceFromJpegData([BIIILjava/util/ArrayList;[ILjava/util/ArrayList;I)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;",
            ">;I)[B"
        }
    .end annotation
.end method

.method private final native arcsoftProcessFaceFromYUVData(Z[BIIILjava/util/ArrayList;[ILjava/util/ArrayList;I)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[BIII",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;",
            ">;I)[B"
        }
    .end annotation
.end method

.method private final native arcsoftSetParam(IIIIIIIIZ)J
.end method

.method private final native arcsoftUninit()J
.end method

.method public static createPicPostProcessJNI(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mPicPostProcessJni:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mPicPostProcessJni:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    .line 49
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mPicPostProcessJni:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->picPostProcess_Init()J

    .line 50
    sget v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    .line 51
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if createPicPostProcessJNI() mRefCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mPicPostProcessJni:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    :goto_0
    return-object v0

    .line 53
    :cond_1
    sget v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    .line 54
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "else createPicPostProcessJNI() mRefCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mPicPostProcessJni:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    goto :goto_0
.end method

.method public static destroyPicPostProcess()V
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyPicPostProcess() mRefCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    .line 63
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyPicPostProcess() --mRefCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mPicPostProcessJni:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->picPostProcess_Uninit()J

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mPicPostProcessJni:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    .line 68
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyPicPostProcess() mRefCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method private picPostProcess_Init()J
    .locals 7

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "initOutlineData":[B
    const/4 v0, 0x0

    .line 92
    .local v0, "initModelData":[B
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mUtil:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mOutLineFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;->getInitData(Ljava/lang/String;)[B

    move-result-object v1

    .line 93
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mUtil:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mModelDataFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;->getInitData(Ljava/lang/String;)[B

    move-result-object v0

    .line 95
    sget-object v4, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pic_Post_Process_Init initOutlineData.length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v4, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pic_Post_Process_Init initModelData.length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->arcsoftInit([B[B)J

    move-result-wide v2

    .line 99
    .local v2, "res":J
    sget-object v4, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arcsoftInit so return res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-wide v2
.end method

.method private picPostProcess_Uninit()J
    .locals 5

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->arcsoftUninit()J

    move-result-wide v0

    .line 105
    .local v0, "res":J
    sget-object v2, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pic_Post_Process_Uninit so return res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-wide v0
.end method


# virtual methods
.method public arcsoftProcessFace(Ljava/util/ArrayList;[ILjava/util/ArrayList;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p2, "faceRoll"    # [I
    .param p4, "faceNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;",
            ">;I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "faceRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .local p3, "arrParam":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;>;"
    const/4 v7, -0x1

    .line 319
    .local v7, "res":I
    iget v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mSrcPicWidth:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mSrcPicHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mDstBitmap:Landroid/graphics/Bitmap;

    .line 321
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mDstBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mDstBitmap.getWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mDstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mDstBitmap.getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mDstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 327
    sget-object v1, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceRect.left = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v1, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceRect.top  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v1, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceRect.right  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v1, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceRect.bottom  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mDstBitmap:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->arcsoftProcessFace(Landroid/graphics/Bitmap;Ljava/util/ArrayList;[ILjava/util/ArrayList;I)J

    move-result-wide v0

    long-to-int v7, v0

    .line 334
    if-eqz v7, :cond_2

    .line 335
    const/4 v0, 0x0

    .line 342
    :goto_1
    return-object v0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mDstBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 338
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return mDstBitmap.getWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mDstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return mDstBitmap.getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mDstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mDstBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public arcsoftProcessFaceFromJpegData([BIII[Landroid/graphics/Rect;[ILjava/util/ArrayList;)[B
    .locals 16
    .param p1, "srcJpegData"    # [B
    .param p2, "src_len"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "faceRects"    # [Landroid/graphics/Rect;
    .param p6, "faceRoll"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII[",
            "Landroid/graphics/Rect;",
            "[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 150
    .local p7, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;>;"
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 156
    .local v9, "faceNumber":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v6, "realFaceRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 158
    aget-object v1, p5, v10

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 161
    :cond_0
    new-array v7, v9, [I

    .line 162
    .local v7, "realFaceRoll":[I
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_1

    .line 163
    aget v1, p6, v10

    aput v1, v7, v10

    .line 162
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 166
    :cond_1
    const-string v14, "Java--arcsoftProcessFaceFromJpegData()"

    .line 167
    .local v14, "mTAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "srcJpegData Len is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "src_len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceRects size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v10, 0x0

    .line 174
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 175
    .local v15, "singleRect":Landroid/graphics/Rect;
    const-string v1, "Rect[%d]:(%d,%d,%d,%d)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v15, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, v15, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, v15, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    add-int/lit8 v10, v10, 0x1

    .line 177
    goto :goto_2

    .line 179
    .end local v15    # "singleRect":Landroid/graphics/Rect;
    :cond_2
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 180
    const-string/jumbo v2, "params[%d]: SkinBright:%d, SkinSoften:%d"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v8, p7

    .line 183
    invoke-direct/range {v1 .. v9}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->arcsoftProcessFaceFromJpegData([BIIILjava/util/ArrayList;[ILjava/util/ArrayList;I)[B

    move-result-object v13

    .line 184
    .local v13, "mRLT":[B
    return-object v13
.end method

.method public arcsoftProcessFaceFromYUVData([BIII[Landroid/graphics/Rect;[ILjava/util/ArrayList;)[B
    .locals 17
    .param p1, "srcYUVData"    # [B
    .param p2, "src_len"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "faceRects"    # [Landroid/graphics/Rect;
    .param p6, "faceRoll"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII[",
            "Landroid/graphics/Rect;",
            "[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 205
    .local p7, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;>;"
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 211
    .local v10, "faceNumber":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v7, "realFaceRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_0

    .line 213
    aget-object v1, p5, v11

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 216
    :cond_0
    new-array v8, v10, [I

    .line 217
    .local v8, "realFaceRoll":[I
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    .line 218
    aget v1, p6, v11

    aput v1, v8, v11

    .line 217
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 223
    :cond_1
    const-string v15, "Java--arcsoftProcessFaceFromYUVData"

    .line 224
    .local v15, "mTAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "srcJpegData Len is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "src_len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceRects size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v11, 0x0

    .line 231
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    .line 232
    .local v16, "singleRect":Landroid/graphics/Rect;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7b2c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Rect left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7b2c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Rect right : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7b2c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Rect top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7b2c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Rect bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v1, "==============================================="

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    add-int/lit8 v11, v11, 0x1

    .line 238
    goto/16 :goto_2

    .line 240
    .end local v16    # "singleRect":Landroid/graphics/Rect;
    :cond_2
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_3

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7b2c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e2a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u7f8e\u767d  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u78e8\u76ae : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 245
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->arcsoftProcessFaceFromYUVData(Z[BIIILjava/util/ArrayList;[ILjava/util/ArrayList;I)[B

    move-result-object v14

    .line 246
    .local v14, "mRLT":[B
    return-object v14
.end method

.method public picPostProcess_PreProcessFace(Landroid/graphics/Bitmap;)J
    .locals 7
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 304
    const-wide/16 v0, -0x1

    .line 305
    .local v0, "res":J
    if-nez p1, :cond_0

    move-wide v2, v0

    .line 313
    .end local v0    # "res":J
    .local v2, "res":J
    :goto_0
    return-wide v2

    .line 308
    .end local v2    # "res":J
    .restart local v0    # "res":J
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mSrcPicWidth:I

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->mSrcPicHeight:I

    .line 311
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->arcsoftPreProcessFace(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    .line 312
    sget-object v4, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "picPostProcess_PreProcessFace so return res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    .line 313
    .end local v0    # "res":J
    .restart local v2    # "res":J
    goto :goto_0
.end method
