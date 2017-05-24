.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;
.super Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;
.source "AlbumSetLabelNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContent:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

.field private mRenderObject:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;-><init>(IIII)V

    .line 28
    return-void
.end method


# virtual methods
.method public getContent()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->mContent:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    return-object v0
.end method

.method public getRenderObject()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->mRenderObject:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;

    return-object v0
.end method

.method public getType()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;->ALBUM_SET_LABEL_NODE:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    return-object v0
.end method

.method public paint(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->mRenderObject:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->mContent:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->mWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->mHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;->renderContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;III)I

    move-result v6

    .line 41
    .local v6, "result":I
    return v6
.end method

.method public setContent(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;)V
    .locals 1
    .param p1, "content"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;

    .prologue
    .line 53
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    check-cast p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    .end local p1    # "content":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->mContent:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    .line 55
    return-void
.end method

.method public setRenderObject(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;)V
    .locals 0
    .param p1, "renderObject"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;

    .prologue
    .line 66
    check-cast p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;

    .end local p1    # "renderObject":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->mRenderObject:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;

    .line 67
    return-void
.end method
