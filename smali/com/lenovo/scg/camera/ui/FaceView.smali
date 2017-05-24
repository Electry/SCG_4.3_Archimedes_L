.class public Lcom/lenovo/scg/camera/ui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/lenovo/scg/camera/focus/FocusIndicator;
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;
    }
.end annotation


# static fields
.field private static final MSG_SWITCH_FACES:I = 0x1

.field private static final SWITCH_DELAY:I = 0x46

.field private static final TAG:Ljava/lang/String; = "CAM FaceView"


# instance fields
.field private final LOGV:Z

.field private final MAX_FACE_NUMBER:I

.field private volatile mBlocked:Z

.field private mCenterx:I

.field private mCentery:I

.field private mColor:I

.field private mDefaultTopSpace:I

.field private mDisplayOrientation:I

.field private mFaceRectRadius:I

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private final mFailColor:I

.field private final mFocusedColor:I

.field private final mFocusingColor:I

.field private mHandler:Landroid/os/Handler;

.field private mIsCanVisible:Z

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPause:Z

.field private mPendingFaces:[Landroid/hardware/Camera$Face;

.field private mPositionListener:Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;

.field private mRect:Landroid/graphics/RectF;

.field private mStateSwitchPending:Z

.field private mUncroppedHeight:I

.field private mUncroppedWidth:I

.field private rects:[Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/ui/FaceView;->LOGV:Z

    .line 66
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 68
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 99
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 102
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mIsCanVisible:Z

    .line 106
    iput v3, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mDefaultTopSpace:I

    .line 108
    new-instance v1, Lcom/lenovo/scg/camera/ui/FaceView$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/ui/FaceView$1;-><init>(Lcom/lenovo/scg/camera/ui/FaceView;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mList:Ljava/util/List;

    .line 357
    iput v2, p0, Lcom/lenovo/scg/camera/ui/FaceView;->MAX_FACE_NUMBER:I

    .line 359
    new-array v1, v2, [Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->rects:[Landroid/graphics/RectF;

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPositionListener:Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;

    .line 124
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFocusingColor:I

    .line 126
    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFocusedColor:I

    .line 127
    const v1, 0x7f0d0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFailColor:I

    .line 128
    iget v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFocusingColor:I

    iput v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mColor:I

    .line 129
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xeb

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f0900c0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaceRectRadius:I

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mDefaultTopSpace:I

    .line 137
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/ui/FaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/FaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mStateSwitchPending:Z

    return p1
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/ui/FaceView;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/FaceView;
    .param p1, "x1"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/ui/FaceView;)[Landroid/hardware/Camera$Face;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/FaceView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;

    return-object v0
.end method

.method private resetRects()V
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->rects:[Landroid/graphics/RectF;

    .local v0, "arr$":[Landroid/graphics/RectF;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 369
    .local v3, "r":Landroid/graphics/RectF;
    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v3    # "r":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private scaleFaceRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 8
    .param p1, "currentRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 377
    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v1, v3

    .line 378
    .local v1, "currWidth":I
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v0, v3

    .line 379
    .local v0, "currHeight":I
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getZoomRatios()F

    move-result v2

    .line 380
    .local v2, "scale":F
    cmpl-float v3, v2, v6

    if-nez v3, :cond_0

    .line 390
    :goto_0
    return-object p1

    .line 383
    :cond_0
    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float v4, v2, v6

    int-to-float v5, v1

    div-float/2addr v5, v7

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->left:F

    .line 384
    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float v4, v2, v6

    int-to-float v5, v0

    div-float/2addr v5, v7

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->top:F

    .line 385
    iget v3, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mUncroppedHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mUncroppedWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3faaaaab

    sub-float/2addr v3, v4

    float-to-double v4, v3

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1

    .line 386
    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mUncroppedHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->top:F

    .line 388
    :cond_1
    iget v3, p1, Landroid/graphics/RectF;->left:F

    int-to-float v4, v1

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 389
    iget v3, p1, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mColor:I

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 206
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->invalidate()V

    .line 207
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCenterX()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mCenterx:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mCentery:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 263
    iget-boolean v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mIsCanVisible:Z

    if-nez v8, :cond_0

    .line 348
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-boolean v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mBlocked:Z

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v8, v8

    if-lez v8, :cond_b

    .line 270
    iget v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mUncroppedWidth:I

    if-nez v8, :cond_7

    .line 273
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/CameraActivity;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v6

    .line 274
    .local v6, "sn":Lcom/lenovo/scg/camera/CameraScreenNail;
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraScreenNail;->getUncroppedRenderWidth()I

    move-result v4

    .line 275
    .local v4, "rw":I
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraScreenNail;->getUncroppedRenderHeight()I

    move-result v3

    .line 281
    .end local v6    # "sn":Lcom/lenovo/scg/camera/CameraScreenNail;
    .local v3, "rh":I
    :goto_1
    if-le v3, v4, :cond_1

    iget v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mDisplayOrientation:I

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v9, 0xb4

    if-eq v8, v9, :cond_2

    :cond_1
    if-le v4, v3, :cond_3

    iget v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_3

    .line 283
    :cond_2
    move v7, v4

    .line 284
    .local v7, "temp":I
    move v4, v3

    .line 285
    move v3, v7

    .line 288
    .end local v7    # "temp":I
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->getWidth()I

    move-result v8

    if-eq v4, v8, :cond_4

    .line 289
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v4

    div-float v5, v8, v9

    .line 290
    .local v5, "scale":F
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->getWidth()I

    move-result v4

    .line 291
    int-to-float v8, v3

    mul-float/2addr v8, v5

    float-to-int v3, v8

    .line 294
    .end local v5    # "scale":F
    :cond_4
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v9, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mMirror:Z

    iget v10, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-static {v8, v9, v10, v4, v3}, Lcom/lenovo/scg/camera/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 295
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v4

    div-int/lit8 v0, v8, 0x2

    .line 296
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v3

    div-int/lit8 v1, v8, 0x2

    .line 300
    .local v1, "dy":I
    sget v8, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v3

    if-lez v8, :cond_5

    .line 301
    iget v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mDefaultTopSpace:I

    .line 307
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 308
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mOrientation:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 309
    iget v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mOrientation:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 312
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->resetRects()V

    .line 315
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v8, v8

    if-ge v2, v8, :cond_9

    .line 317
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/hardware/Camera$Face;->score:I

    const/16 v9, 0x32

    if-ge v8, v9, :cond_8

    .line 315
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 277
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "i":I
    .end local v3    # "rh":I
    .end local v4    # "rw":I
    :cond_7
    iget v4, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mUncroppedWidth:I

    .line 278
    .restart local v4    # "rw":I
    iget v3, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mUncroppedHeight:I

    .restart local v3    # "rh":I
    goto/16 :goto_1

    .line 320
    .restart local v0    # "dx":I
    .restart local v1    # "dy":I
    .restart local v2    # "i":I
    :cond_8
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v9, v9, v2

    iget-object v9, v9, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 322
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 324
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 327
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0, v8}, Lcom/lenovo/scg/camera/ui/FaceView;->scaleFaceRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 330
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mCenterx:I

    .line 331
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mCentery:I

    .line 332
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v9, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaceRectRadius:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaceRectRadius:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 335
    const/4 v8, 0x5

    if-ge v2, v8, :cond_6

    .line 336
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->rects:[Landroid/graphics/RectF;

    aget-object v8, v8, v2

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_3

    .line 341
    :cond_9
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPositionListener:Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;

    if-eqz v8, :cond_a

    .line 342
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPositionListener:Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/FaceView;->rects:[Landroid/graphics/RectF;

    invoke-interface {v8, v9}, Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;->setPosition([Landroid/graphics/RectF;)V

    .line 345
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 347
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "i":I
    .end local v3    # "rh":I
    .end local v4    # "rw":I
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 246
    const-string v0, "CAM FaceView"

    const-string/jumbo v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPause:Z

    .line 248
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 251
    const-string v0, "CAM FaceView"

    const-string/jumbo v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPause:Z

    .line 253
    return-void
.end method

.method public setBlockDraw(Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mBlocked:Z

    .line 257
    return-void
.end method

.method public setCanVisible(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    .line 216
    const-string v0, "CAM FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCanVisible("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mIsCanVisible:Z

    .line 239
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->invalidate()V

    .line 240
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mDisplayOrientation:I

    .line 163
    return-void
.end method

.method public setFacePositionListener(Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPositionListener:Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;

    .line 365
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    const/4 v1, 0x1

    .line 141
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_4

    .line 143
    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-eqz v0, :cond_3

    :cond_2
    array-length v0, p1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 144
    :cond_3
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;

    .line 145
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mStateSwitchPending:Z

    if-nez v0, :cond_0

    .line 146
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 152
    :cond_4
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mStateSwitchPending:Z

    if-eqz v0, :cond_5

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    :cond_5
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 157
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->invalidate()V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mMirror:Z

    .line 174
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 167
    iput p1, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mOrientation:I

    .line 168
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->invalidate()V

    .line 169
    return-void
.end method

.method public showFail(Z)V
    .locals 0
    .param p1, "timeout"    # Z

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->invalidate()V

    .line 198
    return-void
.end method

.method public showStart(Z)V
    .locals 1
    .param p1, "isTF"    # Z

    .prologue
    .line 182
    iget v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/FaceView;->mColor:I

    .line 183
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->invalidate()V

    .line 184
    return-void
.end method

.method public showSuccess(Z)V
    .locals 0
    .param p1, "timeout"    # Z

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/FaceView;->invalidate()V

    .line 191
    return-void
.end method
