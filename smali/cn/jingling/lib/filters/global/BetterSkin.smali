.class public Lcn/jingling/lib/filters/global/BetterSkin;
.super Lcn/jingling/lib/filters/GlobalFilter;
.source "BetterSkin.java"


# static fields
.field private static final WHITE_DEGREE:I = 0x37


# instance fields
.field private mPerformedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/jingling/lib/filters/GlobalFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "degree"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcn/jingling/lib/filters/global/BetterSkin;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/jingling/lib/filters/global/BetterSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    int-to-double v2, p2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcn/jingling/lib/filters/ImageProcessUtils;->nativeMerge(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcn/jingling/lib/filters/GlobalFilter;->release()V

    .line 52
    iget-object v0, p0, Lcn/jingling/lib/filters/global/BetterSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcn/jingling/lib/filters/global/BetterSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/filters/global/BetterSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 56
    :cond_0
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 19
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    invoke-super/range {p0 .. p2}, Lcn/jingling/lib/filters/GlobalFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 25
    .local v5, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 26
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 27
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 28
    const/16 v2, 0xa

    const/4 v4, 0x1

    invoke-static {v3, v5, v9, v2, v4}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 29
    new-instance v18, Lcn/jingling/lib/filters/Curve;

    const-string v2, "curves/skin_smooth.dat"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .local v18, "c":Lcn/jingling/lib/filters/Curve;
    invoke-virtual/range {v18 .. v18}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v10

    .line 31
    invoke-virtual/range {v18 .. v18}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v12

    move-object v7, v3

    move v8, v5

    .line 30
    invoke-static/range {v7 .. v12}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffing([III[I[I[I)V

    .line 32
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    .line 33
    mul-int v2, v5, v9

    new-array v11, v2, [I

    .line 34
    .local v11, "pixelsOri":[I
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p2

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 36
    const/16 v2, 0x37

    invoke-static {v3, v5, v9, v2}, Lcn/jingling/lib/filters/CMTProcessor;->brightEffect([IIII)V

    .line 38
    const/4 v2, -0x5

    invoke-static {v3, v5, v9, v2}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs([IIII)[I

    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v3, v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/jingling/lib/filters/global/BetterSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method
