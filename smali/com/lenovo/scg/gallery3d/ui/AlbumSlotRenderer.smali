.class public Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;
.super Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$1;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x30

.field private static final PLACEHOLDER_COLOR:I = -0x111112

.field private static final TAG:Ljava/lang/String; = "AlbumView"


# instance fields
.field private final mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field private mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

.field private mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mInMultiSelectionMode:Z

.field private mInSelectionMode:Z

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mSlotFilter:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

.field private final mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

.field private final mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SlotView;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;I)V
    .locals 3
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "slotView"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;
    .param p3, "selectionManager"    # Lcom/lenovo/scg/gallery3d/ui/SelectionManager;
    .param p4, "placeholderColor"    # I

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 82
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .line 83
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 84
    iput p4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    .line 86
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->setSize(II)V

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;)Lcom/lenovo/scg/gallery3d/ui/SlotView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private static checkTexture(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .locals 1
    .param p0, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .prologue
    .line 122
    instance-of v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    :cond_0
    return-object p0
.end method

.method private renderOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "entry"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "renderRequestFlags":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v1, p2, :cond_2

    .line 181
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->drawPressedUpFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 183
    or-int/lit8 v0, v0, 0x2

    .line 184
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 186
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->drawPressedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 191
    :cond_2
    iget-object v1, p3, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    iget-object v2, p3, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v1, v2, :cond_3

    .line 192
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 194
    :cond_3
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mInMultiSelectionMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v2, p3, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isMultiItemSelected(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->drawMultiSelected(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 197
    :cond_4
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v2, p3, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method


# virtual methods
.method public onSlotSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 247
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .param p1, "visibleStart"    # I
    .param p2, "visibleEnd"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 242
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->pause()V

    .line 229
    :cond_0
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inMultiSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mInMultiSelectionMode:Z

    .line 235
    return-void
.end method

.method public renderSlot(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)I
    .locals 10
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "pass"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    invoke-interface {v1, p2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v9, v0

    .line 175
    :cond_0
    :goto_0
    return v9

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v1, p2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v6

    .line 131
    .local v6, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    const/4 v9, 0x0

    .line 132
    .local v9, "renderRequestFlags":I
    if-eqz v6, :cond_0

    .line 135
    iget-object v1, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->checkTexture(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    move-result-object v2

    .line 136
    .local v2, "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    if-nez v2, :cond_7

    .line 137
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 144
    :cond_2
    :goto_1
    iget v5, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->drawContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;III)V

    .line 145
    instance-of v0, v2, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;

    if-eqz v0, :cond_3

    check-cast v2, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;

    .end local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    or-int/lit8 v9, v9, 0x2

    .line 150
    :cond_3
    iget v0, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 151
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->drawVideoOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 163
    :cond_4
    :goto_2
    iget-boolean v0, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanoramaPic:Z

    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->drawPanoramaOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 168
    :cond_5
    iget-boolean v0, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    if-eqz v0, :cond_6

    .line 169
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->drawPanoramaIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    :cond_6
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v7, p4

    move v8, p5

    .line 173
    invoke-direct/range {v3 .. v8}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->renderOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v0

    or-int/2addr v9, v0

    .line 175
    goto :goto_0

    .line 139
    .restart local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    :cond_7
    iget-boolean v1, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v1, :cond_2

    .line 140
    iput-boolean v0, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 141
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;

    .end local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    iget-object v1, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-direct {v2, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;-><init>(ILcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V

    .line 142
    .restart local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    iput-object v2, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    goto :goto_1

    .line 152
    .end local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    :cond_8
    iget-boolean v0, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isGif:Z

    if-eqz v0, :cond_9

    .line 153
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->drawGifOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_2

    .line 156
    :cond_9
    iget-boolean v0, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isSpeech:Z

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->drawSpeechOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_2
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->resume()V

    .line 223
    :cond_0
    return-void
.end method

.method public setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)V
    .locals 4
    .param p1, "model"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 112
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    .line 114
    :cond_0
    if-eqz p1, :cond_1

    .line 115
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/16 v2, 0x30

    invoke-direct {v0, v1, p1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v1, p0, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 119
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 91
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setSlotFilter(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V
    .locals 0
    .param p1, "slotFilter"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .line 251
    return-void
.end method
