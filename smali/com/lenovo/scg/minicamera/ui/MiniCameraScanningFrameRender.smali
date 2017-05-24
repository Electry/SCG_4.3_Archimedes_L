.class public Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;
.super Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;
.source "MiniCameraScanningFrameRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$BottomValueAnimatorUpdateListener;,
        Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$TopValueAnimatorUpdateListener;,
        Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$LeftValueAnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DRUATION:I = 0x1f4

.field private static final ANIMATION_INTERPOLATOR:F = 0.6f


# instance fields
.field private mBarcodeHeight:I

.field private mBarcodeLeft:I

.field private mBarcodeTop:I

.field private mBarcodeWidth:I

.field private mBookcdHeight:I

.field private mBookcdLeft:I

.field private mBookcdTop:I

.field private mBookcdWidth:I

.field private mCurrentHeight:I

.field private mCurrentLeft:I

.field private mCurrentTop:I

.field private mCurrentWidth:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDstHeight:I

.field private mDstLeft:I

.field private mDstTop:I

.field private mDstWidth:I

.field private mOcrHeight:I

.field private mOcrLeft:I

.field private mOcrTop:I

.field private mOcrWidth:I

.field private mQrcodeHeight:I

.field private mQrcodeLeft:I

.field private mQrcodeTop:I

.field private mQrcodeWidth:I

.field private mScaleValueBottom:I

.field private mScaleValueLeft:I

