.class public Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$ScatteringAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$RisingAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotRenderer;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SimpleListener;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;
    }
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1

.field public static final OVERSCROLL_3D:I = 0x0

.field public static final OVERSCROLL_NONE:I = 0x2

.field public static final OVERSCROLL_SYSTEM:I = 0x1

.field public static final RENDER_MORE_FRAME:I = 0x2

.field public static final RENDER_MORE_PASS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumSetSlotView"

.field private static final WIDE:Z


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mAnimation:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;

.field private mBgPadding:I

.field private mContentOffset:I

.field private mContext:Landroid/content/Context;

.field private mDownInScrolling:Z

.field private mFolderBgGap:I

.field private mFolderLeftPadding:I

.field private mFolderLineGap:I

.field private mFolderTopPadding:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;

.field private mMoreAnimation:Z

.field private mOverscrollEffect:I

.field private mPaddings:I

.field private final mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

.field private mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

.field private mRequestRenderSlots:[I

.field private mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

.field private final mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

.field private mShowEmpty:Z

.field private mStartIndex:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

.field private mUnitHeight:I

.field private mUnitWidth:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;)V
    .locals 5
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "spec"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    .prologue
    const/16 v4, 0x64

    const/16 v3, 0x28

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 109
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/Paper;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    .line 115
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mMoreAnimation:Z

    .line 117
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;

    .line 119
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mStartIndex:I

    .line 126
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mOverscrollEffect:I

    .line 132
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRequestRenderSlots:[I

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mTempRect:Landroid/graphics/Rect;

    .line 152
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    .line 156
    const/16 v0, 0x19

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mBgPadding:I

    .line 158
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContentOffset:I

    .line 162
    const/16 v0, 0x25

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mFolderTopPadding:I

    .line 164
    const/16 v0, 0x20

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mFolderLeftPadding:I

    .line 166
    const/16 v0, 0x34

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mFolderLineGap:I

    .line 168
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mFolderBgGap:I

    .line 170
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaddings:I

    .line 172
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitHeight:I

    .line 174
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitWidth:I

    .line 176
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 181
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 182
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    .line 183
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 187
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    .line 191
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mHandler:Landroid/os/Handler;

    .line 193
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;)V

    .line 194
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    .line 195
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getViewNeedDimens()V

    .line 197
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mOverscrollEffect:I

    return v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/Paper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mDownInScrolling:Z

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaddings:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mBgPadding:I

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitHeight:I

    return v0
.end method

