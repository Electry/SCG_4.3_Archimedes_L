.class public Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;
.super Landroid/view/View;
.source "MiniCameraLockTargetRectView.java"


# static fields
.field private static final GONE_TIME:I = 0x258

.field private static final STROKEN_WIDTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LockTargetRectView"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mTargetRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v0, "LockTargetRectView"

    const-string v1, "LockTargetRectView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    const-string v0, "LockTargetRectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDraw, mTargetRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mPaint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->mTargetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 55
    .local v0, "color":I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->mPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->mTargetRect:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView$1;-><init>(Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method
