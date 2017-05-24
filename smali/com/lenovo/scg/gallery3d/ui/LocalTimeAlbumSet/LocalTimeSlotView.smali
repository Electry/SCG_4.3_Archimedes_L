.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "LocalTimeSlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$MyGestureListener;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$ScatteringAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$RisingAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SimpleListener;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Listener;
    }
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1

.field private static final MOVE_ANIMATION_DURATION:I = 0xfa0

.field private static final MOVE_ANIMATION_INTERVAL:I = 0x7d0

.field private static final MOVE_ANIMATION_TIMES:I = 0x5

.field public static final OVERSCROLL_3D:I = 0x0

.field public static final OVERSCROLL_NONE:I = 0x2

.field public static final OVERSCROLL_SYSTEM:I = 0x1

.field public static final RENDER_MORE_FRAME:I = 0x2

.field public static final RENDER_MORE_PASS:I = 0x1

.field private static final START_MOVE_ANIMATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SlotView"


# instance fields
.field private mAnimation:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimatoionNodeIndex:I

.field private mAnimatoionNodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatoionTimes:I

.field private mDownInScrolling:Z

.field private mGalleryActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mLabelRenderObject:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;

.field private final mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Listener;

.field private mMoreAnimation:Z

.field private mNeedRandom:Z

.field private mOverscrollEffect:I

.field private final mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

.field private mRandom:Ljava/util/Random;

.field private mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

