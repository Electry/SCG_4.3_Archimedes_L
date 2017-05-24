.class Lcom/lenovo/scg/camera/PanoramaModule$FlipBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlipBitmapDrawable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 933
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 934
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoramaModule$FlipBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 939
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 940
    .local v1, "cx":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 941
    .local v2, "cy":I
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 942
    const/high16 v3, 0x43340000    # 180.0f

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 943
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 944
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 945
    return-void
.end method
