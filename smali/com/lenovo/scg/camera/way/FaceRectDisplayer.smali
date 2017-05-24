.class public Lcom/lenovo/scg/camera/way/FaceRectDisplayer;
.super Landroid/view/View;
.source "FaceRectDisplayer.java"


# instance fields
.field private final MAX_FACE_NUMBER:I

.field private final TAG:Ljava/lang/String;

.field private mAS2ScreenRect:[Landroid/graphics/Rect;

.field private mASFaceNumber:I

.field private mASFaceRect:[Landroid/graphics/Rect;

.field private mISP2ScreenRect:[Landroid/graphics/Rect;

.field private mISPFaceNumber:I

.field private mISPFaceRect:[Landroid/graphics/Rect;

.field private mPaintGreen:Landroid/graphics/Paint;

.field private mPaintRed:Landroid/graphics/Paint;

.field private final mScreenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v0, "FaceRectDisplayer"

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->TAG:Ljava/lang/String;

    .line 23
    iput-object v3, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mASFaceRect:[Landroid/graphics/Rect;

    .line 24
    iput-object v3, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISPFaceRect:[Landroid/graphics/Rect;

    .line 25
    iput v2, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mASFaceNumber:I

    .line 26
    iput v2, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISPFaceNumber:I

    .line 28
    const/16 v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mScreenHeight:I

    .line 29
    iput v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->MAX_FACE_NUMBER:I

    .line 30
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mAS2ScreenRect:[Landroid/graphics/Rect;

    .line 31
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISP2ScreenRect:[Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mPaintGreen:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mPaintRed:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->init()V

    .line 41
    return-void
.end method

.method private drawASFace(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mASFaceRect:[Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 98
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mASFaceNumber:I

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mAS2ScreenRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mPaintGreen:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private drawISPFace(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISPFaceRect:[Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 105
    :cond_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISPFaceNumber:I

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISP2ScreenRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mPaintRed:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private toScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rImage"    # Landroid/graphics/Rect;
    .param p2, "rScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 76
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    if-eqz p2, :cond_0

    .line 78
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    rsub-int v0, v0, 0x438

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 79
    iget v0, p1, Landroid/graphics/Rect;->top:I

    rsub-int v0, v0, 0x438

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 80
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 81
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mPaintGreen:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mPaintGreen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mPaintGreen:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mPaintRed:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mPaintRed:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mPaintRed:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->setWillNotDraw(Z)V

    .line 51
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    const-string v0, "FaceRectDisplayer"

    const-string/jumbo v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->drawASFace(Landroid/graphics/Canvas;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->drawISPFace(Landroid/graphics/Canvas;)V

    .line 91
    return-void
.end method

.method public setASFaceRect([Landroid/graphics/Rect;I)V
    .locals 3
    .param p1, "rects"    # [Landroid/graphics/Rect;
    .param p2, "number"    # I

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mASFaceRect:[Landroid/graphics/Rect;

    .line 55
    iput p2, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mASFaceNumber:I

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 57
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mAS2ScreenRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mAS2ScreenRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mASFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mAS2ScreenRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->toScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public setISPFaceRect([Landroid/graphics/Rect;I)V
    .locals 3
    .param p1, "rects"    # [Landroid/graphics/Rect;
    .param p2, "number"    # I

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISPFaceRect:[Landroid/graphics/Rect;

    .line 66
    iput p2, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISPFaceNumber:I

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 68
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISP2ScreenRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISP2ScreenRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISPFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->mISP2ScreenRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/camera/way/FaceRectDisplayer;->toScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method
