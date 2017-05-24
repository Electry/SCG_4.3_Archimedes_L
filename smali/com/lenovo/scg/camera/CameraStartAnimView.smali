.class public Lcom/lenovo/scg/camera/CameraStartAnimView;
.super Landroid/view/SurfaceView;
.source "CameraStartAnimView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;
    }
.end annotation


# static fields
.field public static final CAMERA_ANIN_SHOWED_KEY:Ljava/lang/String; = "camera_anin_showed"

.field private static final MSG_DRAW_ONE_FRAME:I = 0x1

.field private static final TIME_FPS:J = 0x18L


# instance fields
.field private isInvisible:Z

.field private mAninFinishListener:Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;

.field private mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mBitmap_cjxjw:Landroid/graphics/Bitmap;

.field private mBitmap_version:Landroid/graphics/Bitmap;

.field private mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field private mChaoJiSuoJian:Ljava/lang/String;

.field private mDrawCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mImageCenterRect:Landroid/graphics/Rect;

.field private mImageVersionRect:Landroid/graphics/Rect;

.field private mListCharRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mPixDensity:F

.field private mScreenH:I

.field private mScreenW:I

.field private mStrokeWidth:F

.field private mTextPaintA:Landroid/text/TextPaint;

.field private mTextPaintB:Landroid/text/TextPaint;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->isInvisible:Z

    .line 96
    check-cast p1, Lcom/lenovo/scg/camera/CameraActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 97
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->init()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->isInvisible:Z

    .line 91
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->isInvisible:Z

    .line 86
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->init()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/CameraStartAnimView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraStartAnimView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->recycleImage()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/CameraStartAnimView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraStartAnimView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->checkImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/CameraStartAnimView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraStartAnimView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/CameraStartAnimView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraStartAnimView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/CameraStartAnimView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraStartAnimView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->isInvisible:Z

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/CameraStartAnimView;)Lcom/lenovo/scg/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraStartAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/CameraStartAnimView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraStartAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/CameraStartAnimView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraStartAnimView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mDrawCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/lenovo/scg/camera/CameraStartAnimView;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraStartAnimView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mDrawCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mDrawCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/CameraStartAnimView;)Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraStartAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mAninFinishListener:Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/camera/CameraStartAnimView;Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;)Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraStartAnimView;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mAninFinishListener:Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;

    return-object p1
.end method

.method private beginDraw()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 199
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 200
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0202

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mChaoJiSuoJian:Ljava/lang/String;

    .line 203
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mPixDensity:F

    .line 204
    const/high16 v3, 0x40800000    # 4.0f

    iput v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mStrokeWidth:F

    .line 205
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mPaint:Landroid/graphics/Paint;

    .line 206
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 208
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mPaint:Landroid/graphics/Paint;

    const v4, -0xda3901

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 212
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 213
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 215
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v6}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintA:Landroid/text/TextPaint;

    .line 216
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 217
    .local v1, "fontScale":F
    const/high16 v3, 0x41000000    # 8.0f

    iget v4, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mPixDensity:F

    mul-float/2addr v3, v4

    mul-float v2, v3, v1

    .line 218
    .local v2, "textSize":F
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintA:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 219
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintA:Landroid/text/TextPaint;

    const v4, -0x777778

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 220
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintA:Landroid/text/TextPaint;

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 221
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    return-void

    .line 210
    nop

    :array_0
    .array-data 4
        -0xededee
        -0x1000000
    .end array-data
.end method

