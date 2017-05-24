.class Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;
.super Ljava/lang/Object;
.source "CameraBrowsePage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemIndex(Lcom/lenovo/scg/gallery3d/data/Path;)I
    .locals 5
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 195
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$000(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v3

    .line 196
    .local v3, "start":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$000(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v0

    .line 197
    .local v0, "end":I
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 198
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$100(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    .line 199
    .local v2, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 201
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :goto_1
    return v1

    .line 197
    .restart local v1    # "i":I
    .restart local v2    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 187
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$000(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 188
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$000(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->bounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 189
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$000(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/SlotView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$000(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 190
    return-object v1
.end method
