.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;
.super Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;
.source "AlbumSetGridRenderObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sReverse:Z


# instance fields
.field private mOffset:F

.field private mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

.field private mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const-class v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->$assertionsDisabled:Z

    .line 27
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->sReverse:Z

    return-void

    :cond_0
    move v0, v1

    .line 19
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    .line 25
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mOffset:F

    .line 29
    return-void
.end method


# virtual methods
.method public StartTextureMoveAnimation(I)V
    .locals 6
    .param p1, "duration"    # I

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->setDuration(I)V

    .line 75
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mOffset:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    .line 76
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->sReverse:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 77
    .local v0, "end":F
    :cond_1
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->sReverse:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->sReverse:Z

    .line 83
    :goto_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mOffset:F

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->setRegion(FF)V

    .line 84
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mOffset:F

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->start()V

    .line 87
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;->invalidate()V

    goto :goto_0

    .line 77
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 78
    .end local v0    # "end":F
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mOffset:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4

    .line 79
    const/4 v0, 0x0

    .restart local v0    # "end":F
    goto :goto_2

    .line 81
    .end local v0    # "end":F
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "end":F
    goto :goto_2
.end method

.method public StopTextureMoveAnimation()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->forceStop()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    .line 95
    :cond_0
    return-void
.end method

.method public isActiveTextureMoveAnimation()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public renderContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;III)I
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "content"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;
    .param p3, "pass"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 104
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_0
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mOffset:F

    .line 106
    .local v6, "offset":F
    const/4 v7, 0x0

    .line 107
    .local v7, "more":Z
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v7, v0

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->getMoveOffset()F

    move-result v6

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mTextureMoveAnimator:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;

    .line 114
    :cond_1
    if-eqz v7, :cond_2

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;->requestInvalidate()V

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    check-cast p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    .end local p2    # "content":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;->getIndex()I

    move-result v2

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;->renderSlot(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIIIF)I

    move-result v0

    return v0
.end method

.method public setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    .line 66
    return-void
.end method
