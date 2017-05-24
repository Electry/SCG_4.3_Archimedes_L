.class Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;
.super Landroid/view/View;
.source "ZoomBarCanver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NumberView"
.end annotation


# static fields
.field private static final TEXT_COLOR:I = -0x1


# instance fields
.field private TEXT_SIZE:I

.field private mPaint:Landroid/graphics/Paint;

.field private numberMax:I

.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 901
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .line 902
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 897
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0x30

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    .line 899
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    .line 946
    iput v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->numberMax:I

    .line 904
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 905
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 906
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 907
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 908
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->setWillNotDraw(Z)V

    .line 909
    return-void
.end method

.method private getZoomNumber()Ljava/lang/String;
    .locals 10

    .prologue
    .line 948
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v7}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v2

    .line 949
    .local v2, "pos":I
    const-string v7, "ZoomBarCanver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----getZoomNumber: pos = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRatios:Ljava/util/List;
    invoke-static {v7}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$2000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_0

    .line 951
    const-string v7, "0.0X"

    .line 969
    :goto_0
    return-object v7

    .line 953
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;
    invoke-static {v7}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$2100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    move-result-object v7

    if-nez v7, :cond_1

    .line 954
    const-string v7, "0.0X"

    goto :goto_0

    .line 956
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;
    invoke-static {v7}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$2100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getSlideBarPosMin()I

    move-result v4

    .line 957
    .local v4, "posMin":I
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;
    invoke-static {v7}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$2100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getSlideBarPosMax()I

    move-result v3

    .line 958
    .local v3, "posMax":I
    const/16 v1, 0xa

    .line 959
    .local v1, "numberMin":I
    iget v7, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->numberMax:I

    if-nez v7, :cond_2

    .line 960
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRatios:Ljava/util/List;
    invoke-static {v7}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$2000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomMax:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    iput v7, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->numberMax:I

    .line 962
    :cond_2
    iget v7, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->numberMax:I

    sub-int/2addr v7, v1

    sub-int v8, v2, v4

    mul-int/2addr v7, v8

    sub-int v8, v3, v4

    div-int/2addr v7, v8

    add-int v0, v7, v1

    .line 963
    .local v0, "cNumber":I
    const-string v7, "ZoomBarCanver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getZoomNumber: posMin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const-string v7, "ZoomBarCanver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getZoomNumber: posMax = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const-string v7, "ZoomBarCanver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getZoomNumber: numberMax = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->numberMax:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-string v7, "ZoomBarCanver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getZoomNumber: cNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    div-int/lit8 v6, v0, 0xa

    .line 968
    .local v6, "zoomSig":I
    rem-int/lit8 v5, v0, 0xa

    .line 969
    .local v5, "zoomFraction":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "X"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private getZoomNumber(I)Ljava/lang/String;
    .locals 6
    .param p1, "zoom"    # I

    .prologue
    .line 937
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

    .line 938
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRatios:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$2000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "0.0X"

    .line 943
    :goto_0
    return-object v3

    .line 939
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRatios:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$2000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 940
    .local v0, "ratios":I
    div-int/lit8 v0, v0, 0xa

    .line 941
    div-int/lit8 v2, v0, 0xa

    .line 942
    .local v2, "zoomSig":I
    rem-int/lit8 v1, v0, 0xa

    .line 943
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


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 914
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 915
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mOrientation:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1900(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 934
    :goto_0
    return-void

    .line 917
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->getZoomNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 920
    :sswitch_1
    const/high16 v0, 0x43870000    # 270.0f

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 921
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->getZoomNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 924
    :sswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 925
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->getZoomNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 928
    :sswitch_3
    const/high16 v0, 0x42b40000    # 90.0f

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 929
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->getZoomNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->TEXT_SIZE:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 915
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
