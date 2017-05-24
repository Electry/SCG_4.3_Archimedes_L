.class Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "CameraBrowsePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V
    .locals 1

    .prologue
    .line 205
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 207
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v6, 0x0

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "actionBarH":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    if-eqz v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->getActionBarHeight()I

    move-result v0

    .line 222
    :cond_0
    move v3, v0

    .line 224
    .local v3, "slotViewTop":I
    sub-int v1, p5, p3

    .line 225
    .local v1, "slotViewBottom":I
    sub-int v2, p4, p2

    .line 227
    .local v2, "slotViewRight":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShowDetails:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$200(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$300(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    move-result-object v4

    invoke-virtual {v4, p2, v3, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 234
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOpenCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$500(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    move-result-object v4

    invoke-virtual {v4, v6, v3}, Lcom/lenovo/scg/gallery3d/ui/RelativePosition;->setReferencePosition(II)V

    .line 235
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$000(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v2, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->layout(IIII)V

    .line 236
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->mMatrix:[F

    sub-int v5, p4, p2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mUserDistance:F
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$600(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)F

    move-result v7

    neg-float v7, v7

    invoke-static {v4, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 237
    return-void

    .line 230
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$400(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    goto :goto_0
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v3, 0x0

    .line 241
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 242
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->mMatrix:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 243
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mBGColor:[F
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$700(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)[F

    move-result-object v1

    invoke-super {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->setBackgroundColor([F)V

    .line 244
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 246
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$800(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$800(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    .line 248
    .local v0, "more":Z
    if-nez v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # setter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1, v3}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$802(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    .line 250
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$400(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;->invalidate()V

    .line 257
    .end local v0    # "more":Z
    :cond_1
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 258
    return-void
.end method

.method protected renderBackground(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 211
    invoke-interface {p1, v0, v0, v0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer(FFFF)V

    .line 212
    return-void
.end method
