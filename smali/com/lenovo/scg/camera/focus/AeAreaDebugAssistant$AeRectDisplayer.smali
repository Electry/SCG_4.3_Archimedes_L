.class Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;
.super Landroid/view/View;
.source "AeAreaDebugAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AeRectDisplayer"
.end annotation


# instance fields
.field private isShow:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 201
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->this$0:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    .line 202
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mRect:Landroid/graphics/Rect;

    .line 198
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->isShow:Z

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mPaint:Landroid/graphics/Paint;

    .line 203
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->setWillNotDraw(Z)V

    .line 206
    return-void
.end method

.method private getRateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->this$0:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    # getter for: Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSizeRate:F
    invoke-static {v1}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->access$100(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getmPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mPaint:Landroid/graphics/Paint;

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->isShow:Z

    .line 220
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->invalidate()V

    .line 221
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 241
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->getRateString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->getmPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 243
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->isShow:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->getmPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 246
    :cond_0
    return-void
.end method

.method public show(III)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "size"    # I

    .prologue
    .line 209
    const-string v0, "AeAreaDebugAssistant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->isShow:Z

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mRect:Landroid/graphics/Rect;

    sub-int v1, p1, p3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mRect:Landroid/graphics/Rect;

    sub-int v1, p2, p3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mRect:Landroid/graphics/Rect;

    add-int v1, p1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->mRect:Landroid/graphics/Rect;

    add-int v1, p2, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 215
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->invalidate()V

    .line 216
    return-void
.end method
