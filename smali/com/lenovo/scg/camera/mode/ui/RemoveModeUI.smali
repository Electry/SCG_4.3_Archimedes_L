.class public Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;
.super Landroid/widget/RelativeLayout;
.source "RemoveModeUI.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAddBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mContext:Landroid/content/Context;

.field mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMinusBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v0, "RemoveModeUI"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mInfoList:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mContext:Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->setWillNotDraw(Z)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->postInvalidate()V

    .line 130
    return-void
.end method

.method public initRectList([Landroid/graphics/Rect;I[I)V
    .locals 7
    .param p1, "rect"    # [Landroid/graphics/Rect;
    .param p2, "sum"    # I
    .param p3, "value"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 82
    const-string v2, "RemoveModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initRectList, sum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, "RemoveModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWidth() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v2, "RemoveModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 89
    const-string v2, "RemoveModeUI"

    const-string v5, "loop"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;-><init>()V

    .line 91
    .local v1, "info":Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;
    iget-object v2, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    aget-object v5, p1, v0

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 93
    const-string v2, "RemoveModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.rect.left = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v2, "RemoveModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.rect.top = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v2, "RemoveModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.rect.right = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v2, "RemoveModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.rect.bottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    sget v5, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenHeight:I

    int-to-float v5, v5

    sget v6, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 99
    iget-object v2, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    sget v5, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenHeight:I

    int-to-float v5, v5

    sget v6, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 100
    iget-object v2, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    sget v5, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenHeight:I

    int-to-float v5, v5

    sget v6, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 101
    iget-object v2, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    sget v5, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenHeight:I

    int-to-float v5, v5

    sget v6, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 103
    const-string v2, "RemoveModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.rect.left = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v2, "RemoveModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.rect.top = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v2, "RemoveModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.rect.right = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v2, "RemoveModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.rect.bottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    add-int/lit8 v2, v0, 0x1

    aget v2, p3, v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->isAdd:Z

    .line 116
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    move v2, v4

    .line 115
    goto :goto_1

    .line 119
    .end local v0    # "index":I
    .end local v1    # "info":Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_2
    if-ge v0, p2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;

    add-int/lit8 v5, v0, 0x1

    aget v5, p3, v5

    if-ne v5, v3, :cond_2

    move v5, v3

    :goto_3
    iput-boolean v5, v2, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->isAdd:Z

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v5, v4

    .line 120
    goto :goto_3

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->postInvalidate()V

    .line 125
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 60
    const-string v0, "RemoveModeUI"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 66
    const-string v0, "RemoveModeUI"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mInfoList:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mAddBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mAddBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 72
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mAddBitmap:Landroid/graphics/Bitmap;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mMinusBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mMinusBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mMinusBitmap:Landroid/graphics/Bitmap;

    .line 79
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 133
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 134
    const-string v2, "RemoveModeUI"

    const-string/jumbo v3, "onDraw"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;

    .line 138
    .local v1, "info":Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;
    iget-boolean v2, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->isAdd:Z

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mAddBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mBitmapWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mBitmapHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mMinusBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mBitmapWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v1, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mBitmapHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 146
    .end local v1    # "info":Lcom/lenovo/scg/camera/mode/ui/RemoveModeUIInfo;
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 49
    const-string v0, "RemoveModeUI"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202a9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mAddBitmap:Landroid/graphics/Bitmap;

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202aa

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mMinusBitmap:Landroid/graphics/Bitmap;

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mAddBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mBitmapWidth:I

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mAddBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->mBitmapHeight:I

    .line 55
    return-void
.end method
