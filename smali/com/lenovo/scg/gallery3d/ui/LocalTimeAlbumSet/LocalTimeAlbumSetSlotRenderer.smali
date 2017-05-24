.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;
.super Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;
.source "LocalTimeAlbumSetSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$MyCacheListener;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x60

.field private static final FPS:I = 0x1e

.field private static final MSG_INVALIDATE:I = 0x0

.field private static final PLACEHOLDER_COLOR:I = -0x111112

.field private static final TAG:Ljava/lang/String; = "AlbumSetView"

.field private static final mDurationForFPS:I = 0x21


# instance fields
.field private final mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field protected mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field protected final mLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

.field private mLastInvalidateTime:J

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mSlotFilter:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

.field private mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

.field private final mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;)V
    .locals 5
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "selectionManager"    # Lcom/lenovo/scg/gallery3d/ui/SelectionManager;
    .param p3, "slotView"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
    .param p4, "labelSpec"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    .prologue
    const/4 v4, 0x1

    .line 123
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mPressedIndex:I

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 113
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mLastInvalidateTime:J

    .line 124
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 125
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 126
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .line 127
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    .line 129
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    const v2, -0x111112

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    invoke-virtual {v1, v4, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->setSize(II)V

    .line 132
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$1;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mHandler:Landroid/os/Handler;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mLastInvalidateTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mLastInvalidateTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    return-object v0
.end method

.method private static checkTexture(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .locals 1
    .param p0, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .prologue
    .line 189
    instance-of v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    .line 382
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    .line 361
    :cond_0
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .param p1, "visibleStart"    # I
    .param p2, "visibleEnd"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 354
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mInSelectionMode:Z

    .line 313
    return-void
.end method

.method protected renderContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "entry"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 289
    const/high16 v5, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->renderContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;IIF)I

    move-result v0

    return v0
.end method

.method protected renderContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;IIF)I
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "entry"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "textureOffset"    # F

    .prologue
    .line 239
    const/4 v6, 0x0

    .line 240
    .local v6, "renderRequestFlags":I
    if-nez p2, :cond_0

    move v7, v6

    .line 285
    .end local v6    # "renderRequestFlags":I
    .local v7, "renderRequestFlags":I
    :goto_0
    return v7

    .line 243
    .end local v7    # "renderRequestFlags":I
    .restart local v6    # "renderRequestFlags":I
    :cond_0
    iget-object v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->checkTexture(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    move-result-object v2

    .line 244
    .local v2, "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    if-nez v2, :cond_4

    .line 245
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 254
    :cond_1
    :goto_1
    iget v5, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->drawContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;III)V

    .line 255
    instance-of v0, v2, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;

    if-eqz v0, :cond_2

    check-cast v2, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;

    .end local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    or-int/lit8 v6, v6, 0x2

    .line 260
    :cond_2
    iget v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->mediaType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 261
    invoke-virtual {p0, p1, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->drawVideoOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    :cond_3
    :goto_2
    move v7, v6

    .line 285
    .end local v6    # "renderRequestFlags":I
    .restart local v7    # "renderRequestFlags":I
    goto :goto_0

    .line 247
    .end local v7    # "renderRequestFlags":I
    .restart local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .restart local v6    # "renderRequestFlags":I
    :cond_4
    iget-boolean v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    if-eqz v0, :cond_1

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 250
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;

    .end local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    iget-object v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;-><init>(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 251
    .restart local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    iput-object v2, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    goto :goto_1

    .line 262
    .end local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    :cond_5
    iget-boolean v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isGif:Z

    if-eqz v0, :cond_6

    .line 263
    invoke-virtual {p0, p1, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->drawGifOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_2

    .line 266
    :cond_6
    iget-boolean v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isSpeech:Z

    if-eqz v0, :cond_7

    .line 267
    invoke-virtual {p0, p1, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->drawSpeechOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_2

    .line 271
    :cond_7
    iget-boolean v0, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isPanorama:Z

    if-eqz v0, :cond_3

    .line 273
    invoke-virtual {p0, p1, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->drawPanoramaOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_2
.end method

.method public renderLabel(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)I
    .locals 1
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "pass"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->get(I)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->renderLabel(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;II)I

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method protected renderLabel(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "entry"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 293
    if-nez p2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v2

    .line 294
    :cond_1
    iget-object v1, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->checkTexture(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    move-result-object v0

    .line 295
    .local v0, "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v4

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method protected renderOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "entry"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "renderRequestFlags":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v1, p2, :cond_2

    .line 220
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->drawPressedUpFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 222
    or-int/lit8 v0, v0, 0x2

    .line 223
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 225
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mPressedIndex:I

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->drawPressedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    iget-object v2, p3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v1, v2, :cond_3

    .line 231
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->drawSelectedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 232
    :cond_3
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v2, p3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isOverCount:Z

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->drawSelectedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method

.method public renderSlot(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)I
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "pass"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 214
    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->renderSlot(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIIIF)I

    move-result v0

    return v0
.end method

.method public renderSlot(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIIIF)I
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "pass"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "textureOffset"    # F

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSlotFilter:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSlotFilter:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    invoke-interface {v0, p2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x0

    .line 209
    :cond_0
    :goto_0
    return v6

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->get(I)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    .line 198
    .local v3, "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    const/4 v6, 0x0

    .line 199
    .local v6, "renderRequestFlags":I
    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->renderContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->renderOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    .line 208
    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->renderTailLabel(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    .line 209
    goto :goto_0
.end method

.method protected renderTailLabel(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "entry"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 302
    if-nez p2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v2

    .line 303
    :cond_1
    iget-object v1, p2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->checkTexture(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    move-result-object v0

    .line 304
    .local v0, "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v4

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public requestInvalidate()V
    .locals 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 390
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->resume()V

    .line 347
    return-void
.end method

.method public setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)V
    .locals 5
    .param p1, "model"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->setListener(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;)V

    .line 178
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setSlotCount(I)Z

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    .line 182
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    const/16 v3, 0x60

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$MyCacheListener;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->setListener(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;)V

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setSlotCount(I)Z

    .line 186
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 158
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mPressedIndex:I

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    goto :goto_0
.end method

.method public setSlotFilter(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V
    .locals 0
    .param p1, "slotFilter"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mSlotFilter:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .line 373
    return-void
.end method
