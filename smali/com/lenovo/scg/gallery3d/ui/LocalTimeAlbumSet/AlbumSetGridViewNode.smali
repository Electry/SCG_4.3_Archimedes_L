.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;
.super Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;
.source "AlbumSetGridViewNode.java"


# instance fields
.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;-><init>(IIII)V

    .line 29
    return-void
.end method

.method private addRect(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;)V
    .locals 3
    .param p1, "node"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    .prologue
    .line 41
    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mX:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mX:I

    .line 42
    :cond_0
    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mY:I

    if-ge v0, v1, :cond_1

    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mY:I

    .line 43
    :cond_1
    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    iget v1, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mX:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mWidth:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    iget v1, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mWidth:I

    .line 44
    :cond_2
    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iget v1, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mY:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mHeight:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iget v1, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mHeight:I

    .line 45
    :cond_3
    return-void
.end method


# virtual methods
.method public SetVisiblePosition(II)V
    .locals 2
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 58
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mY:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mHeight:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mX:I

    if-ge p2, v0, :cond_0

    .line 62
    :cond_0
    return-void
.end method

.method public addGridNode(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->addRect(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;)V

    .line 50
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mTitle:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mX:I

    .line 35
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mY:I

    .line 36
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mWidth:I

    .line 37
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mHeight:I

    .line 38
    return-void
.end method

.method public getContent()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderObject()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public paint(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I
    .locals 1
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public setContent(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;)V
    .locals 0
    .param p1, "content"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;

    .prologue
    .line 80
    return-void
.end method

.method public setRenderObject(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;)V
    .locals 0
    .param p1, "renderObject"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;

    .prologue
    .line 92
    return-void
.end method

.method public setTitleNode(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mTitle:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->mTitle:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridViewNode;->addRect(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;)V

    .line 55
    return-void
.end method
