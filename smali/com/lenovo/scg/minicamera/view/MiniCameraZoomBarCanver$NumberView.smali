.class Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;
.super Landroid/view/View;
.source "MiniCameraZoomBarCanver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NumberView"
.end annotation


# static fields
.field private static final TEXT_COLOR:I = -0x1

.field private static final TEXT_SIZE:I = 0x30


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 751
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .line 752
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 749
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    .line 754
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 755
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 756
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 757
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 758
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->setWillNotDraw(Z)V

    .line 759
    return-void
.end method

.method private getZoomNumber(I)Ljava/lang/String;
    .locals 6
    .param p1, "zoom"    # I

    .prologue
    .line 778
    const-string v3, "ZoomBarCanver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getZoomNumber: zoom = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomRatios:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1700(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "0.0X"

    .line 784
    :goto_0
    return-object v3

    .line 780
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomRatios:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1700(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 781
    .local v0, "ratios":I
    div-int/lit8 v0, v0, 0xa

    .line 782
    div-int/lit8 v2, v0, 0xa

    .line 783
    .local v2, "zoomSig":I
    rem-int/lit8 v1, v0, 0xa

    .line 784
    .local v1, "zoomFraction":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private isRotate()Z
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mOrientation:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1600(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 764
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 765
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->isRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    const/high16 v0, 0x42b40000    # 90.0f

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v1

    add-int/lit8 v1, v1, -0x18

    int-to-float v1, v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 767
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$700(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->getZoomNumber(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v1

    add-int/lit8 v1, v1, -0x30

    int-to-float v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 771
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$700(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->getZoomNumber(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v1

    add-int/lit8 v1, v1, -0x30

    int-to-float v1, v1

    const/high16 v2, 0x42c00000    # 96.0f

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
