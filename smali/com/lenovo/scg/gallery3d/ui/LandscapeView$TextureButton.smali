.class public final Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;
.super Ljava/lang/Object;
.source "LandscapeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextureButton"
.end annotation


# instance fields
.field private m_Pos:Landroid/graphics/Rect;

.field private m_imagePressTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

.field private m_imageTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

.field private m_isPress:Z

.field private m_isVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_isPress:Z

    .line 102
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_isVisible:Z

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    .line 106
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imageTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 108
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imagePressTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 112
    return-void
.end method

.method public static draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;Landroid/graphics/Rect;)V
    .locals 6
    .param p0, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p1, "imgBtn"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;
    .param p2, "pos"    # Landroid/graphics/Rect;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imageTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imageTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public final GetImageTexHeight()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imageTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imageTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final GetImageTexWidth()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imageTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imageTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final SetImagePressTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V
    .locals 0
    .param p1, "tex"    # Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imagePressTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 134
    return-void
.end method

.method public final SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V
    .locals 0
    .param p1, "tex"    # Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imageTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 116
    return-void
.end method

.method public final SetPos(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 142
    return-void
.end method

.method public final SetPress(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_isPress:Z

    .line 155
    return-void
.end method

.method public final SetVisible(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_isVisible:Z

    .line 163
    return-void
.end method

.method public final draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_isVisible:Z

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_isPress:Z

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imagePressTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imagePressTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imageTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_imageTex:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public final getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final isHit(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 193
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->isHit(II)Z

    move-result v0

    return v0
.end method

.method public final isHit(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_isVisible:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_Pos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPress()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_isPress:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->m_isVisible:Z

    return v0
.end method
