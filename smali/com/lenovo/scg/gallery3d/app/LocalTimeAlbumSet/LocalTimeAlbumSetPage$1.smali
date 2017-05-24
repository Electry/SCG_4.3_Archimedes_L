.class Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "LocalTimeAlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 182
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 191
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$000(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/EyePosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->resetPosition()V

    .line 193
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$100(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    .line 194
    .local v0, "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTopTabHeight()I

    move-result v4

    .line 195
    .local v4, "tabHeight":I
    move v3, v4

    .line 196
    .local v3, "slotViewTop":I
    sub-int v1, p5, p3

    .line 197
    .local v1, "slotViewBottom":I
    sub-int v2, p4, p2

    .line 199
    .local v2, "slotViewRight":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowDetails:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$200(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$300(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    move-result-object v5

    invoke-virtual {v5, p2, v3, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 205
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$500(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3, v2, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->layout(IIII)V

    .line 206
    return-void

    .line 202
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    goto :goto_0
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v5, 0x0

    .line 210
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 211
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->mMatrix:[F

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mX:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$600(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mY:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mZ:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$800(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 212
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->mMatrix:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 213
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 215
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$900(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$900(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    .line 217
    .local v0, "more":Z
    if-nez v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # setter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1, v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$902(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    .line 219
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->setSlotFilter(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;->invalidate()V

    .line 227
    .end local v0    # "more":Z
    :cond_1
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 228
    return-void
.end method

.method protected renderBackground(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 186
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    .line 187
    return-void
.end method
