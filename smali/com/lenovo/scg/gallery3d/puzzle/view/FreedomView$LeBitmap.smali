.class Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
.super Ljava/lang/Object;
.source "FreedomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeBitmap"
.end annotation


# instance fields
.field matrix:Landroid/graphics/Matrix;

.field originBitmap:Landroid/graphics/Bitmap;

.field preX:F

.field preY:F

.field priority:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;

.field transformBtmap:Landroid/graphics/Bitmap;

.field trformBtmpHeight:F

.field trformBtmpWidth:F


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "piority"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 601
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preX:F

    .line 587
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preY:F

    .line 589
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    .line 591
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    .line 593
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    .line 595
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->priority:I

    .line 599
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    .line 602
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    .line 603
    iput p3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->priority:I

    .line 604
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;Landroid/graphics/Bitmap;IFF)V
    .locals 2
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "priority"    # I
    .param p4, "preX"    # F
    .param p5, "preY"    # F

    .prologue
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 607
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;Landroid/graphics/Bitmap;I)V

    .line 608
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p4

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preX:F

    .line 609
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p5

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preY:F

    .line 610
    return-void
.end method


# virtual methods
.method public findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    .locals 5
    .param p1, "bitmaps"    # [Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    .param p2, "priority"    # I

    .prologue
    .line 613
    move-object v0, p1

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 614
    .local v2, "lebitmap":Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    iget v4, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->priority:I

    if-ne v4, p2, :cond_0

    .line 618
    .end local v2    # "lebitmap":Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    :goto_1
    return-object v2

    .line 613
    .restart local v2    # "lebitmap":Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    .end local v2    # "lebitmap":Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginBtmapHeight()F
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 661
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOriginBtmapWidth()F
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->priority:I

    return v0
.end method

.method public getTrformBtmapHeight()F
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    return v0
.end method

.method public getTrformBtmapWidth()F
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    return v0
.end method

.method public getXY(I)F
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 630
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 631
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preX:F

    .line 635
    :goto_0
    return v0

    .line 632
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 633
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preY:F

    goto :goto_0

    .line 635
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 3

    .prologue
    .line 672
    const/4 v0, 0x1

    .line 673
    .local v0, "isPortrait":Z
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    .line 676
    :cond_0
    :goto_0
    return v0

    .line 674
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leRecycle()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    .line 669
    :cond_0
    return-void
.end method

.method public setPiority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 622
    iput p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->priority:I

    .line 623
    return-void
.end method
