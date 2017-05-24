.class public abstract Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;
    }
.end annotation


# instance fields
.field protected mHeight:I

.field protected mWidth:I

.field protected mX:I

.field protected mY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    .line 25
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    .line 27
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mWidth:I

    .line 29
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    .line 69
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    .line 25
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    .line 27
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mWidth:I

    .line 29
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    .line 73
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    .line 74
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    .line 75
    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mWidth:I

    .line 76
    iput p4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    .line 80
    return-void
.end method


# virtual methods
.method public abstract getContent()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    return v0
.end method

.method public getRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 83
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 84
    return-object p1
.end method

.method public abstract getRenderObject()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;
.end method

.method public getType()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;->NONE:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    return v0
.end method

.method public abstract paint(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I
.end method

.method public abstract setContent(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;)V
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    .line 65
    return-void
.end method

.method public abstract setRenderObject(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;)V
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mWidth:I

    .line 57
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    .line 41
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    .line 49
    return-void
.end method
