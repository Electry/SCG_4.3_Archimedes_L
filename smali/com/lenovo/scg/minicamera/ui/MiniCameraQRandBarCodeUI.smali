.class public Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;
.super Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;
.source "MiniCameraQRandBarCodeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures$SingleTapListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$1;,
        Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraQRandBarCodeUI"

.field private static final TRANSLATE_ANIMATION_SCANNING_LINE_DURATION:I = 0x4b0


# instance fields
.field private mBottomTabBarcodeLayout:Landroid/widget/RelativeLayout;

.field private mBottomTabBookLayout:Landroid/widget/RelativeLayout;

.field private mBottomTabCDLayout:Landroid/widget/RelativeLayout;

.field private mBottomTabLayout:Landroid/widget/LinearLayout;

.field private mBottomTabOCRTransLayout:Landroid/widget/RelativeLayout;

.field private mBottomTabQrcodeLayout:Landroid/widget/RelativeLayout;

.field private mFlashView:Landroid/widget/ImageView;

.field private mGestures:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

.field private mHintView:Landroid/widget/TextView;

.field private mIsTorch:Z

.field private mLockTargetRectView:Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;

.field private mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

.field private mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

.field private mPictureView:Landroid/widget/ImageView;

.field private mPreviewStatus:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;

.field private mReturnImageView:Landroid/widget/ImageView;

.field private mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

.field private mScanningLineBookView:Landroid/widget/ImageView;

.field private mScanningLineQRView:Landroid/widget/ImageView;

.field private mScanningLineRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;

.field private mScanningMoveDurationBookCD:I

.field private mScanningMoveDurationQr:I

.field private mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

.field private mZoomBar:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

.field private mZoomChangeListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;

.field private mZoomMax:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

.field private mZoomValue:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;Landroid/view/View;)V
    .locals 4
    .param p1, "activity"    # Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;
    .param p2, "previewcontroller"    # Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;
    .param p3, "uicontroller"    # Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;
    .param p4, "parent"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040104

    move-object v0, p4

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100694

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;-><init>(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;Landroid/view/View;Landroid/view/SurfaceView;)V

    .line 138
    invoke-static {}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->getInstance()Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomBar:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .line 145
    iput-object p3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    .line 147
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->initData()V

    .line 149
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->initViews()V

    .line 151
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->startScanningLineQRAnimation()V

    .line 152
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomBar:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    return-object v0
.end method

