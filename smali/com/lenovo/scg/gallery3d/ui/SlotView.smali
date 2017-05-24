.class public Lcom/lenovo/scg/gallery3d/ui/SlotView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/SlotView$MyGestureListener;,
        Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;,
        Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;,
        Lcom/lenovo/scg/gallery3d/ui/SlotView$ScatteringAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/SlotView$RisingAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;,
        Lcom/lenovo/scg/gallery3d/ui/SlotView$SimpleListener;,
        Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;
    }
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1

.field public static final OVERSCROLL_3D:I = 0x0

.field public static final OVERSCROLL_NONE:I = 0x2

.field public static final OVERSCROLL_SYSTEM:I = 0x1

.field public static final RENDER_MORE_FRAME:I = 0x2

.field public static final RENDER_MORE_PASS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlotView"

.field private static final WIDE:Z


# instance fields
.field private mAnimation:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;

.field private mContext:Landroid/content/Context;

.field private mDownInScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCameraBrowse:Z

.field private final mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;

.field private mMoreAnimation:Z

.field private mOverscrollEffect:I

.field private mPadding:I

.field private final mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

.field private mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

.field private mRequestRenderSlots:[I

.field private mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

.field private final mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

.field private mStartIndex:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

.field private mWidthPadding:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;)V
    .locals 3
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "spec"    # Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 121
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/Paper;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    .line 127
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mMoreAnimation:Z

    .line 129
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;

    .line 131
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;-><init>(Lcom/lenovo/scg/gallery3d/ui/SlotView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mStartIndex:I

    .line 138
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mOverscrollEffect:I

    .line 144
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    .line 164
    const/16 v0, 0x30

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPadding:I

    .line 166
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mWidthPadding:I

    .line 169
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mContext:Landroid/content/Context;

    .line 171
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mIsCameraBrowse:Z

    .line 176
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$MyGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/SlotView;Lcom/lenovo/scg/gallery3d/ui/SlotView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 177
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    .line 181
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    .line 185
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    .line 186
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;)V

    .line 189
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getViewDimens()V

    .line 190
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/ui/SlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mOverscrollEffect:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/Paper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mDownInScrolling:Z

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/SlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mWidthPadding:I

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/SlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPadding:I

    return v0
.end method

