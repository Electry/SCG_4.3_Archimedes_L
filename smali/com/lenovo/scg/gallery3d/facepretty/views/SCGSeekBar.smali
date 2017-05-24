.class public Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;
.super Landroid/widget/SeekBar;
.source "SCGSeekBar.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private thumbDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 46
    .local v6, "thumbRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->mPaint:Landroid/graphics/Paint;

    const v1, -0xd3520f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->mPaint:Landroid/graphics/Paint;

    const v1, 0x33ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 45
    .end local v6    # "thumbRect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
