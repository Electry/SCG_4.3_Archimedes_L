.class public Lcn/jingling/lib/filters/realsize/RSDecolorization;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSDecolorization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/jingling/lib/filters/realsize/RSLineFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "args"    # [I

    .prologue
    .line 18
    const/4 v2, 0x0

    .line 20
    .local v2, "thumb":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const/16 v6, 0x80

    const/16 v7, 0x80

    invoke-static {p1, v5, v6, v7}, Lcn/jingling/lib/file/ImageFile;->loadImage(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/jingling/lib/file/OtherException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 28
    :goto_0
    if-nez v2, :cond_0

    .line 29
    const/4 v5, 0x0

    .line 37
    :goto_1
    return v5

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 23
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 24
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 25
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 26
    .local v0, "e":Lcn/jingling/lib/file/OtherException;
    invoke-virtual {v0}, Lcn/jingling/lib/file/OtherException;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v0    # "e":Lcn/jingling/lib/file/OtherException;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 32
    .local v4, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 33
    .local v1, "h":I
    mul-int v5, v4, v1

    new-array v3, v5, [I

    .line 35
    .local v3, "thumbPixels":[I
    invoke-static {v3, v4, v1}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->setupDecolorization([III)V

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v5

    goto :goto_1
.end method

.method protected applyLine(Landroid/content/Context;[III)V
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "pixels"    # [I
    .param p3, "line"    # I
    .param p4, "height"    # I

    .prologue
    .line 42
    array-length v0, p2

    invoke-static {p2, v0}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->decolorization([II)V

    .line 43
    return-void
.end method

.method protected releaseLayers()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