.method private static expandIntArray([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "capacity"    # I

    .prologue
    .line 349
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 350
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array p0, v0, [I

    goto :goto_0

    .line 352
    :cond_0
    return-object p0
.end method

.method private getViewDimens()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090456

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPadding:I

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    const/4 v1, 0x4

    # setter for: Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->access$102(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;I)I

    .line 195
    return-void
.end method

.method private renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "pass"    # I
    .param p4, "paperActive"    # Z

    .prologue
    .line 436
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 438
    .local v6, "rect":Landroid/graphics/Rect;
    if-eqz p4, :cond_1

    .line 439
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Lcom/lenovo/scg/gallery3d/ui/Paper;->getTransform(Landroid/graphics/Rect;F)[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 443
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0, p1, p2, v6}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v2

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;->renderSlot(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)I

    move-result v7

    .line 447
    .local v7, "result":I
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 448
    return v7

    .line 441
    .end local v7    # "result":I
    :cond_1
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method private updateScrollPosition(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "force"    # Z

    .prologue
    .line 292
    if-nez p2, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollY:I

    if-ne p1, v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 296
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollY:I

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->setScrollPosition(I)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->onScrollPositionChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollY:I

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "slotIndex"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSlotRect(ILcom/lenovo/scg/gallery3d/ui/GLView;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "rootPane"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 957
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 958
    .local v0, "offset":Landroid/graphics/Rect;
    invoke-virtual {p2, p0, v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getBoundsOf(Lcom/lenovo/scg/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 959
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 960
    .local v1, "r":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 961
    return-object v1
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 230
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v8}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 231
    .local v1, "rect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollY:I

    .line 232
    .local v4, "visibleBegin":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getHeight()I

    move-result v6

    .line 233
    .local v6, "visibleLength":I
    add-int v5, v4, v6

    .line 234
    .local v5, "visibleEnd":I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 235
    .local v2, "slotBegin":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 237
    .local v3, "slotEnd":I
    move v0, v4

    .line 238
    .local v0, "position":I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_1

    .line 239
    move v0, v4

    .line 246
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setScrollPosition(I)V

    .line 247
    return-void

    .line 240
    :cond_1
    if-ge v2, v4, :cond_2

    .line 241
    move v0, v2

    goto :goto_0

    .line 242
    :cond_2
    if-le v3, v5, :cond_0

    .line 243
    sub-int v0, v3, v6

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changeSize"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 266
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 272
    .local v0, "visibleIndex":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->setSize(II)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    .line 274
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mOverscrollEffect:I

    if-nez v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/Paper;->setSize(II)V

    goto :goto_0
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .param p1, "newPosition"    # I

    .prologue
    .line 303
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 304
    .local v0, "limit":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;->onScrollPositionChanged(II)V

    .line 305
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->onTouch(Landroid/view/MotionEvent;)Z

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return v1

    .line 324
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mDownInScrolling:Z

    .line 325
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->forceFinished()V

    goto :goto_0

    .line 324
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 328
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/Paper;->onRelease()V

    .line 329
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 24
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 357
    invoke-super/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 433
    :goto_0
    return-void

    .line 360
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;->prepareDrawing()V

    .line 362
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    .line 363
    .local v4, "animTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v9

    .line 364
    .local v9, "more":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->advanceAnimation(J)Z

    move-result v21

    or-int v9, v9, v21

    .line 365
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollX:I

    .line 366
    .local v13, "oldX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 368
    const/4 v14, 0x0

    .line 369
    .local v14, "paperActive":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mOverscrollEffect:I

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 371
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollX:I

    .line 372
    .local v12, "newX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v7

    .line 373
    .local v7, "limit":I
    if-lez v13, :cond_1

    if-eqz v12, :cond_2

    :cond_1
    if-ge v13, v7, :cond_4

    if-ne v12, v7, :cond_4

    .line 374
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v20

    .line 375
    .local v20, "v":F
    if-ne v12, v7, :cond_3

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    .line 378
    :cond_3
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_4

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/Paper;->edgeReached(F)V

    .line 382
    .end local v20    # "v":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/Paper;->advanceAnimation()Z

    move-result v14

    .line 385
    .end local v7    # "limit":I
    .end local v12    # "newX":I
    :cond_5
    or-int/2addr v9, v14

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;->calculate(J)Z

    move-result v21

    or-int v9, v9, v21

    .line 391
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollY:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 393
    const/16 v17, 0x0

    .line 394
    .local v17, "requestCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->access$500(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleStart:I
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->access$600(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I

    move-result v23

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->expandIntArray([II)[I

    move-result-object v19

    .line 396
    .local v19, "requestedSlot":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->access$500(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I

    move-result v21

    add-int/lit8 v6, v21, -0x1

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleStart:I
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->access$600(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I

    move-result v21

    move/from16 v0, v21

    if-lt v6, v0, :cond_9

    .line 397
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v6, v2, v14}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I

    move-result v16

    .line 398
    .local v16, "r":I
    and-int/lit8 v21, v16, 0x2

    if-eqz v21, :cond_7

    const/4 v9, 0x1

    .line 399
    :cond_7
    and-int/lit8 v21, v16, 0x1

    if-eqz v21, :cond_8

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "requestCount":I
    .local v18, "requestCount":I
    aput v6, v19, v17

    move/from16 v17, v18

    .line 396
    .end local v18    # "requestCount":I
    .restart local v17    # "requestCount":I
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 402
    .end local v16    # "r":I
    :cond_9
    const/4 v15, 0x1

    .local v15, "pass":I
    :goto_2
    if-eqz v17, :cond_c

    .line 403
    const/4 v10, 0x0

    .line 404
    .local v10, "newCount":I
    const/4 v6, 0x0

    move v11, v10

    .end local v10    # "newCount":I
    .local v11, "newCount":I
    :goto_3
    move/from16 v0, v17

    if-ge v6, v0, :cond_b

    .line 405
    aget v21, v19, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v15, v14}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I

    move-result v16

    .line 406
    .restart local v16    # "r":I
    and-int/lit8 v21, v16, 0x2

    if-eqz v21, :cond_a

    const/4 v9, 0x1

    .line 407
    :cond_a
    and-int/lit8 v21, v16, 0x1

    if-eqz v21, :cond_f

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "newCount":I
    .restart local v10    # "newCount":I
    aput v6, v19, v11

    .line 404
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v11, v10

    .end local v10    # "newCount":I
    .restart local v11    # "newCount":I
    goto :goto_3

    .line 409
    .end local v16    # "r":I
    :cond_b
    move/from16 v17, v11

    .line 402
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 414
    .end local v11    # "newCount":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->paint(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 418
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 420
    if-eqz v9, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    .line 422
    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .line 423
    .local v8, "listener":Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mMoreAnimation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    if-nez v9, :cond_e

    if-eqz v8, :cond_e

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/lenovo/scg/gallery3d/ui/SlotView$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/lenovo/scg/gallery3d/ui/SlotView$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/SlotView;Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    :cond_e
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mMoreAnimation:Z

    goto/16 :goto_0

    .end local v8    # "listener":Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    .restart local v11    # "newCount":I
    .restart local v16    # "r":I
    :cond_f
    move v10, v11

    .end local v11    # "newCount":I
    .restart local v10    # "newCount":I
    goto :goto_4
.end method

.method public setCameraBrowseState(Z)V
    .locals 0
    .param p1, "isCameraBrowse"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mIsCameraBrowse:Z

    .line 199
    return-void
.end method

.method public setCenterIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 220
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->access$400(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    .line 221
    .local v2, "slotCount":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 225
    .local v1, "rect":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 226
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;

    .line 337
    return-void
.end method

.method public setOverscrollEffect(I)V
    .locals 2
    .param p1, "kind"    # I

    .prologue
    const/4 v0, 0x1

    .line 344
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mOverscrollEffect:I

    .line 345
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setOverfling(Z)V

    .line 346
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 252
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 253
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3
    .param p1, "slotCount"    # I

    .prologue
    const/4 v2, -0x1

    .line 925
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->setSlotCount(I)Z

    move-result v0

    .line 926
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;->onUpdateBar(I)V

    .line 929
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mStartIndex:I

    if-eq v1, v2, :cond_0

    .line 931
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mStartIndex:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setStartIndexImpl(I)V

    .line 932
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mStartIndex:I

    .line 935
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollY:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setScrollPosition(I)V

    .line 936
    return v0
.end method

.method public setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;)V
    .locals 3
    .param p1, "slotDrawer"    # Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->access$200(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->access$300(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    .line 207
    :cond_0
    return-void
.end method

.method public setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;)V
    .locals 1
    .param p1, "spec"    # Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;)V

    .line 257
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 920
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mStartIndex:I

    .line 921
    return-void
.end method

.method public setStartIndexImpl(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 210
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->access$400(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    .line 211
    .local v2, "slotCount":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 215
    .local v1, "rect":Landroid/graphics/Rect;
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 216
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setUserInteractionListener(Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .line 341
    return-void
.end method

.method public startRisingAnimation()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SlotView$RisingAnimation;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$RisingAnimation;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;->start()V

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->access$400(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    .line 289
    :cond_0
    return-void
.end method

.method public startScatteringAnimation(Lcom/lenovo/scg/gallery3d/ui/RelativePosition;)V
    .locals 1
    .param p1, "position"    # Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    .prologue
    .line 280
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SlotView$ScatteringAnimation;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$ScatteringAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/RelativePosition;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;

    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotAnimation;->start()V

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->access$400(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    .line 283
    :cond_0
    return-void
.end method
