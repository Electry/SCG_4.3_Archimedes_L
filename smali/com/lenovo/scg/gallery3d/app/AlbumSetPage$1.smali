.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 197
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

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
    .line 209
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$000(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/EyePosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->resetPosition()V

    .line 214
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v0, v5, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 215
    .local v0, "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTopTabHeight()I

    move-result v4

    .line 216
    .local v4, "tabHeight":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetContent:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$100(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionView:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$200(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 218
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$300(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 220
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->getActionBarHeight()I

    move-result v4

    .line 223
    :cond_2
    move v3, v4

    .line 225
    .local v3, "slotViewTop":I
    sub-int v1, p5, p3

    .line 226
    .local v1, "slotViewBottom":I
    sub-int v2, p4, p2

    .line 228
    .local v2, "slotViewRight":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowDetails:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$500(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 229
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$600(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    move-result-object v5

    invoke-virtual {v5, p2, v3, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 234
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$800(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3, v2, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->layout(IIII)V

    .line 235
    return-void

    .line 231
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    goto :goto_0
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 239
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mX:F
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$900(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mY:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$1000(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mZ:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$1100(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 242
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 243
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 244
    return-void
.end method

.method protected renderBackground(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 201
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    .line 205
    return-void
.end method
