.class public Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;
.super Landroid/view/View;
.source "SupplyMaskView.java"


# static fields
.field public static final COLOR_ORANGE_169:I = 0x66ffbb7e

.field public static final COLOR_ORANGE_43:I = -0x2b52

.field public static final COLOR_PINK_169:I = 0x66ffbde7

.field public static final COLOR_PINK_43:I = -0x220d

.field public static final SUPPLY_VALUE_OFF:Ljava/lang/String; = "off"

.field public static final SUPPLY_VALUE_ORANGE:Ljava/lang/String; = "orange"

.field public static final SUPPLY_VALUE_PINK:Ljava/lang/String; = "pink"

.field private static final TAG:Ljava/lang/String; = "SupplyMaskView"


# instance fields
.field private mBottomRect:Landroid/graphics/Rect;

.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTopRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mTopRect:Landroid/graphics/Rect;

    .line 43
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mBottomRect:Landroid/graphics/Rect;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mTopRect:Landroid/graphics/Rect;

    .line 43
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mBottomRect:Landroid/graphics/Rect;

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mTopRect:Landroid/graphics/Rect;

    .line 43
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mBottomRect:Landroid/graphics/Rect;

    .line 55
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    const-string v0, "SupplyMaskView"

    const-string/jumbo v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mTopRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mBottomRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 116
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mColor:I

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    return-void
.end method

.method public setIs11(II)V
    .locals 3
    .param p1, "screenW"    # I
    .param p2, "screenH"    # I

    .prologue
    .line 80
    sub-int v2, p2, p1

    div-int/lit8 v1, v2, 0x2

    .line 81
    .local v1, "offsetTop":I
    add-int v0, v1, p1

    .line 83
    .local v0, "offSetBottom":I
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->setOffsets(IIII)V

    .line 84
    return-void
.end method

.method public setOffsets(IIII)V
    .locals 2
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "screenW"    # I
    .param p4, "screenH"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mTopRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mTopRect:Landroid/graphics/Rect;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mBottomRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mBottomRect:Landroid/graphics/Rect;

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mBottomRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    return-void
.end method

.method public setRects(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "top"    # Landroid/graphics/Rect;
    .param p2, "bottom"    # Landroid/graphics/Rect;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mTopRect:Landroid/graphics/Rect;

    .line 103
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->mBottomRect:Landroid/graphics/Rect;

    .line 104
    return-void
.end method
