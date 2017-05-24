.class public Lcn/jingling/lib/filters/onekey/LightenEye;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "LightenEye.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 15
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/LightenEye;->statisticEvent()V

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 17
    .local v3, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 18
    .local v7, "h":I
    invoke-static/range {p2 .. p2}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v14

    .line 19
    .local v14, "ret":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    iget-object v0, v14, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 20
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 21
    .local v1, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 23
    iget-object v0, v14, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v2, 0x0

    aget-object v13, v0, v2

    .line 24
    .local v13, "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    const/16 v8, 0x64

    iget-object v0, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v9, v0, Landroid/graphics/Point;->y:I

    iget-object v0, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v10, v0, Landroid/graphics/Point;->x:I

    iget-object v0, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->y:I

    iget-object v0, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v12, v0, Landroid/graphics/Point;->x:I

    move-object v5, v1

    move v6, v3

    invoke-static/range {v5 .. v12}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->BrightEyes([IIIIIIII)V

    .line 25
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 27
    .end local v1    # "pixels":[I
    .end local v13    # "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    :cond_0
    return-object p2
.end method
