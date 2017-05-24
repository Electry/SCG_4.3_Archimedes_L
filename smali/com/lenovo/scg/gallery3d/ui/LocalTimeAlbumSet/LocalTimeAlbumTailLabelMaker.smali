.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;
.super Ljava/lang/Object;
.source "LocalTimeAlbumTailLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker$AlbumLabelJob;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = -0x4c000000

.field private static final BORDER_SIZE:I = 0x1


# instance fields
.field private final mBigTextPaint:Landroid/text/TextPaint;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mContext:Landroid/content/Context;

.field private mFontHeightOffset:F

.field private mLabelWidth:I

.field private mLineHeightOffset:F

.field private final mLinePaint:Landroid/graphics/Paint;

.field private mMoreIcon:Landroid/graphics/Bitmap;

.field private mMoreIconHeightOffset:F

.field private mOthersText:Ljava/lang/String;

.field private final mSmallTextPaint:Landroid/text/TextPaint;

.field private final mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

.field private mTextHeightOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spec"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    .line 94
    iget v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->labelBigFontSize:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mBigTextPaint:Landroid/text/TextPaint;

    .line 95
    iget v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->labelSmallFontSize:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mSmallTextPaint:Landroid/text/TextPaint;

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mLinePaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mLinePaint:Landroid/graphics/Paint;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mFontHeightOffset:F

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mLineHeightOffset:F

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mTextHeightOffset:F

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mMoreIconHeightOffset:F

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f095b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mOthersText:Ljava/lang/String;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mBitmapWidth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mMoreIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mMoreIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mMoreIconHeightOffset:F

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mBitmapHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mBigTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mFontHeightOffset:F

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mLineHeightOffset:F

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mOthersText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mSmallTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mTextHeightOffset:F

    return v0
.end method

.method static drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "lengthLimit"    # I
    .param p5, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 133
    monitor-enter p5

    .line 134
    int-to-float v0, p4

    :try_start_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p5, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 135
    int-to-float v0, p1

    invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p0, p3, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 136
    monitor-exit p5

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBorderSize()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method private static getTextPaint(IIZ)Landroid/text/TextPaint;
    .locals 2
    .param p0, "textSize"    # I
    .param p1, "color"    # I
    .param p2, "isBold"    # Z

    .prologue
    .line 112
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 114
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/text/TextPaint;)Landroid/text/TextPaint;

    .line 115
    int-to-float v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 116
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 119
    return-object v0
.end method


# virtual methods
.method public recycleLabel(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "label"    # Landroid/graphics/Bitmap;

    .prologue
    .line 199
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 200
    return-void
.end method

.method public requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/String;
    .param p3, "sourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker$AlbumLabelJob;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker$AlbumLabelJob;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public declared-synchronized setLabelWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mBitmapWidth:I

    .line 124
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mBitmapWidth:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->mBitmapHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
