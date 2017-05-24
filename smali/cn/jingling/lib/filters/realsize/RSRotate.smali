.class public Lcn/jingling/lib/filters/realsize/RSRotate;
.super Lcn/jingling/lib/filters/RealsizeFilter;
.source "RSRotate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/jingling/lib/filters/RealsizeFilter;-><init>()V

    return-void
.end method

.method private getRotatedPixelRect(IIII)[I
    .locals 7
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    .line 69
    sub-int v5, p2, p1

    sub-int v6, p4, p3

    mul-int/2addr v5, v6

    new-array v3, v5, [I

    .line 73
    .local v3, "pixelRect":[I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 85
    return-object v3

    .line 74
    :cond_0
    const/4 v5, 0x1

    invoke-static {v5}, Lcn/jingling/lib/jpegsupport/JpegSupport;->readJpegLines(I)[I

    move-result-object v4

    .line 75
    .local v4, "pixelsOneLine":[I
    move v2, p3

    .local v2, "j":I
    :goto_1
    if-lt v2, p4, :cond_1

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    sub-int v5, v2, p3

    sub-int v6, p2, p1

    mul-int/2addr v5, v6

    sub-int v6, p2, v0

    add-int/lit8 v6, v6, -0x1

    add-int v1, v5, v6

    .line 81
    .local v1, "index":I
    aget v5, v4, v2

    invoke-static {v3, v1, v5}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 10
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "args"    # [I

    .prologue
    const/4 v9, 0x0

    .line 13
    invoke-static {p2}, Lcn/jingling/lib/jpegsupport/JpegSupport;->initJpegReader(Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->getReaderSrcImageWidth()I

    move-result v6

    .line 15
    .local v6, "wSrc":I
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->getReaderSrcImageHeight()I

    move-result v1

    .line 17
    .local v1, "hSrc":I
    move v7, v1

    .line 18
    .local v7, "wTarget":I
    move v2, v6

    .line 20
    .local v2, "hTarget":I
    const/16 v8, 0x5a

    invoke-static {p3, v7, v2, v8}, Lcn/jingling/lib/jpegsupport/JpegSupport;->initJpegWriter(Ljava/lang/String;III)I

    .line 23
    const/16 v5, 0x1f4

    .line 25
    .local v5, "stepSpan":I
    const/4 v0, 0x0

    .line 27
    .local v0, "currentColumn":I
    const/4 v3, 0x0

    .line 29
    .local v3, "needInit":Z
    const/4 v0, 0x0

    :goto_0
    add-int v8, v0, v5

    if-le v8, v6, :cond_2

    .line 45
    if-ge v0, v6, :cond_1

    .line 47
    if-eqz v3, :cond_0

    .line 48
    invoke-static {p2}, Lcn/jingling/lib/jpegsupport/JpegSupport;->initJpegReader(Ljava/lang/String;)I

    .line 49
    const/4 v3, 0x0

    .line 52
    :cond_0
    invoke-direct {p0, v9, v1, v0, v6}, Lcn/jingling/lib/filters/realsize/RSRotate;->getRotatedPixelRect(IIII)[I

    move-result-object v4

    .line 53
    .local v4, "pixelRect":[I
    sub-int v8, v6, v0

    invoke-static {v4, v8}, Lcn/jingling/lib/jpegsupport/JpegSupport;->writeJpegLines([II)I

    .line 54
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->finishReadingAndRelease()V

    .line 55
    const/4 v3, 0x1

    .line 59
    .end local v4    # "pixelRect":[I
    :cond_1
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->finishWritingAndRelease()V

    .line 61
    const/4 v8, 0x1

    return v8

    .line 31
    :cond_2
    if-eqz v3, :cond_3

    .line 32
    invoke-static {p2}, Lcn/jingling/lib/jpegsupport/JpegSupport;->initJpegReader(Ljava/lang/String;)I

    .line 33
    const/4 v3, 0x0

    .line 36
    :cond_3
    add-int v8, v0, v5

    invoke-direct {p0, v9, v1, v0, v8}, Lcn/jingling/lib/filters/realsize/RSRotate;->getRotatedPixelRect(IIII)[I

    move-result-object v4

    .line 38
    .restart local v4    # "pixelRect":[I
    invoke-static {v4, v5}, Lcn/jingling/lib/jpegsupport/JpegSupport;->writeJpegLines([II)I

    .line 39
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->finishReadingAndRelease()V

    .line 41
    const/4 v3, 0x1

    .line 29
    add-int/2addr v0, v5

    goto :goto_0
.end method
