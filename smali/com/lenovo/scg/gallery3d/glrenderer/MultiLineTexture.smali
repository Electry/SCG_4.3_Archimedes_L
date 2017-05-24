.class Lcom/lenovo/scg/gallery3d/glrenderer/MultiLineTexture;
.super Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;
.source "MultiLineTexture.java"


# instance fields
.field private final mLayout:Landroid/text/Layout;


# direct methods
.method private constructor <init>(Landroid/text/Layout;)V
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;-><init>(II)V

    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/MultiLineTexture;->mLayout:Landroid/text/Layout;

    .line 36
    return-void
.end method

.method public static newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;)Lcom/lenovo/scg/gallery3d/glrenderer/MultiLineTexture;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "textSize"    # F
    .param p3, "color"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 39
    invoke-static {p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v4

    .line 40
    .local v4, "paint":Landroid/text/TextPaint;
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move v5, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 42
    .local v0, "layout":Landroid/text/Layout;
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/MultiLineTexture;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/MultiLineTexture;-><init>(Landroid/text/Layout;)V

    return-object v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "backing"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/MultiLineTexture;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 48
    return-void
.end method
