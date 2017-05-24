.class public Lcom/lenovo/scg/camera/front/AgeSmileBitmap;
.super Ljava/lang/Object;
.source "AgeSmileBitmap.java"


# instance fields
.field private mAge:Ljava/lang/String;

.field private mBitmap:[Landroid/graphics/Bitmap;

.field private mBitmapCover:[Landroid/graphics/Bitmap;

.field private mCanvas:[Landroid/graphics/Canvas;

.field private mCanvasPaint:Landroid/graphics/Paint;

.field private mHappy:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x7f0200b3

    const/4 v2, 0x5

    const/4 v4, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v1, v2, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmap:[Landroid/graphics/Bitmap;

    .line 17
    new-array v1, v2, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmapCover:[Landroid/graphics/Bitmap;

    .line 18
    new-array v1, v2, [Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvas:[Landroid/graphics/Canvas;

    .line 28
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mPaint:Landroid/graphics/Paint;

    .line 29
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvasPaint:Landroid/graphics/Paint;

    .line 33
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvasPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 35
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmap:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 37
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmapCover:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 38
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvas:[Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mAge:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mHappy:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getBitmap(III)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "index"    # I
    .param p2, "age"    # I
    .param p3, "happy"    # I

    .prologue
    const/high16 v6, 0x43160000    # 150.0f

    const/high16 v5, 0x42b00000    # 88.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v3, 0x0

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvas:[Landroid/graphics/Canvas;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmapCover:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvas:[Landroid/graphics/Canvas;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mAge:Ljava/lang/String;

    const/high16 v2, 0x42180000    # 38.0f

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvas:[Landroid/graphics/Canvas;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mHappy:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvas:[Landroid/graphics/Canvas;

    aget-object v0, v0, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvas:[Landroid/graphics/Canvas;

    aget-object v0, v0, p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v6, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public releaseBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmap:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmap:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmapCover:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmapCover:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 63
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mBitmapCover:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvas:[Landroid/graphics/Canvas;

    aput-object v2, v1, v0

    .line 67
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mPaint:Landroid/graphics/Paint;

    .line 68
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/AgeSmileBitmap;->mCanvasPaint:Landroid/graphics/Paint;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_2
    return-void
.end method
