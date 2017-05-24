.class public Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;
.super Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;
.source "MiniCameraScanningLineRender.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;->initViews()V

    .line 28
    return-void
.end method

.method private drawScanningLine(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 43
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020750

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningLineRender;->drawScanningLine(Landroid/graphics/Canvas;)V

    .line 39
    return-void
.end method