.method private static expandIntArray([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "capacity"    # I

    .prologue
    .line 372
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 373
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array p0, v0, [I

    goto :goto_0

    .line 375
    :cond_0
    return-object p0
.end method

.method private getViewNeedDimens()V
    .locals 3

    .prologue
    const v2, 0x7f090473

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090469

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mFolderTopPadding:I

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09046a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mFolderLeftPadding:I

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09046b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mFolderLineGap:I

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09046c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mBgPadding:I

    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090470

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContentOffset:I

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaddings:I

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->access$102(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;I)I

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090476

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitHeight:I

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090477

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitWidth:I

    .line 223
    return-void
.end method

.method private renderCloud(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I
    .locals 2
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 380
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 381
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->renderCloud(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I

    move-result v0

    .line 382
    .local v0, "result":I
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 383
    return v0
.end method

.method private renderEmpty(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I
    .locals 2
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 393
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 394
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->renderEmpty(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I

    move-result v0

    .line 395
    .local v0, "result":I
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 396
    return v0
.end method

.method private renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "pass"    # I
    .param p4, "paperActive"    # Z

    .prologue
    .line 500
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 501
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 508
    .local v6, "rect":Landroid/graphics/Rect;
    if-eqz p4, :cond_1

    .line 509
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Lcom/lenovo/scg/gallery3d/ui/Paper;->getTransform(Landroid/graphics/Rect;F)[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 513
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;

    invoke-virtual {v0, p1, p2, v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContentOffset:I

    sub-int v4, v1, v2

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContentOffset:I

    sub-int v5, v1, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->renderSlot(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)I

    move-result v7

    .line 520
    .local v7, "result":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContentOffset:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContentOffset:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->renderSync(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;III)I

    move-result v0

    or-int/2addr v7, v0

    .line 523
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 524
    return v7

    .line 511
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
    .line 315
    if-nez p2, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollY:I

    if-ne p1, v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollY:I

    .line 321
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->setScrollPosition(I)V

    .line 322
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->onScrollPositionChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getItemBgHeight()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitHeight:I

    return v0
.end method

.method public getItemBgWidth()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitWidth:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 1029
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollY:I

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "slotIndex"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSlotRect(ILcom/lenovo/scg/gallery3d/ui/GLView;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "rootPane"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 202
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 203
    .local v0, "offset":Landroid/graphics/Rect;
    invoke-virtual {p2, p0, v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getBoundsOf(Lcom/lenovo/scg/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 204
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 205
    .local v1, "r":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 206
    return-object v1
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 253
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v8}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 254
    .local v1, "rect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollY:I

    .line 255
    .local v4, "visibleBegin":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getHeight()I

    move-result v6

    .line 256
    .local v6, "visibleLength":I
    add-int v7, v4, v6

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    iget v8, v8, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBgTextureHeight:I

    add-int v5, v7, v8

    .line 257
    .local v5, "visibleEnd":I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 258
    .local v2, "slotBegin":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 260
    .local v3, "slotEnd":I
    move v0, v4

    .line 261
    .local v0, "position":I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_1

    .line 262
    move v0, v4

    .line 269
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setScrollPosition(I)V

    .line 270
    return-void

    .line 263
    :cond_1
    if-ge v2, v4, :cond_2

    .line 264
    move v0, v2

    goto :goto_0

    .line 265
    :cond_2
    if-le v3, v5, :cond_0

    .line 266
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
    .line 289
    if-nez p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 295
    .local v0, "visibleIndex":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->setSize(II)V

    .line 296
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->makeSlotVisible(I)V

    .line 297
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mOverscrollEffect:I

    if-nez v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/Paper;->setSize(II)V

    goto :goto_0
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .param p1, "newPosition"    # I

    .prologue
    .line 326
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 327
    .local v0, "limit":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;->onScrollPositionChanged(II)V

    .line 328
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->onTouch(Landroid/view/MotionEvent;)Z

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 355
    :goto_0
    return v1

    .line 347
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mDownInScrolling:Z

    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->forceFinished()V

    goto :goto_0

    .line 347
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 351
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/Paper;->onRelease()V

    .line 352
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_0

    .line 345
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
    .line 401
    invoke-super/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 489
    :goto_0
    return-void

    .line 404
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->prepareDrawing()V

    .line 406
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    .line 407
    .local v4, "animTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v9

    .line 408
    .local v9, "more":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->advanceAnimation(J)Z

    move-result v21

    or-int v9, v9, v21

    .line 409
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollX:I

    .line 410
    .local v13, "oldX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v21

    if-gez v21, :cond_b

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->forceFinished()V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 417
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->updateScrollPosition(IZ)V

    .line 419
    const/4 v14, 0x0

    .line 420
    .local v14, "paperActive":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mOverscrollEffect:I

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 422
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollX:I

    .line 423
    .local v12, "newX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v7

    .line 424
    .local v7, "limit":I
    if-lez v13, :cond_2

    if-eqz v12, :cond_3

    :cond_2
    if-ge v13, v7, :cond_5

    if-ne v12, v7, :cond_5

    .line 425
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v20

    .line 426
    .local v20, "v":F
    if-ne v12, v7, :cond_4

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    .line 429
    :cond_4
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_5

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/Paper;->edgeReached(F)V

    .line 433
    .end local v20    # "v":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/Paper;->advanceAnimation()Z

    move-result v14

    .line 436
    .end local v7    # "limit":I
    .end local v12    # "newX":I
    :cond_6
    or-int/2addr v9, v14

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;->calculate(J)Z

    move-result v21

    or-int v9, v9, v21

    .line 442
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollY:I

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

    .line 443
    const-string/jumbo v21, "wwf11"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mScrollY = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollY:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mShowEmpty:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->renderEmpty(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I

    .line 446
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->renderCloud(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I

    .line 448
    const/16 v17, 0x0

    .line 449
    .local v17, "requestCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRequestRenderSlots:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->access$300(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleStart:I
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;)I

    move-result v23

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->expandIntArray([II)[I

    move-result-object v19

    .line 451
    .local v19, "requestedSlot":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->access$300(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;)I

    move-result v21

    add-int/lit8 v6, v21, -0x1

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleStart:I
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;)I

    move-result v21

    move/from16 v0, v21

    if-lt v6, v0, :cond_c

    .line 452
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v6, v2, v14}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I

    move-result v16

    .line 453
    .local v16, "r":I
    and-int/lit8 v21, v16, 0x2

    if-eqz v21, :cond_9

    const/4 v9, 0x1

    .line 454
    :cond_9
    and-int/lit8 v21, v16, 0x1

    if-eqz v21, :cond_a

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "requestCount":I
    .local v18, "requestCount":I
    aput v6, v19, v17

    move/from16 v17, v18

    .line 451
    .end local v18    # "requestCount":I
    .restart local v17    # "requestCount":I
    :cond_a
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 413
    .end local v6    # "i":I
    .end local v14    # "paperActive":Z
    .end local v16    # "r":I
    .end local v17    # "requestCount":I
    .end local v19    # "requestedSlot":[I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->forceFinished()V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    goto/16 :goto_1

    .line 457
    .restart local v6    # "i":I
    .restart local v14    # "paperActive":Z
    .restart local v17    # "requestCount":I
    .restart local v19    # "requestedSlot":[I
    :cond_c
    const/4 v15, 0x1

    .local v15, "pass":I
    :goto_3
    if-eqz v17, :cond_f

    .line 458
    const/4 v10, 0x0

    .line 459
    .local v10, "newCount":I
    const/4 v6, 0x0

    move v11, v10

    .end local v10    # "newCount":I
    .local v11, "newCount":I
    :goto_4
    move/from16 v0, v17

    if-ge v6, v0, :cond_e

    .line 460
    aget v21, v19, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v15, v14}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I

    move-result v16

    .line 461
    .restart local v16    # "r":I
    and-int/lit8 v21, v16, 0x2

    if-eqz v21, :cond_d

    const/4 v9, 0x1

    .line 462
    :cond_d
    and-int/lit8 v21, v16, 0x1

    if-eqz v21, :cond_12

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "newCount":I
    .restart local v10    # "newCount":I
    aput v6, v19, v11

    .line 459
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v11, v10

    .end local v10    # "newCount":I
    .restart local v11    # "newCount":I
    goto :goto_4

    .line 464
    .end local v16    # "r":I
    :cond_e
    move/from16 v17, v11

    .line 457
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 469
    .end local v11    # "newCount":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->paint(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 473
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 475
    if-eqz v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 477
    :cond_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .line 478
    .local v8, "listener":Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mMoreAnimation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    if-nez v9, :cond_11

    if-eqz v8, :cond_11

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    :cond_11
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mMoreAnimation:Z

    .line 488
    const-string/jumbo v21, "wwf11"

    const-string/jumbo v22, "render"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v8    # "listener":Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    .restart local v11    # "newCount":I
    .restart local v16    # "r":I
    :cond_12
    move v10, v11

    .end local v11    # "newCount":I
    .restart local v10    # "newCount":I
    goto :goto_5
.end method

.method public setCenterIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 243
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->access$200(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;)I

    move-result v2

    .line 244
    .local v2, "slotCount":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 248
    .local v1, "rect":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 249
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;

    .line 360
    return-void
.end method

.method public setOverscrollEffect(I)V
    .locals 2
    .param p1, "kind"    # I

    .prologue
    const/4 v0, 0x1

    .line 367
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mOverscrollEffect:I

    .line 368
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setOverfling(Z)V

    .line 369
    return-void

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 275
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->updateScrollPosition(IZ)V

    .line 276
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3
    .param p1, "slotCount"    # I

    .prologue
    const/4 v2, -0x1

    .line 1004
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->setSlotCount(I)Z

    move-result v0

    .line 1007
    .local v0, "changed":Z
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mStartIndex:I

    if-eq v1, v2, :cond_0

    .line 1008
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mStartIndex:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setCenterIndex(I)V

    .line 1009
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mStartIndex:I

    .line 1012
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollY:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setScrollPosition(I)V

    .line 1013
    return v0
.end method

.method public setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;)V
    .locals 3
    .param p1, "slotDrawer"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->onSlotSizeChanged(II)V

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getVisibleStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getVisibleEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->onVisibleRangeChanged(II)V

    .line 240
    :cond_0
    return-void
.end method

.method public setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;)V
    .locals 1
    .param p1, "spec"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;)V

    .line 280
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 999
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mStartIndex:I

    .line 1000
    return-void
.end method

.method public setUserInteractionListener(Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .line 364
    return-void
.end method

.method public showEmpty(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mShowEmpty:Z

    .line 389
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 390
    return-void
.end method

.method public startRisingAnimation()V
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$RisingAnimation;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$RisingAnimation;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;->start()V

    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->access$200(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 312
    :cond_0
    return-void
.end method

.method public startScatteringAnimation(Lcom/lenovo/scg/gallery3d/ui/RelativePosition;)V
    .locals 1
    .param p1, "position"    # Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    .prologue
    .line 303
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$ScatteringAnimation;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$ScatteringAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/RelativePosition;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;->start()V

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->access$200(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 306
    :cond_0
    return-void
.end method
