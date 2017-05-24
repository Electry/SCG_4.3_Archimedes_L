.class public Lcom/lenovo/scg/camera/objtracking/ObjectRectView;
.super Landroid/view/View;
.source "ObjectRectView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mObjRect:Landroid/graphics/Rect;

.field private mObjectChanged:Z

.field private mPaint:Landroid/graphics/Paint;

.field public mnDefaultH:I

.field public mnDefaultW:I

.field public mnPreviewH:I

.field public mnPreviewW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ObjectRectView"

    sput-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjectChanged:Z

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjectChanged:Z

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    .line 51
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rcObject result JAVA is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and the factor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnPreviewW:I

    iget v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnDefaultW:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjectChanged:Z

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 64
    .local v7, "tempLeft":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 65
    .local v9, "tempTop":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 66
    .local v8, "tempRight":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 67
    .local v6, "tempBottom":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnPreviewH:I

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnPreviewH:I

    sub-int/2addr v1, v9

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 72
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rcObject result JAVA switch to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnPreviewW:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnDefaultW:I

    div-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnPreviewH:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnDefaultH:I

    div-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnPreviewW:I

    mul-int/2addr v0, v3

    iget v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnDefaultW:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnPreviewH:I

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mnDefaultH:I

    div-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjectChanged:Z

    goto/16 :goto_0
.end method

.method public resetObjRect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjectChanged:Z

    .line 98
    return-void
.end method

.method public setObjRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjRect:Landroid/graphics/Rect;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectRectView;->mObjectChanged:Z

    goto :goto_0
.end method
