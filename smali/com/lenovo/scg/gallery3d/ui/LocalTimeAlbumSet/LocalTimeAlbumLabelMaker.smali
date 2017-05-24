.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;
.super Ljava/lang/Object;
.source "LocalTimeAlbumLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = 0x0

.field private static final BORDER_SIZE:I = 0x1


# instance fields
.field private mBigTextPaint:Landroid/text/TextPaint;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mContext:Landroid/content/Context;

.field private mIsChineseLangure:Z

.field private final mItemsHeadString:Ljava/lang/String;

.field private final mItemsTailString:Ljava/lang/String;

.field private mLabelWidth:I

.field private final mMiddleTextPaint:Landroid/text/TextPaint;

.field private final mMonthCap:Ljava/lang/String;

.field private final mSmallTextPaint:Landroid/text/TextPaint;

.field private final mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spec"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    .prologue
    const v6, -0x5c5c5d

    const v5, -0xe6e6e7

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mIsChineseLangure:Z

    .line 95
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mIsChineseLangure:Z

    if-eqz v0, :cond_1

    .line 96
    iget v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->bigFontSize:I

    invoke-direct {p0, v0, v5, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->getHelveticaTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mBigTextPaint:Landroid/text/TextPaint;

    .line 100
    :goto_1
    iget v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->smallFontSize:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, v6, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mMiddleTextPaint:Landroid/text/TextPaint;

    .line 101
    iget v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->smallFontSize:I

    invoke-static {v0, v6, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mSmallTextPaint:Landroid/text/TextPaint;

    .line 107
    const-string v0, "/"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mMonthCap:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f095c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mItemsHeadString:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0714

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mItemsTailString:Ljava/lang/String;

    .line 110
    return-void

    .line 92
    :cond_0
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mIsChineseLangure:Z

    goto :goto_0

    .line 98
    :cond_1
    iget v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->bigFontSize:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0, v5, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mBigTextPaint:Landroid/text/TextPaint;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mIsChineseLangure:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mSmallTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mItemsHeadString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mItemsTailString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .prologue
    .line 54
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mBitmapWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .prologue
    .line 54
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mBitmapHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mMonthCap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mBigTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mMiddleTextPaint:Landroid/text/TextPaint;

    return-object v0
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
    .line 151
    monitor-enter p5

    .line 152
    int-to-float v0, p4

    :try_start_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p5, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 153
    int-to-float v0, p1

    invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p0, p3, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 154
    monitor-exit p5

    .line 155
    return-void

    .line 154
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
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method private getHelveticaTextPaint(IIZ)Landroid/text/TextPaint;
    .locals 2
    .param p1, "textSize"    # I
    .param p2, "color"    # I
    .param p3, "isBold"    # Z

    .prologue
    .line 128
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 129
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getHelveticaTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 130
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 132
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 134
    return-object v0
.end method

.method private static getTextPaint(IIZ)Landroid/text/TextPaint;
    .locals 2
    .param p0, "textSize"    # I
    .param p1, "color"    # I
    .param p2, "isBold"    # Z

    .prologue
    .line 117
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 119
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/text/TextPaint;)Landroid/text/TextPaint;

    .line 120
    int-to-float v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 122
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 124
    return-object v0
.end method


# virtual methods
.method public recycleLabel(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "label"    # Landroid/graphics/Bitmap;

    .prologue
    .line 275
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 276
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
    .line 146
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public declared-synchronized setLabelWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mLabelWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 143
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mLabelWidth:I

    .line 140
    const/4 v0, 0x2

    .line 141
    .local v0, "borders":I
    add-int v1, p1, v0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mBitmapWidth:I

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mBitmapHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    .end local v0    # "borders":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
