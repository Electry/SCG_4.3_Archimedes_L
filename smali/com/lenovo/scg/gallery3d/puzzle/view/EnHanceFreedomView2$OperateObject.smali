.class Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
.super Ljava/lang/Object;
.source "EnHanceFreedomView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OperateObject"
.end annotation


# instance fields
.field locationX:F

.field locationY:F

.field matrix:Landroid/graphics/Matrix;

.field objectBtmap:Landroid/graphics/Bitmap;

.field objectHeight:F

.field objectWidth:F

.field originBitmap:Landroid/graphics/Bitmap;

.field priority:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "piority"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 753
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->priority:I

    .line 739
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    .line 741
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    .line 743
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    .line 745
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    .line 747
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    .line 749
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    .line 751
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    .line 754
    iput p3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->priority:I

    .line 755
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    .line 756
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    .line 757
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    .line 758
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginBtmapHeight()F
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 789
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOriginBtmapWidth()F
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 782
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 3

    .prologue
    .line 793
    const/4 v0, 0x1

    .line 794
    .local v0, "isPortrait":Z
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 795
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    .line 797
    :cond_0
    :goto_0
    return v0

    .line 795
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setObjectInfo(Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    .locals 5
    .param p1, "objectInfo"    # Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 761
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 762
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    div-float/2addr v0, v1

    iput v0, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->centerx:F

    .line 763
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    div-float/2addr v0, v1

    iput v0, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->centery:F

    .line 764
    iget v0, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->leftupx:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    .line 765
    iget v0, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->leftupy:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    .line 766
    iget v0, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    iget v1, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->scale:F

    iget v2, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->scale:F

    iget v3, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->centerx:F

    iget v4, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->centery:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    iget v1, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->degress:F

    iget v2, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->centerx:F

    iget v3, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->centery:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 770
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    iget v2, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->centerx:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    iget v3, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->centery:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 771
    return-object p0
.end method
