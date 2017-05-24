.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;
.super Ljava/lang/Object;
.source "GridLayoutMachine.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mGridCount:I

.field private mGridGap:I

.field private mGridIndex:I

.field private mGridWidth:I

.field private mOffsetY:I

.field private mTemplet:[[I

.field private mTemplet_col:I

.field private mTemplet_i:I

.field private mTemplet_j:I

.field private mTemplet_row:I

.field private random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->random:Ljava/util/Random;

    .line 43
    return-void
.end method

.method private updateTemplet(Z)V
    .locals 3
    .param p1, "isFirst"    # Z

    .prologue
    const/4 v2, 0x0

    .line 56
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridCount:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridIndex:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->random:Ljava/util/Random;

    invoke-static {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutTemplet;->getRandTempletEasyVersion(ILjava/util/Random;Z)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet:[[I

    .line 57
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_i:I

    .line 58
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_j:I

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet:[[I

    array-length v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_row:I

    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_row:I

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet:[[I

    aget-object v0, v0, v2

    array-length v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_col:I

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_col:I

    goto :goto_0
.end method


# virtual methods
.method public getNextGridRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "temp"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 68
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridIndex:I

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_i:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_j:I

    aget v0, v1, v2

    .line 70
    .local v0, "gridType":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridGap:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_j:I

    mul-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 71
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mOffsetY:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridGap:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_i:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 72
    packed-switch v0, :pswitch_data_0

    .line 90
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 74
    :pswitch_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 75
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 92
    :cond_0
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_j:I

    .line 93
    :goto_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_i:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_row:I

    if-ge v1, v2, :cond_2

    .line 94
    :goto_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_j:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_col:I

    if-ge v1, v2, :cond_1

    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_i:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_j:I

    aget v1, v1, v2

    if-eqz v1, :cond_4

    .line 99
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_j:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_col:I

    if-ge v1, v2, :cond_5

    .line 104
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_i:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_row:I

    if-ne v1, v2, :cond_3

    .line 105
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mOffsetY:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridGap:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_row:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mOffsetY:I

    .line 106
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->updateTemplet(Z)V

    .line 108
    :cond_3
    return-object p1

    .line 78
    :pswitch_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridGap:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 79
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 82
    :pswitch_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 83
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridGap:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 86
    :pswitch_3
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridGap:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 87
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridGap:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 94
    :cond_4
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_j:I

    goto :goto_2

    .line 102
    :cond_5
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_j:I

    .line 93
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mTemplet_i:I

    goto/16 :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setGridInfo(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "gap"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 46
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridWidth:I

    .line 47
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridGap:I

    .line 48
    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridCount:I

    .line 49
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mGridIndex:I

    .line 50
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->mOffsetY:I

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->updateTemplet(Z)V

    .line 52
    return-void
.end method
