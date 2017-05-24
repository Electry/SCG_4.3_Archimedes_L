.class Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# static fields
.field private static sInstance:Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;


# instance fields
.field private mComponent:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field private mPreferredHeight:I

.field private mPreferredWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->sInstance:Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;

    return-void
.end method

.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 0
    .param p1, "component"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->mComponent:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 34
    return-void
.end method

.method public static getInstance(Lcom/lenovo/scg/gallery3d/ui/GLView;)Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;
    .locals 1
    .param p0, "component"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 37
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->sInstance:Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;

    iput-object p0, v0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->mComponent:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 38
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->sInstance:Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;

    return-object v0
.end method

.method private static getLength(II)I
    .locals 2
    .param p0, "measureSpec"    # I
    .param p1, "prefered"    # I

    .prologue
    .line 53
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 54
    .local v0, "specLength":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v0, p1

    .line 60
    .end local v0    # "specLength":I
    :goto_0
    :sswitch_0
    return v0

    .line 58
    .restart local v0    # "specLength":I
    :sswitch_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public measure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->mComponent:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    .line 49
    .local v0, "p":Landroid/graphics/Rect;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->mPreferredWidth:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->getLength(II)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->mPreferredHeight:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->getLength(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->setMeasuredSize(II)V

    .line 50
    return-void
.end method

.method protected setMeasuredSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->mComponent:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/GLView;->setMeasuredSize(II)V

    .line 66
    return-void
.end method

.method public setPreferredContentSize(II)Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->mPreferredWidth:I

    .line 43
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/MeasureHelper;->mPreferredHeight:I

    .line 44
    return-object p0
.end method