.field private mRequestRenderSlots:[I

.field private mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

.field private final mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

.field private mStartIndex:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTimeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

.field private starttest:J

.field private test:J


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;)V
    .locals 6
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "spec"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 333
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 138
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/Paper;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    .line 144
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mMoreAnimation:Z

    .line 146
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;

    .line 148
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mStartIndex:I

    .line 155
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mOverscrollEffect:I

    .line 161
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRequestRenderSlots:[I

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mTempRect:Landroid/graphics/Rect;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    .line 183
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeIndex:I

    .line 185
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionTimes:I

    .line 187
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRandom:Ljava/util/Random;

    .line 189
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mNeedRandom:Z

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mTimeInfoList:Ljava/util/ArrayList;

    .line 525
    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->starttest:J

    .line 527
    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->test:J

    .line 334
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$MyGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$MyGestureListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 336
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    .line 337
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    .line 338
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mHandler:Landroid/os/Handler;

    .line 339
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$1;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimationHandler:Landroid/os/Handler;

    .line 355
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mGalleryActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 356
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;)V

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mGalleryActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getStartNodeIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getEndNodeIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->updateAnimatoionNodeList(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->startMoveAnimation()V

    return-void
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Listener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mOverscrollEffect:I

    return v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/Paper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mDownInScrolling:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionTimes:I

    return p1
.end method

.method static synthetic access$304(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionTimes:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static expandIntArray([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "capacity"    # I

    .prologue
    .line 517
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 518
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array p0, v0, [I

    goto :goto_0

    .line 520
    :cond_0
    return-object p0
.end method

.method private getEndNodeIndex(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getY()I

    move-result v3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    if-gt p1, v1, :cond_0

    .line 324
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 310
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    move v0, v2

    .line 319
    goto :goto_1

    .line 321
    :cond_2
    if-lez p1, :cond_3

    .line 322
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 324
    goto :goto_1
.end method

.method private getStartNodeIndex(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getY()I

    move-result v3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    if-gt p1, v1, :cond_0

    .line 304
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 290
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    move v0, v2

    .line 299
    goto :goto_1

    .line 301
    :cond_2
    if-lez p1, :cond_3

    .line 302
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 304
    goto :goto_1
.end method

.method private initAlbumSetList(Ljava/util/ArrayList;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 229
    .local v20, "starttest":J
    const/16 v24, 0x0

    .line 230
    .local v24, "x":I
    const/16 v26, 0x0

    .line 231
    .local v26, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mGalleryActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->get(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;

    move-result-object v6

    .line 232
    .local v6, "config":Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v7, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->slotGap:I

    .line 233
    .local v7, "gap":I
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->xOffset:I

    move/from16 v25, v0

    .line 235
    .local v25, "xOffset":I
    sget v27, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    add-int v28, v25, v7

    mul-int/lit8 v28, v28, 0x2

    sub-int v15, v27, v28

    .line 236
    .local v15, "labelWidth":I
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v14, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 238
    .local v14, "labelHeight":I
    sget v19, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    .line 239
    .local v19, "screenWidth":I
    const/16 v22, 0x4

    .line 240
    .local v22, "unitCount":I
    add-int v27, v19, v7

    div-int v27, v27, v22

    sub-int v23, v27, v7

    .line 241
    .local v23, "width":I
    move/from16 v9, v23

    .line 243
    .local v9, "height":I
    const/4 v11, 0x0

    .line 244
    .local v11, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mTimeInfoList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 246
    new-instance v16, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;

    invoke-direct/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;-><init>()V

    .line 247
    .local v16, "layoutMachine":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_1

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mTimeInfoList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;->totalCount:I

    move/from16 v27, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;Ljava/lang/String;II)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v13, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v13, v0, v1, v15, v14}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;-><init>(IIII)V

    .line 252
    .local v13, "label":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;
    const-string v27, "HWJ"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "initAlbumSetList() index = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;->createAlbumSetContent(I)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->setContent(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLabelRenderObject:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;->setRenderObject(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int v26, v26, v14

    .line 257
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;->count:I

    move/from16 v27, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v7, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->setGridInfo(III)V

    .line 258
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 261
    .local v17, "rect":Landroid/graphics/Rect;
    const-string v27, "HWJ"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "initAlbumSetList() list.get(i) = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;->count:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v12, v0, :cond_0

    .line 263
    const-string v27, "HWJ"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "initAlbumSetList() j = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v8, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;

    move/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-direct {v8, v0, v1, v2, v9}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;-><init>(IIII)V

    .line 268
    .local v8, "grid":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;
    const-string v27, "HWJ"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "grid.index = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;->createAlbumSetContent(I)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;->setContent(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;)V

    .line 271
    new-instance v18, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;

    invoke-direct/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;-><init>()V

    .line 272
    .local v18, "renderObject":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;->setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;)V

    .line 273
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;->setRenderObject(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/RenderObject;)V

    .line 275
    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/GridLayoutMachine;->getNextGridRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 276
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    iput v0, v8, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;->mX:I

    .line 277
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int v27, v27, v26

    move/from16 v0, v27

    iput v0, v8, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;->mY:I

    .line 278
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    iput v0, v8, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;->mWidth:I

    .line 279
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    iput v0, v8, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;->mHeight:I

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v11, v11, 0x1

    .line 262
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 283
    .end local v8    # "grid":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;
    .end local v18    # "renderObject":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    move/from16 v27, v0

    add-int v27, v27, v28

    add-int v26, v27, v7

    .line 247
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 285
    .end local v12    # "j":I
    .end local v13    # "label":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelNode;
    .end local v17    # "rect":Landroid/graphics/Rect;
    :cond_1
    const-string/jumbo v27, "wangwf"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mList.size = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string/jumbo v27, "wangwf"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "initAlbumSetList = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v20

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method private isActiveMoveAnimation()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 757
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;->isActiveTextureMoveAnimation()Z

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 762
    :goto_1
    return v1

    .line 757
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private randomList(Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 687
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRandom:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 688
    .local v1, "index":I
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 689
    .local v2, "tempObj":Ljava/lang/Object;
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 690
    add-int v3, v0, v1

    invoke-virtual {p1, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    .end local v1    # "index":I
    .end local v2    # "tempObj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "pass"    # I
    .param p4, "paperActive"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 632
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 634
    .local v0, "rect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    if-lt v2, v3, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v1

    .line 638
    :cond_1
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 639
    if-eqz p4, :cond_4

    .line 640
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getType()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;->ALBUM_SET_GRID_NODE:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    if-ne v2, v3, :cond_3

    .line 641
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Lcom/lenovo/scg/gallery3d/ui/Paper;->getTransform(Landroid/graphics/Rect;F)[F

    move-result-object v2

    invoke-interface {p1, v2, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 648
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;

    invoke-virtual {v2, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    .line 651
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->paint(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I

    move-result v1

    .line 652
    .local v1, "result":I
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto :goto_0

    .line 643
    .end local v1    # "result":I
    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-interface {p1, v2, v3, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    goto :goto_1

    .line 646
    :cond_4
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-interface {p1, v2, v3, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    goto :goto_1
.end method

.method private startMoveAnimation()V
    .locals 0

    .prologue
    .line 727
    return-void
.end method

.method private startMoveAnimation(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/16 v4, 0xfa0

    const/4 v3, 0x1

    .line 730
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mNeedRandom:Z

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->randomList(Ljava/util/ArrayList;)V

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 734
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 735
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;->StartTextureMoveAnimation(I)V

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_1
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mNeedRandom:Z

    .line 748
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 739
    :cond_3
    :goto_1
    if-lez p1, :cond_2

    .line 740
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;->StartTextureMoveAnimation(I)V

    .line 741
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeIndex:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 742
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeIndex:I

    .line 743
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mNeedRandom:Z

    .line 745
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1
.end method

.method private startMoveAnimationTimer()V
    .locals 0

    .prologue
    .line 772
    return-void
.end method

.method private stopMoveAnimation()V
    .locals 2

    .prologue
    .line 751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridNode;->StopTextureMoveAnimation()V

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 754
    :cond_0
    return-void
.end method

.method private stopMoveAnimationTimer()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 776
    return-void
.end method

.method private updateAnimatoionNodeList(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v2, 0x0

    .line 695
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 696
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeIndex:I

    .line 697
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mNeedRandom:Z

    .line 698
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 702
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getType()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;->ALBUM_SET_GRID_NODE:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    if-ne v1, v2, :cond_0

    .line 704
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimatoionNodeList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->randomList(Ljava/util/ArrayList;)V

    .line 708
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->startMoveAnimationTimer()V

    .line 709
    return-void
.end method

.method private updateScrollPosition(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "force"    # Z

    .prologue
    .line 470
    if-nez p2, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    if-ne p1, v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    .line 472
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->setScrollPosition(I)V

    .line 473
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->onScrollPositionChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 432
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDataIndex(I)I
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getContent()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;->getIndex()I

    move-result v0

    return v0
.end method

.method public getGridRect(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "gridIndex"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getGridRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 1273
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    return v0
.end method

.method public getTimeInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mTimeInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVisibleDataEnd()I
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getVisibleDataEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleDataStart()I
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getVisibleDataStart()I

    move-result v0

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 401
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getGridAbsRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 402
    .local v1, "rect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    .line 403
    .local v4, "visibleBegin":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getHeight()I

    move-result v6

    .line 404
    .local v6, "visibleLength":I
    add-int v5, v4, v6

    .line 405
    .local v5, "visibleEnd":I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 406
    .local v2, "slotBegin":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 408
    .local v3, "slotEnd":I
    move v0, v4

    .line 409
    .local v0, "position":I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_1

    .line 410
    move v0, v4

    .line 417
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setScrollPosition(I)V

    .line 418
    return-void

    .line 411
    :cond_1
    if-ge v2, v4, :cond_2

    .line 412
    move v0, v2

    goto :goto_0

    .line 413
    :cond_2
    if-le v3, v5, :cond_0

    .line 414
    sub-int v0, v3, v6

    goto :goto_0
.end method

.method public makeSlotVisible(II)V
    .locals 7
    .param p1, "nodeTop"    # I
    .param p2, "nodeBottom"    # I

    .prologue
    .line 382
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    .line 383
    .local v3, "visibleBegin":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getHeight()I

    move-result v5

    .line 384
    .local v5, "visibleLength":I
    add-int v4, v3, v5

    .line 385
    .local v4, "visibleEnd":I
    move v1, p1

    .line 386
    .local v1, "slotBegin":I
    move v2, p2

    .line 388
    .local v2, "slotEnd":I
    move v0, v3

    .line 389
    .local v0, "position":I
    sub-int v6, v2, v1

    if-ge v5, v6, :cond_1

    .line 390
    move v0, v3

    .line 397
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setScrollPosition(I)V

    .line 398
    return-void

    .line 391
    :cond_1
    if-ge v1, v3, :cond_2

    .line 392
    move v0, v1

    goto :goto_0

    .line 393
    :cond_2
    if-le v2, v4, :cond_0

    .line 394
    sub-int v0, v2, v5

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changeSize"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 437
    if-nez p1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getVisibleStart()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getVisibleEnd()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 443
    .local v2, "visibleIndex":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->setSize(II)V

    .line 445
    const/4 v1, 0x0

    .line 446
    .local v1, "top":I
    const/4 v0, 0x0

    .line 447
    .local v0, "bottom":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 448
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v1, v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    .line 449
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v4, v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    add-int v0, v4, v3

    .line 451
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->makeSlotVisible(II)V

    .line 452
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mOverscrollEffect:I

    if-nez v3, :cond_0

    .line 453
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/Paper;->setSize(II)V

    goto :goto_0
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .param p1, "newPosition"    # I

    .prologue
    .line 477
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 478
    .local v0, "limit":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Listener;->onScrollPositionChanged(II)V

    .line 479
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 487
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 489
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->onTouch(Landroid/view/MotionEvent;)Z

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 500
    :goto_0
    return v1

    .line 492
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mDownInScrolling:Z

    .line 493
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->forceFinished()V

    goto :goto_0

    .line 492
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 496
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/Paper;->onRelease()V

    .line 497
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->stopMoveAnimation()V

    .line 662
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->stopMoveAnimationTimer()V

    .line 663
    return-void
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 24
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 532
    invoke-super/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 535
    .local v6, "endtest":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->test:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->test:J

    .line 536
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->starttest:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-nez v19, :cond_0

    .line 537
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->starttest:J

    .line 539
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->starttest:J

    move-wide/from16 v20, v0

    sub-long v20, v6, v20

    const-wide/16 v22, 0x3e8

    cmp-long v19, v20, v22

    if-lez v19, :cond_1

    .line 541
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->starttest:J

    .line 542
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->test:J

    .line 545
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 629
    :goto_0
    return-void

    .line 546
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;->prepareDrawing()V

    .line 548
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    .line 549
    .local v4, "animTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v11

    .line 550
    .local v11, "more":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->advanceAnimation(J)Z

    move-result v19

    or-int v11, v11, v19

    .line 551
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollX:I

    .line 553
    .local v13, "oldX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v19

    if-gez v19, :cond_b

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->forceFinished()V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 561
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->updateScrollPosition(IZ)V

    .line 563
    const/4 v14, 0x0

    .line 564
    .local v14, "paperActive":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mOverscrollEffect:I

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 566
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollX:I

    .line 567
    .local v12, "newX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getScrollLimit()I

    move-result v9

    .line 568
    .local v9, "limit":I
    if-lez v13, :cond_4

    if-eqz v12, :cond_5

    :cond_4
    if-ge v13, v9, :cond_7

    if-ne v12, v9, :cond_7

    .line 569
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v18

    .line 570
    .local v18, "v":F
    if-ne v12, v9, :cond_6

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    .line 573
    :cond_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-nez v19, :cond_7

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/Paper;->edgeReached(F)V

    .line 577
    .end local v18    # "v":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/Paper;->advanceAnimation()Z

    move-result v14

    .line 580
    .end local v9    # "limit":I
    .end local v12    # "newX":I
    :cond_8
    or-int/2addr v11, v14

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;->calculate(J)Z

    move-result v19

    or-int v11, v11, v19

    .line 586
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 588
    const/16 v16, 0x0

    .line 589
    .local v16, "requestCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRequestRenderSlots:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    move-object/from16 v20, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleStart:I
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->access$900(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I

    move-result v21

    sub-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->expandIntArray([II)[I

    move-result-object v17

    .line 591
    .local v17, "requestedSlot":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    move-object/from16 v19, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    .local v8, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    move-object/from16 v19, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleStart:I
    invoke-static/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->access$900(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I

    move-result v19

    move/from16 v0, v19

    if-lt v8, v0, :cond_c

    .line 597
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v8, v2, v14}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I

    move-result v15

    .line 598
    .local v15, "r":I
    and-int/lit8 v19, v15, 0x2

    if-eqz v19, :cond_a

    const/4 v11, 0x1

    .line 591
    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 556
    .end local v8    # "i":I
    .end local v14    # "paperActive":Z
    .end local v15    # "r":I
    .end local v16    # "requestCount":I
    .end local v17    # "requestedSlot":[I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getScrollLimit()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->forceFinished()V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getScrollLimit()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    goto/16 :goto_1

    .line 612
    .restart local v8    # "i":I
    .restart local v14    # "paperActive":Z
    .restart local v16    # "requestCount":I
    .restart local v17    # "requestedSlot":[I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->paint(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 613
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 615
    if-eqz v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    .line 617
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .line 618
    .local v10, "listener":Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mMoreAnimation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    if-nez v11, :cond_e

    if-eqz v10, :cond_e

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    :cond_e
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mMoreAnimation:Z

    goto/16 :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->startMoveAnimationTimer()V

    .line 658
    return-void
.end method

.method public setCenterIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 372
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->access$700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I

    move-result v2

    .line 373
    .local v2, "slotCount":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getGridAbsRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 377
    .local v1, "rect":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 378
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Listener;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Listener;

    .line 505
    return-void
.end method

.method public setOverscrollEffect(I)V
    .locals 2
    .param p1, "kind"    # I

    .prologue
    const/4 v0, 0x1

    .line 512
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mOverscrollEffect:I

    .line 513
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setOverfling(Z)V

    .line 514
    return-void

    .line 513
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getScrollLimit()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 422
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 423
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->updateScrollPosition(IZ)V

    .line 424
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3
    .param p1, "slotCount"    # I

    .prologue
    const/4 v2, -0x1

    .line 1232
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->setSlotCount(I)Z

    move-result v0

    .line 1235
    .local v0, "changed":Z
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mStartIndex:I

    if-eq v1, v2, :cond_0

    .line 1236
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mStartIndex:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setCenterIndex(I)V

    .line 1237
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mStartIndex:I

    .line 1240
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setScrollPosition(I)V

    .line 1241
    return v0
.end method

.method public setSlotCount(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1245
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;>;"
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->initAlbumSetList(Ljava/util/ArrayList;)V

    .line 1246
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setSlotCount(I)Z

    .line 1249
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;)V
    .locals 3
    .param p1, "slotDrawer"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLabelRenderObject:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;

    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLabelRenderObject:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetLabelRenderObject;->setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;)V

    .line 366
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotWidth:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->access$500(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotHeight:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->access$600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 367
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getVisibleStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getVisibleEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    .line 369
    :cond_0
    return-void
.end method

.method public setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;)V
    .locals 1
    .param p1, "spec"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;)V

    .line 428
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1227
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mStartIndex:I

    .line 1228
    return-void
.end method

.method public setTimePosition(Ljava/lang/String;)V
    .locals 2
    .param p1, "timeName"    # Ljava/lang/String;

    .prologue
    .line 785
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mTimeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mTimeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mTimeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;->startY:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setScrollPosition(I)V

    .line 788
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    .line 785
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_1
    return-void
.end method

.method public setUserInteractionListener(Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .line 509
    return-void
.end method

.method public startRisingAnimation()V
    .locals 1

    .prologue
    .line 464
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$RisingAnimation;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$RisingAnimation;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;->start()V

    .line 466
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->access$700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    .line 467
    :cond_0
    return-void
.end method

.method public startScatteringAnimation(Lcom/lenovo/scg/gallery3d/ui/RelativePosition;)V
    .locals 1
    .param p1, "position"    # Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    .prologue
    .line 458
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$ScatteringAnimation;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$ScatteringAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/RelativePosition;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;

    .line 459
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotAnimation;->start()V

    .line 460
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->access$700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    .line 461
    :cond_0
    return-void
.end method
