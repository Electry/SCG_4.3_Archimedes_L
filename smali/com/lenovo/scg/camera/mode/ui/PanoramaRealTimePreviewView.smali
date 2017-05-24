.class public Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "PanoramaRealTimePreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$GLViewRunnable;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

.field private static mLock:[B


# instance fields
.field UNIT_MATRIX:[F

.field private count:I

.field private mAddTextureLock:Ljava/lang/Object;

.field private mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

.field private mCenterX:F

.field private mCenterY:F

.field private mClipRatio:F

.field private mClipRatioH:F

.field private mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mHeight:F

.field private mIs16v9:Z

.field private mIsLeft2Right:Z

.field private mLeftDownX:I

.field private mLeftDownY:I

.field private mNeedDrawBackground:Z

.field private mNeedDrawHintBG:Z

.field private mNeedDrawPreviewTexture:Z

.field private mOrientation:I

.field private mPanoramaIncrementalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;",
            ">;"
        }
    .end annotation
.end field

.field private mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

.field private mPanoramaRealTimePreviewViewHeight:I

.field private mPreviewContainerLock:Ljava/lang/Object;

.field private mPreviewTexturHeight:I

.field private mPreviewTextureShow:Z

.field private mPreviewTextureWidth:I

.field private mPreviewYUVTextureBottom:I

.field private mPreviewYUVTextureLeft:I

.field private mPreviewYUVTextureRight:I

.field private mPreviewYUVTextureTop:I

.field private mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

.field private mScreenHeight:F

.field private mScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

.field private mScreenWidth:F

.field private mTextColors:[F

.field private mTextrect:Landroid/graphics/Rect;

.field protected mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "PanoramaRealTimePreviewView"

    sput-object v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->TAG:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mInstance:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mLock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 127
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTextureShow:Z

    .line 83
    iput v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatio:F

    .line 85
    iput v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatioH:F

    .line 91
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIs16v9:Z

    .line 93
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIsLeft2Right:Z

    .line 95
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mNeedDrawBackground:Z

    .line 97
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mNeedDrawHintBG:Z

    .line 99
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mNeedDrawPreviewTexture:Z

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mAddTextureLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewContainerLock:Ljava/lang/Object;

    .line 125
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->UNIT_MATRIX:[F

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    .line 745
    iput v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->count:I

    .line 129
    return-void

    .line 125
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private destoryBackground()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->yield()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 633
    :cond_0
    return-void
.end method

.method private drawBackGroudView(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v3, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 523
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->rotateCanvas(ILcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 527
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIs16v9:Z

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, p1, v3, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 541
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 544
    :cond_1
    return-void

    .line 530
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    .line 531
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    mul-int/lit16 v2, v2, 0x780

    div-int/lit16 v2, v2, 0x5a0

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v3, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 532
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_4

    .line 533
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, v3, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 534
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_5

    .line 535
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    mul-int/lit16 v2, v2, 0x780

    div-int/lit16 v2, v2, 0x5a0

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v3, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 537
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, v3, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto/16 :goto_0
.end method

.method private drawPreviewTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v6, 0x0

    .line 510
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 511
    .local v1, "rectSrc":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 512
    .local v0, "rectDst":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v6, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 513
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIsLeft2Right:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTexturHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTextureWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTexturHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 517
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v2, p1, v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 518
    return-void

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTextureWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTexturHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTexturHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private drawScaledTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/16 v3, 0x10e

    const/16 v2, 0xb4

    const/16 v1, 0x5a

    const/high16 v5, 0x40000000    # 2.0f

    .line 548
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIs16v9:Z

    if-eqz v0, :cond_3

    .line 549
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterY:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterX:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 568
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterY:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterX:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterX:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterY:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterX:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterY:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 557
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterY:F

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterX:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto/16 :goto_0

    .line 560
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterY:F

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterX:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto/16 :goto_0

    .line 563
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterX:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterY:F

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto/16 :goto_0

    .line 565
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterX:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterY:F

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    sget-object v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mInstance:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    if-nez v0, :cond_0

    .line 133
    sget-object v1, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mLock:[B

    monitor-enter v1

    .line 134
    :try_start_0
    new-instance v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mInstance:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    .line 135
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mInstance:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRectArray(Landroid/graphics/Rect;)[F
    .locals 8
    .param p1, "textrect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x44f00000    # 1920.0f

    const/4 v4, 0x0

    .line 669
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIs16v9:Z

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x14

    new-array v0, v0, [F

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    div-float/2addr v1, v2

    aput v1, v0, v3

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    div-float/2addr v1, v2

    aput v1, v0, v6

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    div-float/2addr v1, v2

    aput v1, v0, v7

    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    aput v4, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/16 v1, 0x12

    aput v4, v0, v1

    const/16 v1, 0x13

    aput v4, v0, v1

    .line 678
    :goto_0
    return-object v0

    .line 672
    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [F

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    div-float/2addr v1, v2

    aput v1, v0, v3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    div-float/2addr v1, v2

    aput v1, v0, v6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    div-float/2addr v1, v2

    aput v1, v0, v7

    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    aput v4, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/16 v1, 0x12

    aput v4, v0, v1

    const/16 v1, 0x13

    aput v4, v0, v1

    goto :goto_0

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/16 v0, 0x14

    new-array v0, v0, [F

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    div-float/2addr v1, v2

    aput v1, v0, v3

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v5

    const/high16 v2, 0x44dc0000    # 1760.0f

    div-float/2addr v1, v2

    aput v1, v0, v6

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    div-float/2addr v1, v2

    aput v1, v0, v7

    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    div-float/2addr v2, v3

    mul-float/2addr v2, v5

    const/high16 v3, 0x44d20000    # 1680.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    aput v4, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/16 v1, 0x12

    aput v4, v0, v1

    const/16 v1, 0x13

    aput v4, v0, v1

    goto/16 :goto_0

    .line 678
    :cond_2
    const/16 v0, 0x14

    new-array v0, v0, [F

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v5

    const/high16 v2, 0x44dc0000    # 1760.0f

    div-float/2addr v1, v2

    aput v1, v0, v3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    div-float/2addr v1, v2

    aput v1, v0, v6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v5

    const/high16 v2, 0x44d20000    # 1680.0f

    div-float/2addr v1, v2

    aput v1, v0, v7

    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    aput v4, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/16 v1, 0x12

    aput v4, v0, v1

    const/16 v1, 0x13

    aput v4, v0, v1

    goto/16 :goto_0
.end method

.method private getTextColorArray(I)[F
    .locals 9
    .param p1, "color"    # I

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    .line 685
    and-int/lit16 v4, p1, 0xff

    int-to-float v1, v4

    .line 686
    .local v1, "b":F
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v2, v4

    .line 687
    .local v2, "g":F
    shr-int/lit8 v4, p1, 0x20

    and-int/lit16 v4, v4, 0xff

    int-to-float v3, v4

    .line 688
    .local v3, "r":F
    shr-int/lit8 v4, p1, 0x30

    and-int/lit16 v4, v4, 0xff

    int-to-float v0, v4

    .line 689
    .local v0, "a":F
    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v5, 0x0

    div-float v6, v0, v8

    aput v6, v4, v5

    const/4 v5, 0x1

    div-float v6, v3, v8

    aput v6, v4, v5

    const/4 v5, 0x2

    div-float v6, v2, v8

    aput v6, v4, v5

    const/4 v5, 0x3

    div-float v6, v1, v8

    aput v6, v4, v5

    const/4 v5, 0x4

    aput v7, v4, v5

    const/4 v5, 0x5

    aput v7, v4, v5

    const/4 v5, 0x6

    aput v7, v4, v5

    const/4 v5, 0x7

    aput v7, v4, v5

    const/16 v5, 0x8

    aput v7, v4, v5

    const/16 v5, 0x9

    aput v7, v4, v5

    const/16 v5, 0xa

    aput v7, v4, v5

    const/16 v5, 0xb

    aput v7, v4, v5

    const/16 v5, 0xc

    aput v7, v4, v5

    const/16 v5, 0xd

    aput v7, v4, v5

    const/16 v5, 0xe

    aput v7, v4, v5

    const/16 v5, 0xf

    aput v7, v4, v5

    const/16 v5, 0x10

    aput v7, v4, v5

    const/16 v5, 0x11

    aput v7, v4, v5

    const/16 v5, 0x12

    aput v7, v4, v5

    const/16 v5, 0x13

    aput v7, v4, v5

    return-object v4
.end method

.method private initBackground(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 625
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f020238

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 626
    return-void
.end method

.method private rotateCanvas(ILcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 7
    .param p1, "degrees"    # I
    .param p2, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v6, 0x0

    .line 693
    if-nez p1, :cond_0

    .line 705
    :goto_0
    return-void

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getWidth()I

    move-result v3

    .line 695
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getHeight()I

    move-result v2

    .line 696
    .local v2, "h":I
    div-int/lit8 v0, v3, 0x2

    .line 697
    .local v0, "cx":I
    div-int/lit8 v1, v2, 0x2

    .line 698
    .local v1, "cy":I
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-interface {p2, v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 699
    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {p2, v4, v6, v6, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 700
    rem-int/lit16 v4, p1, 0xb4

    if-eqz v4, :cond_1

    .line 701
    neg-int v4, v1

    int-to-float v4, v4

    neg-int v5, v0

    int-to-float v5, v5

    invoke-interface {p2, v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 703
    :cond_1
    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-interface {p2, v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method private saveFile([BLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "bfile"    # [B
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    .line 750
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 752
    .local v5, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 754
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 756
    :cond_0
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    .end local v5    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 758
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 759
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 763
    if-eqz v1, :cond_1

    .line 765
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 770
    :cond_1
    :goto_0
    if-eqz v8, :cond_6

    .line 772
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 778
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dir":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 766
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 767
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 773
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 774
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 775
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 760
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 761
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 763
    if-eqz v0, :cond_3

    .line 765
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 770
    :cond_3
    :goto_3
    if-eqz v7, :cond_2

    .line 772
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 773
    :catch_3
    move-exception v4

    .line 774
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 766
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 767
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 763
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v0, :cond_4

    .line 765
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 770
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 772
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 775
    :cond_5
    :goto_6
    throw v9

    .line 766
    :catch_5
    move-exception v4

    .line 767
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 773
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 774
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 763
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_4

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 760
    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_2

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method private scalePreviewTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 477
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraScreenNail;->getFboDrawTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    .line 478
    .local v0, "previewTexture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_1

    :cond_0
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_2

    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 480
    :cond_1
    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .end local v0    # "previewTexture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    move-object v3, v0

    .line 505
    :goto_0
    return-object v3

    .line 484
    .restart local v0    # "previewTexture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :cond_2
    const/4 v3, 0x0

    .line 485
    .local v3, "scaledTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIs16v9:Z

    if-eqz v4, :cond_4

    .line 486
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 487
    new-instance v3, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .end local v3    # "scaledTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    sget v5, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    invoke-direct {v3, v4, v5, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    .line 498
    .restart local v3    # "scaledTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    :goto_1
    invoke-interface {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 499
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 500
    .local v2, "rcSrc":Landroid/graphics/RectF;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 501
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 502
    .local v1, "rcDst":Landroid/graphics/RectF;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 503
    invoke-virtual {v0, p1, v2, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 504
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    goto :goto_0

    .line 489
    .end local v1    # "rcDst":Landroid/graphics/RectF;
    .end local v2    # "rcSrc":Landroid/graphics/RectF;
    :cond_3
    new-instance v3, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .end local v3    # "scaledTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    sget v5, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    invoke-direct {v3, v4, v5, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    .restart local v3    # "scaledTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    goto :goto_1

    .line 492
    :cond_4
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 493
    new-instance v3, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .end local v3    # "scaledTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    sget v5, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v4, v5, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    .restart local v3    # "scaledTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    goto :goto_1

    .line 495
    :cond_5
    new-instance v3, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .end local v3    # "scaledTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    sget v5, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    invoke-direct {v3, v4, v5, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    .restart local v3    # "scaledTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    goto :goto_1
.end method


# virtual methods
.method public changeImageViewSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 709
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaRealTimePreviewViewHeight:I

    mul-int/2addr v0, p1

    div-int/2addr v0, p2

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTextureWidth:I

    .line 710
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaRealTimePreviewViewHeight:I

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTexturHeight:I

    .line 711
    return-void
.end method

.method public deinitPreviewContainer()V
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->TAG:Ljava/lang/String;

    const-string v1, "deinitPreviewContainer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewContainerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->freeTexture()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureLeft:I

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureRight:I

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureTop:I

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureBottom:I

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    :cond_0
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;[FI)V
    .locals 9
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "transformMatrix"    # [F
    .param p3, "orientation"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 579
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    if-nez v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTextureShow:Z

    if-eqz v0, :cond_0

    .line 583
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 584
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v7, v0, 0x0

    .line 585
    .local v7, "cx":I
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v8, v0, 0x0

    .line 586
    .local v8, "cy":I
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 587
    const/high16 v0, -0x40800000    # -1.0f

    invoke-interface {p1, v2, v0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 588
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 589
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mLeftDownX:I

    iget v4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mLeftDownY:I

    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mWidth:F

    float-to-int v5, v0

    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mHeight:F

    float-to-int v6, v0

    move-object v0, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    .line 590
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto :goto_0
.end method

.method public getImageViewWidth()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTextureWidth:I

    return v0
.end method

.method public hideHintBG()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->hideToastBackGround()V

    .line 664
    :cond_0
    return-void
.end method

.method public hidePreviewBar()V
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mNeedDrawBackground:Z

    .line 643
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->initBackground(Landroid/content/Context;)V

    .line 601
    sget-object v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraUtil.mScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-float v0, v0

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setScreenSize(FF)V

    .line 603
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setOrientation(I)V

    .line 604
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09030e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaRealTimePreviewViewHeight:I

    .line 605
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaRealTimePreviewViewHeight:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setViewSize(FF)V

    .line 606
    const/high16 v0, 0x41f00000    # 30.0f

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setCenterPointInScreen(FF)V

    .line 607
    return-void
.end method

.method public initPreviewContainer(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 247
    sget-object v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPreviewContainer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewContainerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_0
    new-instance v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    .line 250
    monitor-exit v1

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public needDrawHintBG(Z)V
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 646
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mNeedDrawHintBG:Z

    .line 647
    return-void
.end method

.method public needDrawPreviewTexture(Z)V
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 650
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mNeedDrawPreviewTexture:Z

    .line 651
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 611
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 613
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 617
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 619
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->destoryBackground()V

    .line 620
    return-void
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 17
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 291
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    if-eqz v2, :cond_13

    .line 293
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->scalePreviewTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-result-object v12

    .line 294
    .local v12, "previewTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v2, :cond_1

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 295
    :cond_0
    sget-object v2, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "preview W or H has changed.ReInit"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 299
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-nez v2, :cond_2

    .line 300
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v3

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 302
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    check-cast v2, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_f

    .line 304
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 317
    :cond_4
    :goto_0
    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 318
    const/4 v12, 0x0

    .line 319
    sget-object v2, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGLRoot().getCompensation() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v4

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v2, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mClipRatio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWidth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHeight "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v2, :cond_22

    .line 323
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    .line 324
    .local v14, "rcSrc":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatio:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatio:F

    mul-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v14, Landroid/graphics/RectF;->right:F

    .line 332
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatioH:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v2

    if-ltz v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatioH:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatioH:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v14, Landroid/graphics/RectF;->bottom:F

    .line 340
    :goto_2
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    .line 341
    .local v13, "rcDst":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_18

    .line 342
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mHeight:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mWidth:F

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 347
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8

    .line 348
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v2, :cond_7

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->yield()V

    .line 351
    :cond_7
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 355
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v2, :cond_9

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v14, v13}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 358
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBackgroundView:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mNeedDrawBackground:Z

    if-eqz v2, :cond_a

    .line 361
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->drawBackGroudView(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 364
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTextureShow:Z

    if-eqz v2, :cond_b

    .line 365
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->drawScaledTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 371
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewContainerLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    if-eqz v2, :cond_21

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_c

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureLeft:I

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureTop:I

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->getRight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureRight:I

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->getBottom()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureBottom:I

    .line 380
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_1a

    .line 381
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIsLeft2Right:Z

    if-eqz v2, :cond_19

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureLeft:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureTop:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureRight:I

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureTop:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v9

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->addScaledPreview(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;FFFFI)V

    .line 398
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 399
    sget-object v2, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPanoramaIncrementalList.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mAddTextureLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_1d

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->getPreviewTextureYUV420sp()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->hasSetData()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->getPreviewTextureYUV420sp()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->UNIT_MATRIX:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureLeft:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureTop:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureRight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureBottom:I

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->updateTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;[FIIII)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 401
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 306
    .end local v11    # "i":I
    .end local v13    # "rcDst":Landroid/graphics/RectF;
    .end local v14    # "rcSrc":Landroid/graphics/RectF;
    :cond_f
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_11

    .line 307
    :cond_10
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 308
    const/16 v2, 0xb4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->rotateCanvas(ILcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 310
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIs16v9:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 313
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_4

    .line 314
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 471
    .end local v12    # "previewTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    :catch_0
    move-exception v10

    .line 472
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_7
    return-void

    .line 311
    .restart local v12    # "previewTexture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    :cond_14
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_15

    const/16 v2, 0x1e0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_6

    .line 312
    :cond_15
    const/4 v2, 0x0

    const/16 v3, 0x1e0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_6

    .line 328
    .restart local v14    # "rcSrc":Landroid/graphics/RectF;
    :cond_16
    const/4 v2, 0x0

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatio:F

    mul-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 336
    :cond_17
    const/4 v2, 0x0

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatioH:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 344
    .restart local v13    # "rcDst":Landroid/graphics/RectF;
    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mHeight:F

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 385
    :cond_19
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureLeft:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureBottom:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureRight:I

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureBottom:I

    int-to-float v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v9

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->addScaledPreview(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;FFFFI)V

    goto/16 :goto_4

    .line 441
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 388
    :cond_1a
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_e

    .line 389
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIsLeft2Right:Z

    if-eqz v2, :cond_1c

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureLeft:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureTop:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureRight:I

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureTop:I

    int-to-float v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v9

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->addScaledPreview(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;FFFFI)V

    goto/16 :goto_4

    .line 393
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureLeft:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureBottom:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureRight:I

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewYUVTextureBottom:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v8

    add-int/2addr v3, v8

    int-to-float v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v9

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->addScaledPreview(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;FFFFI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 411
    .restart local v11    # "i":I
    :cond_1d
    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 422
    .end local v11    # "i":I
    :cond_1e
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->getTexture()Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    if-nez v2, :cond_23

    .line 424
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 425
    const/16 v2, 0x5a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->rotateCanvas(ILcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 434
    :cond_1f
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->getTexture()Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaPreviewContainer:Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->getTexture()Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_21

    .line 437
    :cond_20
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 441
    :cond_21
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 443
    .end local v13    # "rcDst":Landroid/graphics/RectF;
    .end local v14    # "rcSrc":Landroid/graphics/RectF;
    :cond_22
    :try_start_a
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    .line 452
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIs16v9:Z

    if-eqz v2, :cond_25

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_7

    .line 411
    .restart local v11    # "i":I
    .restart local v13    # "rcDst":Landroid/graphics/RectF;
    .restart local v14    # "rcSrc":Landroid/graphics/RectF;
    :catchall_1
    move-exception v2

    :try_start_b
    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v2

    .line 426
    .end local v11    # "i":I
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_24

    .line 427
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 428
    const/16 v2, 0xb4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->rotateCanvas(ILcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_8

    .line 429
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_1f

    .line 430
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 431
    const/16 v2, 0x10e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->rotateCanvas(ILcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_8

    .line 466
    .end local v13    # "rcDst":Landroid/graphics/RectF;
    .end local v14    # "rcSrc":Landroid/graphics/RectF;
    :cond_25
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x41800000    # 16.0f

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto/16 :goto_7

    .line 468
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mExture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_7
.end method

.method public setCenterPointInScreen(FF)V
    .locals 2
    .param p1, "centerx"    # F
    .param p2, "centery"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 150
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterX:F

    .line 151
    iput p2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mCenterY:F

    .line 152
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mWidth:F

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mLeftDownX:I

    .line 153
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mHeight:F

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mLeftDownY:I

    .line 154
    return-void
.end method

.method public setClipRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 277
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatio:F

    .line 278
    return-void
.end method

.method public setClipRatioH(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 281
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 282
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatioH:F

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mClipRatioH:F

    goto :goto_0
.end method

.method public setIs16v9(Z)V
    .locals 0
    .param p1, "is"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIs16v9:Z

    .line 270
    return-void
.end method

.method public setIsLeft2Right(Z)V
    .locals 0
    .param p1, "is"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mIsLeft2Right:Z

    .line 274
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mOrientation:I

    .line 207
    return-void
.end method

.method public setPreviewBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 242
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 243
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 244
    return-void
.end method

.method public setPreviewTextureShow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPreviewTextureShow:Z

    .line 236
    return-void
.end method

.method public setPreviewYUVData([BIIII)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I

    .prologue
    .line 722
    sget-object v2, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prcUpdate [L:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " T:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " R:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, p2, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " B:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, p3, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    rem-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_0

    rem-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_0

    array-length v2, p1

    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    .line 736
    .local v6, "buffer":[B
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;

    invoke-direct {v1, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;-><init>(II)V

    .line 737
    .local v1, "texture":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;
    invoke-virtual {v1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->SetElementsData([B)V

    .line 739
    new-instance v0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;

    add-int v4, p2, p4

    add-int v5, p3, p5

    move v2, p4

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;-><init>(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;IIII)V

    .line 740
    .local v0, "p":Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mAddTextureLock:Ljava/lang/Object;

    monitor-enter v3

    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mPanoramaIncrementalList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setScreenNail(Lcom/lenovo/scg/camera/CameraScreenNail;)V
    .locals 0
    .param p1, "s"    # Lcom/lenovo/scg/camera/CameraScreenNail;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    .line 597
    return-void
.end method

.method public setScreenSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 180
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenWidth:F

    .line 181
    iput p2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenHeight:F

    .line 182
    return-void
.end method

.method public setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 0
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 194
    return-void
.end method

.method public setViewSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 166
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mWidth:F

    .line 167
    iput p2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mHeight:F

    .line 168
    return-void
.end method

.method public setVisibilityInGLThread(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .line 220
    .local v0, "root":Lcom/lenovo/scg/gallery3d/ui/GLRootView;
    if-eqz v0, :cond_0

    .line 221
    new-instance v1, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$1;

    invoke-direct {v1, p0, p0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$1;-><init>(Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;Lcom/lenovo/scg/gallery3d/ui/GLView;I)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHintBG(ILandroid/graphics/Rect;I)V
    .locals 1
    .param p1, "textColor"    # I
    .param p2, "textrect"    # Landroid/graphics/Rect;
    .param p3, "oriention"    # I

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getTextColorArray(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mTextColors:[F

    .line 656
    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mTextrect:Landroid/graphics/Rect;

    .line 657
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->showToastBackGround()V

    .line 658
    return-void
.end method

.method public showPreviewBar()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->mNeedDrawBackground:Z

    .line 638
    return-void
.end method
