.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;
.super Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;
.source "AlbumSetLabelRenderObject.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;-><init>()V

    return-void
.end method


# virtual methods
.method public renderContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;III)I
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "content"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;
    .param p3, "pass"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 28
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    check-cast p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    .end local p2    # "content":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;->getIndex()I

    move-result v2

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;->renderLabel(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)I

    move-result v0

    return v0
.end method

.method public setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    .line 23
    return-void
.end method
