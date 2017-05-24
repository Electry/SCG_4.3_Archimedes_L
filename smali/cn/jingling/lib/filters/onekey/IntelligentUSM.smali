.class public Lcn/jingling/lib/filters/onekey/IntelligentUSM;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "IntelligentUSM.java"


# static fields
.field private static final BEAUTIFY_DEGREE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/jingling/lib/filters/onekey/IntelligentUSM;->BEAUTIFY_DEGREE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x23
        0x23
        0x5a
        0x1e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method

.method private applyScenePeocess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 39
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 40
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 41
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 42
    const/4 v0, 0x4

    const/16 v4, 0x14

    invoke-static {v1, v3, v7, v0, v4}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->CLAHERGB3([IIIII)V

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 44
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 45
    return-object p1
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "originBm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/IntelligentUSM;->statisticEvent()V

    .line 21
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 23
    .local v2, "performBm":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v5

    .line 25
    .local v5, "results":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    iget-object v0, v5, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 27
    sget-object v3, Lcn/jingling/lib/filters/onekey/IntelligentUSM;->BEAUTIFY_DEGREE:[I

    .line 28
    sget-object v4, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->POSITIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    move-object v0, p1

    move-object v1, p2

    .line 26
    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/onekey/CameraSelf2;->applyBeautify(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[ILcn/jingling/lib/filters/detection/FaceDetectionStatus;Lcn/jingling/lib/filters/detection/FaceDetectorResults;)Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    .line 29
    invoke-static {}, Lcn/jingling/lib/filters/onekey/CameraSelf2;->release()V

    .line 34
    :goto_0
    return-object v2

    .line 31
    :cond_0
    invoke-direct {p0, v2}, Lcn/jingling/lib/filters/onekey/IntelligentUSM;->applyScenePeocess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method
