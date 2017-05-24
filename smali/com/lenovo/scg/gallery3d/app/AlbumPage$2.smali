.class Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V
    .locals 1

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 229
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v7, 0x0

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "actionBarH":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 246
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->getActionBarHeight()I

    move-result v1

    .line 248
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->getHeight()I

    move-result v5

    add-int v4, v5, v1

    .line 252
    .local v4, "slotViewTop":I
    const/4 v0, 0x0

    .line 253
    .local v0, "actionBarBottomH":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$300(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$400(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 254
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->getActionBarBottomHeight()I

    move-result v0

    .line 256
    :cond_2
    sub-int/2addr p5, v0

    .line 259
    sub-int v2, p5, p3

    .line 260
    .local v2, "slotViewBottom":I
    sub-int v3, p4, p2

    .line 262
    .local v3, "slotViewRight":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShowDetails:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$500(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 263
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$600(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    move-result-object v5

    invoke-virtual {v5, p2, v4, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 269
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$800(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    move-result-object v5

    invoke-virtual {v5, v7, v4}, Lcom/lenovo/scg/gallery3d/ui/RelativePosition;->setReferencePosition(II)V

    .line 270
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$000(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/SlotView;

    move-result-object v5

    invoke-virtual {v5, v7, v4, v3, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->layout(IIII)V

    .line 271
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->mMatrix:[F

    sub-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v7, p5, p3

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mUserDistance:F
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$900(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)F

    move-result v8

    neg-float v8, v8

    invoke-static {v5, v6, v7, v8}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 272
    return-void

    .line 265
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    goto :goto_0
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v3, 0x0

    .line 276
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 277
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->mMatrix:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 278
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mBGColor:[F
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$1000(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)[F

    move-result-object v1

    invoke-super {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->setBackgroundColor([F)V

    .line 279
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 281
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$1100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$1100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    .line 283
    .local v0, "more":Z
    if-nez v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1, v3}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$1102(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    .line 285
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;->invalidate()V

    .line 292
    .end local v0    # "more":Z
    :cond_1
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 293
    return-void
.end method