.method private changeCoordinateSystem(Landroid/graphics/Point;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 10
    .param p1, "cameraPoint"    # Landroid/graphics/Point;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 643
    const-string v7, "MiniCameraQRandBarCodeUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeCoordinateSystem, previewView.rect= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getPreview()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getPreview()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v5, 0x0

    .line 646
    .local v5, "ratioh":F
    const/4 v6, 0x0

    .line 648
    .local v6, "ratiow":F
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getPreview()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 649
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getPreview()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 651
    iget v7, p1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v7, v8

    .line 652
    .local v1, "current_sys_left":F
    iget v3, p2, Landroid/graphics/RectF;->left:F

    .line 653
    .local v3, "current_sys_top":F
    iget v7, p1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->top:F

    sub-float v2, v7, v8

    .line 654
    .local v2, "current_sys_right":F
    iget v0, p2, Landroid/graphics/RectF;->right:F

    .line 656
    .local v0, "current_sys_bottom":F
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 657
    .local v4, "out":Landroid/graphics/RectF;
    mul-float v7, v1, v6

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v4, Landroid/graphics/RectF;->left:F

    .line 658
    mul-float v7, v3, v5

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v4, Landroid/graphics/RectF;->top:F

    .line 659
    mul-float v7, v2, v6

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v4, Landroid/graphics/RectF;->right:F

    .line 660
    mul-float v7, v0, v5

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v4, Landroid/graphics/RectF;->bottom:F

    .line 662
    return-object v4
.end method

.method private initData()V
    .locals 9

    .prologue
    .line 254
    sget-object v6, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iput-object v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 256
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    .line 259
    iget-object v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f090524

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 260
    .local v5, "scanningHeightQR":I
    iget-object v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f090526

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 263
    .local v4, "scanningHeightBook":I
    iget-object v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f090516

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 265
    .local v1, "lockQrHeight":I
    iget-object v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f09051e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 268
    .local v0, "lockBookCDHeight":I
    iget-object v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f090527

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 269
    .local v3, "offectQR":I
    iget-object v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f090528

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 272
    .local v2, "offectBook":I
    sub-int v6, v1, v5

    add-int/2addr v6, v3

    iput v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningMoveDurationQr:I

    .line 273
    sub-int v6, v0, v4

    add-int/2addr v6, v2

    iput v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningMoveDurationBookCD:I

    .line 275
    const-string v6, "MiniCameraQRandBarCodeUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initData, lockHeightQr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",scanningHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",moveheightQr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningMoveDurationQr:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v6, "MiniCameraQRandBarCodeUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initData, lockHeightBar="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",scanningHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",moveheightBar="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningMoveDurationBookCD:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f100695

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    .line 161
    const v1, 0x7f10069b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mReturnImageView:Landroid/widget/ImageView;

    .line 162
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mReturnImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v1, 0x7f100698

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineQRView:Landroid/widget/ImageView;

    .line 179
    const v1, 0x7f100699

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineBookView:Landroid/widget/ImageView;

    .line 183
    const v1, 0x7f10069a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mFlashView:Landroid/widget/ImageView;

    .line 184
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mFlashView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v1, 0x7f10069c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mPictureView:Landroid/widget/ImageView;

    .line 187
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mPictureView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v1, 0x7f10069e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabLayout:Landroid/widget/LinearLayout;

    .line 190
    const v1, 0x7f10069f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabQrcodeLayout:Landroid/widget/RelativeLayout;

    .line 191
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabQrcodeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v1, 0x7f1006a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBarcodeLayout:Landroid/widget/RelativeLayout;

    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBarcodeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v1, 0x7f1006a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBookLayout:Landroid/widget/RelativeLayout;

    .line 196
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBookLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v1, 0x7f1006a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabCDLayout:Landroid/widget/RelativeLayout;

    .line 198
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabCDLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v1, 0x7f1006ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabOCRTransLayout:Landroid/widget/RelativeLayout;

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabOCRTransLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v1, 0x7f100696

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mHintView:Landroid/widget/TextView;

    .line 215
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mHintView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 217
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateTabView()V

    .line 218
    return-void
.end method

.method private startScanningFrameAnimation()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    if-nez v0, :cond_0

    .line 614
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "startScanningFrameAnimation, mScanningFrameRender = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->getDstScanningFrameDimens(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 619
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->startScanningFrameAnimation()V

    goto :goto_0
.end method

.method private updateCodeView()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateScanningFrameView()V

    .line 403
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateScanningLineView()V

    .line 404
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateTabView()V

    .line 405
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateHintView()V

    .line 406
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updatePictureView()V

    .line 407
    return-void
.end method

.method private updateFlashView()V
    .locals 2

    .prologue
    .line 374
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mFlashView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mIsTorch:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020737

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    return-void

    .line 374
    :cond_0
    const v0, 0x7f020734

    goto :goto_0
.end method

.method private updateHintView()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_1

    .line 379
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mHintView:Landroid/widget/TextView;

    const v1, 0x7f0f09fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_2

    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mHintView:Landroid/widget/TextView;

    const v1, 0x7f0f09fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_3

    .line 383
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mHintView:Landroid/widget/TextView;

    const v1, 0x7f0f0a0b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_4

    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mHintView:Landroid/widget/TextView;

    const v1, 0x7f0f0a0c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mHintView:Landroid/widget/TextView;

    const v1, 0x7f0f0a0d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updatePictureView()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mPictureView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mPictureView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateScanningFrameView()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->startScanningFrameAnimation()V

    .line 295
    return-void
.end method

.method private updateScanningLineView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_1

    .line 299
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->stopScanningLineBookAnimation(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->startScanningLineQRAnimation()V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_3

    .line 302
    :cond_2
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->stopScanningLineQRAnimation(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->startScanningLineBookAnimation()V

    goto :goto_0

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_0

    .line 305
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->stopScanningLineQRAnimation(Z)V

    .line 306
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->stopScanningLineBookAnimation(Z)V

    goto :goto_0
.end method

.method private updateTabView()V
    .locals 13

    .prologue
    .line 312
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabQrcodeLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f1006a0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 313
    .local v9, "qrImage":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabQrcodeLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f1006a1

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 314
    .local v10, "qrText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 315
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabQrcodeLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 316
    const v11, 0x7f020730

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d014a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBarcodeLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f1006a3

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 320
    .local v0, "barImage":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBarcodeLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f1006a4

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 321
    .local v1, "barText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v11

    invoke-static {v11, v1}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 322
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBarcodeLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 323
    const v11, 0x7f020724

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d014a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBookLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f1006a6

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 327
    .local v2, "bookImage":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBookLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f1006a7

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 328
    .local v3, "bookText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 329
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBookLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 330
    const v11, 0x7f020727

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d014a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabCDLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f1006a9

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 334
    .local v4, "cdImage":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabCDLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f1006aa

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 335
    .local v5, "cdText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 336
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabCDLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    const v11, 0x7f02072a

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d014a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabOCRTransLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f1006ac

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 341
    .local v7, "ocrTransImage":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabOCRTransLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f1006ad

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 342
    .local v8, "ocrTransText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 343
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabOCRTransLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    const v11, 0x7f02072d

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d014a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v11}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->ordinal()I

    move-result v6

    .line 349
    .local v6, "mode":I
    sget-object v11, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v11}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->ordinal()I

    move-result v11

    if-ne v11, v6, :cond_1

    .line 350
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBarcodeLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f020721

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 351
    const v11, 0x7f020725

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d0149

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    sget-object v11, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v11}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->ordinal()I

    move-result v11

    if-ne v11, v6, :cond_2

    .line 354
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabQrcodeLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f020721

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 355
    const v11, 0x7f020731

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d0149

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 357
    :cond_2
    sget-object v11, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v11}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->ordinal()I

    move-result v11

    if-ne v11, v6, :cond_3

    .line 358
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabBookLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f020721

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 359
    const v11, 0x7f020728

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d0149

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 361
    :cond_3
    sget-object v11, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v11}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->ordinal()I

    move-result v11

    if-ne v11, v6, :cond_4

    .line 362
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabCDLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f020721

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 363
    const v11, 0x7f02072b

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d0149

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 365
    :cond_4
    sget-object v11, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v11}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->ordinal()I

    move-result v11

    if-ne v11, v6, :cond_0

    .line 366
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabOCRTransLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f020721

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 367
    const v11, 0x7f02072e

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    iget-object v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d0149

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mGestures:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mGestures:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 780
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initializeZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 704
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    if-nez v0, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomMax:I

    .line 706
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRatios:Ljava/util/List;

    .line 709
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    if-eqz v0, :cond_2

    .line 710
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;-><init>(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomChangeListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;

    .line 711
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    iget v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->setZoomMax(I)V

    .line 712
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->setZoom(I)V

    .line 713
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRatios:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->setZoomValue(I)V

    .line 714
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomChangeListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->setOnZoomChangeListener(Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;)V

    .line 717
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomBar:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomMax:I

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->init(Landroid/app/Activity;IILjava/util/List;)V

    .line 719
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomBar:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomChangeListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->setZoomChangedListener(Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;)V

    .line 720
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomBar:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->setEnable(Z)V

    goto :goto_0
.end method

.method public lockTargetArea(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 4
    .param p1, "result"    # Lcom/etao/kaka/decode/DecodeResult;

    .prologue
    .line 623
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 624
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, p1, Lcom/etao/kaka/decode/DecodeResult;->x:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 625
    iget v1, p1, Lcom/etao/kaka/decode/DecodeResult;->x:I

    iget v2, p1, Lcom/etao/kaka/decode/DecodeResult;->width:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 626
    iget v1, p1, Lcom/etao/kaka/decode/DecodeResult;->y:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 627
    iget v1, p1, Lcom/etao/kaka/decode/DecodeResult;->y:I

    iget v2, p1, Lcom/etao/kaka/decode/DecodeResult;->height:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 629
    const-string v1, "MiniCameraQRandBarCodeUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockTargetArea, rect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    invoke-interface {v1}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;->getCameraPreviewPoint()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->changeCoordinateSystem(Landroid/graphics/Point;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 633
    const-string v1, "MiniCameraQRandBarCodeUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockTargetArea, cameraPreviewPointResolution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    invoke-interface {v3}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;->getCameraPreviewPoint()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v1, "MiniCameraQRandBarCodeUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockTargetArea, rect chanaged= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mLockTargetRectView:Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->setRect(Landroid/graphics/RectF;)V

    .line 637
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mLockTargetRectView:Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->postInvalidate()V

    .line 638
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mLockTargetRectView:Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->setVisibility(I)V

    .line 639
    return-void
.end method

.method public onCameraOpened(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    .line 669
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->addRenderer(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    if-nez v0, :cond_1

    .line 673
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    .line 674
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->addRenderer(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;)V

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;

    if-nez v0, :cond_2

    .line 678
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;

    .line 679
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->addRenderer(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;)V

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mGestures:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

    if-nez v0, :cond_3

    .line 684
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    invoke-direct {v0, v1, v2, p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;-><init>(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures$SingleTapListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mGestures:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

    .line 686
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mGestures:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->reset()V

    .line 687
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mGestures:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->setOverlay(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)V

    .line 689
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mGestures:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mReturnImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->addUnclickableArea(Landroid/view/View;)V

    .line 692
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mGestures:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mFlashView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->addUnclickableArea(Landroid/view/View;)V

    .line 693
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mGestures:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mBottomTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->addUnclickableArea(Landroid/view/View;)V

    .line 695
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mGestures:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mPictureView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->addUnclickableArea(Landroid/view/View;)V

    .line 697
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->requestLayout()V

    .line 698
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->update()V

    .line 700
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 701
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 551
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 419
    :pswitch_1
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "onClick, qrcode_preview_return_btn!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v0, "click_button_return"

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;->finishActivity()V

    goto :goto_0

    .line 445
    :pswitch_2
    const-string v0, "MiniCameraQRandBarCodeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick, qrcode_preview_flash_btn!! mIsTorch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mIsTorch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v0, "click_button_flash"

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    .line 449
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mIsTorch:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mIsTorch:Z

    .line 450
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateFlashView()V

    .line 451
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    iget-boolean v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mIsTorch:Z

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;->setTorch(Z)V

    goto :goto_0

    .line 449
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 455
    :pswitch_3
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "onClick, qrcode_preview_picture_btn!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v0, "click_button_picture_select"

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;->handleSelectPicture()V

    goto :goto_0

    .line 463
    :pswitch_4
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "onClick, minicamera_preview_bottom_tab_qrcode!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v0, "click_tab_qrcode"

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-eq v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->getCurrentScanningFrameDimens(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 473
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 475
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateCodeView()V

    .line 476
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto/16 :goto_0

    .line 481
    :pswitch_5
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "onClick, minicamera_preview_bottom_tab_barcode!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v0, "click_tab_barcode"

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-eq v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->getCurrentScanningFrameDimens(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 491
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 493
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateCodeView()V

    .line 494
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto/16 :goto_0

    .line 499
    :pswitch_6
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "onClick, minicamera_preview_bottom_tab_book!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v0, "click_tab_bookandcd"

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-eq v0, v1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->getCurrentScanningFrameDimens(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 509
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 511
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateCodeView()V

    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto/16 :goto_0

    .line 516
    :pswitch_7
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "onClick, minicamera_preview_bottom_tab_book!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v0, "click_tab_bookandcd"

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-eq v0, v1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->getCurrentScanningFrameDimens(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 526
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 528
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateCodeView()V

    .line 529
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto/16 :goto_0

    .line 533
    :pswitch_8
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "onClick, minicamera_preview_bottom_tab_book!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v0, "click_tab_trans"

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-eq v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningFrameRender:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->getCurrentScanningFrameDimens(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 543
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 545
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateCodeView()V

    .line 546
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto/16 :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x7f10069a
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 237
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getCameraPreviewController()Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;->onSingleTapUp(Landroid/view/View;II)V

    .line 793
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 222
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "zoomSeekBar, onStartTrackingTouch!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 241
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "zoomSeekBar, onStopTrackingTouch!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method public removeZoomBar()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomBar:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomBar:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->destory()V

    .line 760
    :cond_0
    return-void
.end method

.method public setStatusBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mPreviewStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mPreviewStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 289
    return-void
.end method

.method public setStatusHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mPreviewStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mPreviewStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_0
    return-void
.end method

.method public startScanningLineBookAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 570
    const-string v1, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v2, "startScanningLineBookAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineBookView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 573
    const-string v1, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v2, "playScanningLineBookAnimation, mScanningLineBookView = null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineBookView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningMoveDurationBookCD:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 579
    .local v0, "a":Landroid/view/animation/TranslateAnimation;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 580
    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 581
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineBookView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 582
    return-void
.end method

.method public startScanningLineQRAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 554
    const-string v1, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v2, "startScanningLineQRAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineQRView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 557
    const-string v1, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v2, "playScanningLineAnimation, mScanningView = null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineQRView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningMoveDurationQr:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 564
    .local v0, "a":Landroid/view/animation/TranslateAnimation;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 565
    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 566
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineQRView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stopScanningLineBookAnimation(Z)V
    .locals 2
    .param p1, "invisible"    # Z

    .prologue
    .line 585
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "stopScanningLineBookAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineBookView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 588
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "stopScanningLineBookAnimation, mScanningLineBookView = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineBookView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 593
    if-eqz p1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineBookView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public stopScanningLineQRAnimation(Z)V
    .locals 2
    .param p1, "invisible"    # Z

    .prologue
    .line 599
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "stopScanningLineQRAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineQRView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 602
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "stopScanningLineQRAnimation, mScanningLineQRView = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineQRView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 607
    if-eqz p1, :cond_0

    .line 608
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mScanningLineQRView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateScanModeView(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 411
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateCodeView()V

    .line 412
    return-void
.end method