.field private mScaleValueTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f02073b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    const v1, 0x7f090515

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeWidth:I

    .line 70
    const v1, 0x7f090516

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeHeight:I

    .line 71
    const v1, 0x7f090513

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeLeft:I

    .line 72
    const v1, 0x7f090514

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeTop:I

    .line 74
    const v1, 0x7f090519

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeWidth:I

    .line 75
    const v1, 0x7f09051a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeHeight:I

    .line 76
    const v1, 0x7f090517

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeLeft:I

    .line 77
    const v1, 0x7f090518

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeTop:I

    .line 79
    const v1, 0x7f09051d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdWidth:I

    .line 80
    const v1, 0x7f09051e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdHeight:I

    .line 81
    const v1, 0x7f09051b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdLeft:I

    .line 82
    const v1, 0x7f09051c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdTop:I

    .line 84
    const v1, 0x7f090521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrWidth:I

    .line 85
    const v1, 0x7f090522

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrHeight:I

    .line 86
    const v1, 0x7f09051f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrLeft:I

    .line 87
    const v1, 0x7f090520

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrTop:I

    .line 89
    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->getCurrentScanningFrameDimens(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 90
    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->getDstScanningFrameDimens(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 92
    iput v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueLeft:I

    .line 93
    iput v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueTop:I

    .line 95
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->setVisible(Z)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueLeft:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueLeft:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueTop:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueTop:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueBottom:I

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueBottom:I

    return p1
.end method

.method private drawScanningFrame(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 212
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstLeft:I

    if-ge v8, v9, :cond_0

    .line 213
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueLeft:I

    add-int v5, v8, v9

    .line 220
    .local v5, "left":I
    :goto_0
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentWidth:I

    add-int v2, v8, v9

    .line 221
    .local v2, "currentRight":I
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstLeft:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstWidth:I

    add-int v4, v8, v9

    .line 222
    .local v4, "dstRight":I
    if-ge v2, v4, :cond_2

    .line 223
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueLeft:I

    add-int v6, v2, v8

    .line 230
    .local v6, "right":I
    :goto_1
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstTop:I

    if-ge v8, v9, :cond_4

    .line 231
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueTop:I

    add-int v7, v8, v9

    .line 251
    .local v7, "top":I
    :goto_2
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentHeight:I

    add-int v1, v8, v9

    .line 253
    .local v1, "currentBottom":I
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstTop:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstHeight:I

    add-int v3, v8, v9

    .line 255
    .local v3, "dstBottom":I
    if-ge v1, v3, :cond_6

    .line 256
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueBottom:I

    add-int v0, v1, v8

    .line 266
    .local v0, "bottom":I
    :goto_3
    iget-object v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    iget-object v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 268
    return-void

    .line 214
    .end local v0    # "bottom":I
    .end local v1    # "currentBottom":I
    .end local v2    # "currentRight":I
    .end local v3    # "dstBottom":I
    .end local v4    # "dstRight":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_0
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstLeft:I

    if-le v8, v9, :cond_1

    .line 215
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueLeft:I

    sub-int v5, v8, v9

    .restart local v5    # "left":I
    goto :goto_0

    .line 217
    .end local v5    # "left":I
    :cond_1
    iget v5, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    .restart local v5    # "left":I
    goto :goto_0

    .line 224
    .restart local v2    # "currentRight":I
    .restart local v4    # "dstRight":I
    :cond_2
    if-le v2, v4, :cond_3

    .line 225
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueLeft:I

    sub-int v6, v2, v8

    .restart local v6    # "right":I
    goto :goto_1

    .line 227
    .end local v6    # "right":I
    :cond_3
    move v6, v2

    .restart local v6    # "right":I
    goto :goto_1

    .line 232
    :cond_4
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstTop:I

    if-le v8, v9, :cond_5

    .line 233
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueTop:I

    sub-int v7, v8, v9

    .restart local v7    # "top":I
    goto :goto_2

    .line 235
    .end local v7    # "top":I
    :cond_5
    iget v7, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    .restart local v7    # "top":I
    goto :goto_2

    .line 257
    .restart local v1    # "currentBottom":I
    .restart local v3    # "dstBottom":I
    :cond_6
    if-le v1, v3, :cond_7

    .line 258
    iget v8, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueBottom:I

    sub-int v0, v1, v8

    .restart local v0    # "bottom":I
    goto :goto_3

    .line 261
    .end local v0    # "bottom":I
    :cond_7
    move v0, v1

    .restart local v0    # "bottom":I
    goto :goto_3
.end method


# virtual methods
.method public getCurrentScanningFrameDimens(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .prologue
    .line 125
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne p1, v0, :cond_1

    .line 126
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeWidth:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentWidth:I

    .line 127
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeHeight:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentHeight:I

    .line 128
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeLeft:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    .line 129
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeTop:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    .line 146
    :cond_0
    :goto_0
    const-string/jumbo v0, "panhui5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentScanningFrameDimens, mCurrentLeft = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentTop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 130
    :cond_1
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne p1, v0, :cond_2

    .line 131
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeWidth:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentWidth:I

    .line 132
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeHeight:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentHeight:I

    .line 133
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeLeft:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    .line 134
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeTop:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    goto :goto_0

    .line 135
    :cond_2
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne p1, v0, :cond_4

    .line 136
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdWidth:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentWidth:I

    .line 137
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdHeight:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentHeight:I

    .line 138
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdLeft:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    .line 139
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdTop:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    goto :goto_0

    .line 140
    :cond_4
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne p1, v0, :cond_0

    .line 141
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrWidth:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentWidth:I

    .line 142
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrHeight:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentHeight:I

    .line 143
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrLeft:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    .line 144
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrTop:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    goto :goto_0
.end method

.method public getDstScanningFrameDimens(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .prologue
    .line 100
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne p1, v0, :cond_1

    .line 101
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeWidth:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstWidth:I

    .line 102
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeHeight:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstHeight:I

    .line 103
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeLeft:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstLeft:I

    .line 104
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mQrcodeTop:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstTop:I

    .line 121
    :cond_0
    :goto_0
    const-string/jumbo v0, "panhui5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDstcanningFrameDimens, mDstLeft = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDstTop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne p1, v0, :cond_2

    .line 106
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeWidth:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstWidth:I

    .line 107
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeHeight:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstHeight:I

    .line 108
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeLeft:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstLeft:I

    .line 109
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBarcodeTop:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstTop:I

    goto :goto_0

    .line 110
    :cond_2
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne p1, v0, :cond_4

    .line 111
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdWidth:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstWidth:I

    .line 112
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdHeight:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstHeight:I

    .line 113
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdLeft:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstLeft:I

    .line 114
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mBookcdTop:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstTop:I

    goto :goto_0

    .line 115
    :cond_4
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne p1, v0, :cond_0

    .line 116
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrWidth:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstWidth:I

    .line 117
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrHeight:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstHeight:I

    .line 118
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrLeft:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstLeft:I

    .line 119
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mOcrTop:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstTop:I

    goto :goto_0
.end method

.method public layout(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->layout(IIII)V

    .line 198
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->drawScanningFrame(Landroid/graphics/Canvas;)V

    .line 203
    return-void
.end method

.method public startScanningFrameAnimation()V
    .locals 14

    .prologue
    .line 151
    iget v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentLeft:I

    iget v12, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstLeft:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 152
    .local v6, "durationL":I
    const-string/jumbo v11, "panhui5"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "durationL = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v9, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$LeftValueAnimatorUpdateListener;

    invoke-direct {v9, p0, v6}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$LeftValueAnimatorUpdateListener;-><init>(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;I)V

    .line 155
    .local v9, "listenerL":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    const/4 v12, 0x1

    aput v6, v11, v12

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 156
    .local v1, "animatorL":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    const-wide/16 v12, 0x1f4

    invoke-virtual {v1, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 158
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    const v12, 0x3f19999a    # 0.6f

    invoke-direct {v11, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 162
    iget v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    iget v12, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstTop:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 170
    .local v7, "durationT":I
    const-string/jumbo v11, "panhui5"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "durationT = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v10, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$TopValueAnimatorUpdateListener;

    invoke-direct {v10, p0, v7}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$TopValueAnimatorUpdateListener;-><init>(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;I)V

    .line 172
    .local v10, "listenerT":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    const/4 v12, 0x1

    aput v7, v11, v12

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 173
    .local v2, "animatorT":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    const-wide/16 v12, 0x1f4

    invoke-virtual {v2, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 175
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    const v12, 0x3f19999a    # 0.6f

    invoke-direct {v11, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 182
    iget v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentTop:I

    iget v12, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mCurrentHeight:I

    add-int v3, v11, v12

    .line 183
    .local v3, "currentBottom":I
    iget v11, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstTop:I

    iget v12, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mDstHeight:I

    add-int v4, v11, v12

    .line 184
    .local v4, "dstBottom":I
    sub-int v11, v3, v4

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 185
    .local v5, "durationB":I
    const-string/jumbo v11, "panhui5"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "durationB = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v8, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$BottomValueAnimatorUpdateListener;

    invoke-direct {v8, p0, v5}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$BottomValueAnimatorUpdateListener;-><init>(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;I)V

    .line 188
    .local v8, "listenerB":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    const/4 v12, 0x1

    aput v5, v11, v12

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 189
    .local v0, "animatorB":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 190
    const-wide/16 v12, 0x1f4

    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 191
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    const v12, 0x3f19999a    # 0.6f

    invoke-direct {v11, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 193
    return-void
.end method
