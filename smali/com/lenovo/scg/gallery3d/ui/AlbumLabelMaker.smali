.class public Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = -0x80000000

.field private static final BORDER_SIZE:I = 0x1

.field private static final FONT_COLOR_COUNT:I = -0x1

.field private static final FONT_COLOR_TITLE:I = -0x1

.field private static final M_ELLIPSIS:Ljava/lang/String; = "..."

.field private static final M_MAX_LENGTH:I = 0xe

.field private static final THREAD_POOL_NAME_ALBUMLABELMAKER_ALBUMLABELJOB:Ljava/lang/String; = "pool_albumlabelmaker_albumlabeljob"


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCameraIcon:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mContext:Landroid/content/Context;

.field private final mCountBg:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mCountPaint:Landroid/text/TextPaint;

.field private mLabelWidth:I

.field private final mLocalSetIcon:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mPicasaIcon:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mTitlePaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spec"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 93
    iget v0, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    .line 94
    iget v0, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;

    .line 96
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v1, 0x7f0205e0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mLocalSetIcon:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 97
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v1, 0x7f0205e1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mPicasaIcon:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 98
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v1, 0x7f0205df

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mCameraIcon:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 99
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v1, 0x7f0205d6

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mCountBg:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mCountBg:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mBitmapWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mBitmapHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;

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
    .line 173
    monitor-enter p5

    .line 174
    int-to-float v0, p4

    :try_start_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p5, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 175
    int-to-float v0, p1

    invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p0, p3, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    monitor-exit p5

    .line 177
    return-void

    .line 176
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
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method private getOverlayAlbumIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "sourceType"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mCameraIcon:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mLocalSetIcon:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mPicasaIcon:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getTextPaint(IIZ)Landroid/text/TextPaint;
    .locals 7
    .param p1, "textSize"    # I
    .param p2, "color"    # I
    .param p3, "isBold"    # Z

    .prologue
    const/4 v6, 0x1

    .line 119
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    int-to-double v2, p1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int p1, v2

    .line 123
    :cond_0
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 126
    .local v1, "paint":Landroid/text/TextPaint;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/text/TextPaint;)Landroid/text/TextPaint;

    .line 129
    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 130
    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 131
    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 133
    if-eqz p3, :cond_1

    .line 134
    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
    :cond_1
    return-object v1
.end method


# virtual methods
.method public recycleLabel(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "label"    # Landroid/graphics/Bitmap;

    .prologue
    .line 278
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 279
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
    .line 168
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public declared-synchronized setLabelWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    .line 162
    const/4 v0, 0x2

    .line 163
    .local v0, "borders":I
    add-int v1, p1, v0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mBitmapWidth:I

    .line 164
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mBitmapHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    .end local v0    # "borders":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