.method private checkImage()V
    .locals 26

    .prologue
    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 547
    invoke-static {}, Lcom/lenovo/scg/camera/CameraStartAnimView;->isCN()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0203ba

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 554
    .local v8, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 556
    .local v5, "bitmapW":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 557
    .local v4, "bitmapH":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3edc28f6    # 0.43f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v12, v0

    .line 558
    .local v12, "newBitmapH":I
    mul-int v23, v12, v5

    div-int v13, v23, v4

    .line 559
    .local v13, "newBitmapW":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v13, v12, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 563
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    move/from16 v23, v0

    sub-int v23, v23, v5

    div-int/lit8 v10, v23, 0x2

    .line 564
    .local v10, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    move/from16 v23, v0

    sub-int v23, v23, v4

    div-int/lit8 v21, v23, 0x2

    .line 565
    .local v21, "top":I
    new-instance v23, Landroid/graphics/Rect;

    add-int v24, v10, v5

    add-int v25, v21, v4

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v10, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    .line 567
    new-instance v23, Landroid/text/TextPaint;

    const/16 v24, 0x1

    invoke-direct/range {v23 .. v24}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintB:Landroid/text/TextPaint;

    .line 569
    invoke-static {}, Lcom/lenovo/scg/camera/CameraStartAnimView;->isCN()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3ed70a3d    # 0.42f

    mul-float v20, v23, v24

    .line 574
    .local v20, "textSize":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintB:Landroid/text/TextPaint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintB:Landroid/text/TextPaint;

    move-object/from16 v23, v0

    const v24, -0xda3901

    invoke-virtual/range {v23 .. v24}, Landroid/text/TextPaint;->setColor(I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintB:Landroid/text/TextPaint;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 579
    .end local v4    # "bitmapH":I
    .end local v5    # "bitmapW":I
    .end local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "left":I
    .end local v12    # "newBitmapH":I
    .end local v13    # "newBitmapW":I
    .end local v20    # "textSize":F
    .end local v21    # "top":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0203bc

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 583
    .restart local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3ecccccd    # 0.4f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v18, v0

    .line 585
    .local v18, "sizeVersion":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3f4ccccd    # 0.8f

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v10, v0

    .line 586
    .restart local v10    # "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    .line 587
    .restart local v21    # "top":I
    new-instance v23, Landroid/graphics/Rect;

    add-int v24, v10, v18

    add-int v25, v21, v18

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v10, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mStrokeWidth:F

    move/from16 v24, v0

    add-float v22, v23, v24

    .line 591
    .local v22, "versionW":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v22, v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 594
    .local v16, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v16

    move/from16 v0, v23

    float-to-int v7, v0

    .line 595
    .local v7, "desW":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v16

    move/from16 v0, v23

    float-to-int v6, v0

    .line 596
    .local v6, "desH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v7, v6, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    .line 599
    .end local v6    # "desH":I
    .end local v7    # "desW":I
    .end local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "left":I
    .end local v16    # "scale":F
    .end local v18    # "sizeVersion":I
    .end local v21    # "top":I
    .end local v22    # "versionW":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mListCharRects:Ljava/util/List;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    .line 600
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/CameraStartAnimView;->mListCharRects:Ljava/util/List;

    .line 602
    invoke-static {}, Lcom/lenovo/scg/camera/CameraStartAnimView;->isCN()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 603
    const v23, 0x3f47ae14    # 0.78f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mChaoJiSuoJian:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v19, v23, v24

    .line 609
    .local v19, "step":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintB:Landroid/text/TextPaint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/text/TextPaint;->getTextSize()F

    move-result v23

    const v24, 0x3f99999a    # 1.2f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .line 610
    .local v17, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintB:Landroid/text/TextPaint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/text/TextPaint;->getTextSize()F

    move-result v23

    const/high16 v24, 0x40000000    # 2.0f

    div-float v14, v23, v24

    .line 611
    .local v14, "padding":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v23, v23, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v14

    move/from16 v0, v23

    float-to-int v10, v0

    .line 612
    .restart local v10    # "left":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mChaoJiSuoJian:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_5

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mChaoJiSuoJian:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v23, v24

    int-to-float v0, v9

    move/from16 v24, v0

    add-float v23, v23, v24

    mul-float v11, v23, v19

    .line 614
    .local v11, "move":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    add-float v23, v23, v11

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 616
    .restart local v21    # "top":I
    new-instance v15, Landroid/graphics/Rect;

    add-int v23, v10, v17

    add-int v24, v21, v17

    move/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v15, v10, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 617
    .local v15, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mListCharRects:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 551
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v11    # "move":F
    .end local v14    # "padding":F
    .end local v15    # "rect":Landroid/graphics/Rect;
    .end local v17    # "size":I
    .end local v19    # "step":F
    .end local v21    # "top":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0203bb

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .restart local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 572
    .restart local v4    # "bitmapH":I
    .restart local v5    # "bitmapW":I
    .restart local v10    # "left":I
    .restart local v12    # "newBitmapH":I
    .restart local v13    # "newBitmapW":I
    .restart local v21    # "top":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3ecccccd    # 0.4f

    mul-float v20, v23, v24

    .restart local v20    # "textSize":F
    goto/16 :goto_1

    .line 606
    .end local v4    # "bitmapH":I
    .end local v5    # "bitmapW":I
    .end local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "left":I
    .end local v12    # "newBitmapH":I
    .end local v13    # "newBitmapW":I
    .end local v20    # "textSize":F
    .end local v21    # "top":I
    :cond_4
    const v23, 0x3f51eb85    # 0.82f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mChaoJiSuoJian:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v19, v23, v24

    .restart local v19    # "step":F
    goto/16 :goto_2

    .line 620
    .end local v19    # "step":F
    :cond_5
    return-void
.end method

.method private drawAlphaAnimCircle(II)V
    .locals 15
    .param p1, "count"    # I
    .param p2, "maxCount"    # I

    .prologue
    .line 336
    move/from16 v0, p1

    int-to-float v9, v0

    move/from16 v0, p2

    int-to-float v10, v0

    div-float v1, v9, v10

    .line 337
    .local v1, "a":F
    const v9, 0x3e4ccccd    # 0.2f

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    float-to-int v2, v9

    .line 338
    .local v2, "alpha":I
    iget v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mStrokeWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    add-int/lit8 v4, v9, 0x1

    .line 339
    .local v4, "ext":I
    iget-object v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    new-instance v10, Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v4

    iget-object v12, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v4

    iget-object v13, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v4

    iget-object v14, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v4

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v9, v10}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v3

    .line 342
    .local v3, "canvas":Landroid/graphics/Canvas;
    if-nez v3, :cond_0

    .line 363
    :goto_0
    return-void

    .line 345
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    iget v12, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 346
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v10, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 347
    iget-object v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 348
    iget-object v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 349
    iget-object v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    .line 350
    iget-object v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v5, v9, v10

    .line 352
    .local v5, "left":I
    iget-object v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v8, v9, v10

    .line 354
    .local v8, "top":I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 355
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 356
    iget-object v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    int-to-float v10, v5

    int-to-float v11, v8

    invoke-virtual {v3, v9, v10, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 359
    .end local v5    # "left":I
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v8    # "top":I
    :cond_1
    iget-object v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    iget-object v11, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    iget-object v12, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 362
    iget-object v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawAnimCircle(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "maxCount"    # I

    .prologue
    const/4 v4, 0x0

    .line 318
    mul-int/lit16 v1, p1, 0x168

    div-int v8, v1, p2

    .line 319
    .local v8, "step":I
    iget v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mStrokeWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v6, v1, 0x1

    .line 320
    .local v6, "ext":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v9, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v6

    invoke-direct {v2, v3, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 323
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 326
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    iget v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    invoke-direct {v7, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 327
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 328
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 329
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 331
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    int-to-float v3, v8

    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 332
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawCJXJ()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 295
    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 296
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-nez v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 300
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    iget v6, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 301
    .local v4, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v6, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 302
    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 303
    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 305
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 306
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    const/16 v5, 0x14

    new-array v0, v5, [F

    fill-array-data v0, :array_0

    .line 308
    .local v0, "array":[F
    invoke-virtual {v2, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 309
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 310
    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 312
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 313
    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 306
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private drawChar(IILjava/lang/String;Landroid/graphics/Rect;)V
    .locals 16
    .param p1, "count"    # I
    .param p2, "maxCount"    # I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 428
    move/from16 v0, p1

    int-to-float v2, v0

    move/from16 v0, p2

    int-to-float v3, v0

    div-float v13, v2, v3

    .line 429
    .local v13, "process":F
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    sub-int/2addr v3, v4

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    invoke-direct {v11, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 432
    .local v11, "lockRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v11}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v10

    .line 433
    .local v10, "canvas":Landroid/graphics/Canvas;
    if-nez v10, :cond_0

    .line 464
    :goto_0
    return-void

    .line 436
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v10, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 437
    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 438
    const v2, 0x3f99999a    # 1.2f

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v13

    sub-float v15, v2, v3

    .line 439
    .local v15, "scale":F
    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v13

    add-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v9, v2

    .line 440
    .local v9, "alpha":I
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 441
    .local v12, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 442
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 443
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 444
    .local v14, "resMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    .line 445
    invoke-virtual {v14, v15, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 446
    invoke-virtual {v14, v12}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 448
    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 449
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 450
    invoke-virtual {v14, v12}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 452
    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 453
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v12, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 454
    invoke-virtual {v14, v12}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 456
    invoke-virtual {v10, v14}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintB:Landroid/text/TextPaint;

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 459
    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintB:Landroid/text/TextPaint;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 461
    .local v1, "titleLayout":Landroid/text/StaticLayout;
    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 462
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v10}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method private drawChar(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "alpha"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 467
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 468
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 469
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 470
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 471
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 472
    .local v9, "resMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 473
    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 475
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 476
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 477
    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 479
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 480
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {v8, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 481
    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 483
    invoke-virtual {p4, v9}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 485
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintB:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 486
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintB:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 488
    .local v0, "titleLayout":Landroid/text/StaticLayout;
    invoke-virtual {v0, p4}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 489
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    .line 490
    return-void
.end method

.method private drawString(II)V
    .locals 5
    .param p1, "count"    # I
    .param p2, "maxCount"    # I

    .prologue
    .line 417
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mChaoJiSuoJian:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int v2, p2, v3

    .line 418
    .local v2, "preCharCount":I
    add-int/lit8 v3, p1, -0x1

    div-int v1, v3, v2

    .line 419
    .local v1, "charIndex":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mChaoJiSuoJian:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mChaoJiSuoJian:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "c":Ljava/lang/String;
    mul-int v3, v1, v2

    sub-int v4, p1, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mListCharRects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-direct {p0, v4, v2, v0, v3}, Lcom/lenovo/scg/camera/CameraStartAnimView;->drawChar(IILjava/lang/String;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private endDraw()V
    .locals 4

    .prologue
    .line 226
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lenovo/scg/camera/CameraStartAnimView$3;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/CameraStartAnimView$3;-><init>(Lcom/lenovo/scg/camera/CameraStartAnimView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lenovo/scg/camera/CameraStartAnimView$4;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/CameraStartAnimView$4;-><init>(Lcom/lenovo/scg/camera/CameraStartAnimView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private finish(II)V
    .locals 19
    .param p1, "count"    # I
    .param p2, "maxCount"    # I

    .prologue
    .line 493
    move/from16 v0, p1

    int-to-float v3, v0

    move/from16 v0, p2

    int-to-float v4, v0

    div-float v17, v3, v4

    .line 494
    .local v17, "process":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v12

    .line 495
    .local v12, "canvas":Landroid/graphics/Canvas;
    if-nez v12, :cond_0

    .line 539
    :goto_0
    return-void

    .line 499
    :cond_0
    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v17

    mul-float/2addr v3, v4

    float-to-int v9, v3

    .line 500
    .local v9, "alpha":I
    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v9, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    .line 501
    .local v11, "backgroundColor":I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v11, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 502
    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v12, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 504
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 505
    .local v16, "paint":Landroid/graphics/Paint;
    new-instance v13, Landroid/graphics/ColorMatrix;

    invoke-direct {v13}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 506
    .local v13, "cm":Landroid/graphics/ColorMatrix;
    const/16 v3, 0x14

    new-array v10, v3, [F

    fill-array-data v10, :array_0

    .line 508
    .local v10, "array":[F
    invoke-virtual {v13, v10}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 509
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v13}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 510
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 512
    invoke-virtual {v12}, Landroid/graphics/Canvas;->restore()V

    .line 514
    new-instance v16, Landroid/graphics/Paint;

    .end local v16    # "paint":Landroid/graphics/Paint;
    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 515
    .restart local v16    # "paint":Landroid/graphics/Paint;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v15, v3, v4

    .line 517
    .local v15, "left":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v18, v3, v4

    .line 518
    .local v18, "top":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    int-to-float v4, v15

    move/from16 v0, v18

    int-to-float v5, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 520
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mChaoJiSuoJian:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v14, v3, :cond_1

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mChaoJiSuoJian:Ljava/lang/String;

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v3, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mListCharRects:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v3, v12}, Lcom/lenovo/scg/camera/CameraStartAnimView;->drawChar(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 520
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 525
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintA:Landroid/text/TextPaint;

    invoke-virtual {v3, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0203

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "lable":Ljava/lang/String;
    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintA:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 530
    .local v1, "titleLayout":Landroid/text/StaticLayout;
    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    .line 531
    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v12, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 532
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v15, v3, 0x2

    .line 533
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mPixDensity:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v18, v0

    .line 534
    int-to-float v3, v15

    move/from16 v0, v18

    int-to-float v4, v0

    invoke-virtual {v12, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 535
    invoke-virtual {v1, v12}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 536
    invoke-virtual {v12}, Landroid/graphics/Canvas;->restore()V

    .line 538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v12}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 506
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    .line 102
    iput v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    .line 103
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/CameraStartAnimView;->setZOrderOnTop(Z)V

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 107
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/CameraStartAnimView;->setFocusable(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mUIHandler:Landroid/os/Handler;

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mUIHandler:Landroid/os/Handler;

    .line 113
    :cond_0
    return-void
.end method

.method private static isCN()Z
    .locals 3

    .prologue
    .line 656
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 657
    .local v0, "l":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "language":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    const/4 v2, 0x1

    .line 661
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static needShow(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "show":Z
    const/4 v1, 0x0

    .line 72
    .local v1, "preferences":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    const-string v3, "camera_anin_showed"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 75
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "camera_anin_showed"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private recycleImage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 625
    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 629
    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mListCharRects:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 632
    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mListCharRects:Ljava/util/List;

    .line 634
    :cond_2
    return-void
.end method

.method private switchBackground(II)V
    .locals 22
    .param p1, "count"    # I
    .param p2, "maxCount"    # I

    .prologue
    .line 366
    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    div-float v18, v5, v6

    .line 367
    .local v18, "process":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v13

    .line 368
    .local v13, "canvas":Landroid/graphics/Canvas;
    if-nez v13, :cond_0

    .line 414
    :goto_0
    return-void

    .line 371
    :cond_0
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v5, v5, v18

    float-to-int v0, v5

    move/from16 v21, v0

    .line 372
    .local v21, "value":I
    const/16 v5, 0xff

    move/from16 v0, v21

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    .line 373
    .local v15, "endColor":I
    const/high16 v5, 0x436d0000    # 237.0f

    mul-float v5, v5, v18

    float-to-int v5, v5

    add-int/lit8 v21, v5, 0x12

    .line 374
    const/16 v5, 0xff

    move/from16 v0, v21

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    .line 375
    .local v12, "beginColor":I
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v12, v7, v8

    const/4 v8, 0x1

    aput v15, v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 377
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 379
    new-instance v19, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 380
    .local v19, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 381
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v13}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 383
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageCenterRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 385
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 386
    .local v17, "paint":Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/ColorMatrix;

    invoke-direct {v14}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 387
    .local v14, "cm":Landroid/graphics/ColorMatrix;
    const/16 v5, 0x14

    new-array v11, v5, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v6, v18

    aput v6, v11, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v11, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v11, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v11, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v11, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v11, v5

    const/4 v5, 0x6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v6, v18

    aput v6, v11, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v11, v5

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput v6, v11, v5

    const/16 v5, 0x9

    const/4 v6, 0x0

    aput v6, v11, v5

    const/16 v5, 0xa

    const/4 v6, 0x0

    aput v6, v11, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v11, v5

    const/16 v5, 0xc

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v6, v18

    aput v6, v11, v5

    const/16 v5, 0xd

    const/4 v6, 0x0

    aput v6, v11, v5

    const/16 v5, 0xe

    const/4 v6, 0x0

    aput v6, v11, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    aput v6, v11, v5

    const/16 v5, 0x10

    const/4 v6, 0x0

    aput v6, v11, v5

    const/16 v5, 0x11

    const/4 v6, 0x0

    aput v6, v11, v5

    const/16 v5, 0x12

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v11, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v11, v5

    .line 389
    .local v11, "array":[F
    invoke-virtual {v14, v11}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 390
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v14}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 391
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_cjxjw:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v13, v5, v6, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 392
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    .line 394
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v16, v5, v6

    .line 395
    .local v16, "left":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mImageVersionRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v20, v5, v6

    .line 396
    .local v20, "top":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mBitmap_version:Landroid/graphics/Bitmap;

    move/from16 v0, v16

    int-to-float v6, v0

    move/from16 v0, v20

    int-to-float v7, v0

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v13, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 398
    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v5, v18, v5

    if-lez v5, :cond_1

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0203

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "lable":Ljava/lang/String;
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mTextPaintA:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 404
    .local v3, "titleLayout":Landroid/text/StaticLayout;
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 405
    const/high16 v5, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v13, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 406
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v16, v5, 0x2

    .line 407
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mPixDensity:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v20, v0

    .line 408
    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v20

    int-to-float v6, v0

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 410
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    .line 412
    .end local v3    # "titleLayout":Landroid/text/StaticLayout;
    .end local v4    # "lable":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v13}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onFrameDraw(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 268
    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-gt p1, v0, :cond_2

    .line 269
    if-nez p1, :cond_0

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->checkImage()V

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->drawCJXJ()V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    const/4 v0, 0x6

    if-lt p1, v0, :cond_3

    const/16 v0, 0x14

    if-gt p1, v0, :cond_3

    .line 274
    add-int/lit8 v0, p1, -0x5

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/CameraStartAnimView;->drawAnimCircle(II)V

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0

    .line 275
    :cond_3
    const/16 v0, 0x15

    if-lt p1, v0, :cond_4

    const/16 v0, 0x23

    if-gt p1, v0, :cond_4

    .line 276
    add-int/lit8 v0, p1, -0x14

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/CameraStartAnimView;->drawAlphaAnimCircle(II)V

    goto :goto_0

    .line 277
    :cond_4
    const/16 v0, 0x24

    if-lt p1, v0, :cond_5

    const/16 v0, 0x32

    if-gt p1, v0, :cond_5

    .line 278
    add-int/lit8 v0, p1, -0x23

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/CameraStartAnimView;->switchBackground(II)V

    goto :goto_0

    .line 279
    :cond_5
    const/16 v0, 0x33

    if-lt p1, v0, :cond_6

    const/16 v0, 0x50

    if-gt p1, v0, :cond_6

    .line 280
    add-int/lit8 v0, p1, -0x32

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/CameraStartAnimView;->drawString(II)V

    goto :goto_0

    .line 281
    :cond_6
    const/16 v0, 0x60

    if-lt p1, v0, :cond_7

    const/16 v0, 0x6e

    if-gt p1, v0, :cond_7

    .line 282
    add-int/lit8 v0, p1, -0x5f

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/CameraStartAnimView;->finish(II)V

    goto :goto_0

    .line 283
    :cond_7
    const/16 v0, 0x6f

    if-lt p1, v0, :cond_1

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->isInvisible:Z

    .line 287
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->endDraw()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setAnimationFinishListener(Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mAninFinishListener:Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;

    .line 117
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 122
    iget v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    if-eq v0, p4, :cond_1

    .line 123
    :cond_0
    iput p3, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenW:I

    .line 124
    iput p4, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mScreenH:I

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/scg/camera/CameraStartAnimView$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/CameraStartAnimView$1;-><init>(Lcom/lenovo/scg/camera/CameraStartAnimView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mDrawCount:I

    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "camera_start_anim_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v0, Lcom/lenovo/scg/camera/CameraStartAnimView$2;

    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/CameraStartAnimView$2;-><init>(Lcom/lenovo/scg/camera/CameraStartAnimView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandler:Landroid/os/Handler;

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraStartAnimView;->beginDraw()V

    .line 183
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 638
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 639
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandler:Landroid/os/Handler;

    .line 640
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 641
    new-instance v1, Lcom/lenovo/scg/camera/CameraStartAnimView$5;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/scg/camera/CameraStartAnimView$5;-><init>(Lcom/lenovo/scg/camera/CameraStartAnimView;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 650
    iput-object v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 651
    iput-object v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView;->mHandler:Landroid/os/Handler;

    .line 653
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method
