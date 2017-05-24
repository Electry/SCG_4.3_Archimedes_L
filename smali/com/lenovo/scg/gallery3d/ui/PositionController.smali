.class Lcom/lenovo/scg/gallery3d/ui/PositionController;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/PositionController$1;,
        Lcom/lenovo/scg/gallery3d/ui/PositionController$FilmRatio;,
        Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;,
        Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;,
        Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;,
        Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;,
        Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_KIND_CAPTURE:I = 0x9

.field private static final ANIM_KIND_DELETE:I = 0x8

.field private static final ANIM_KIND_FLING:I = 0x6

.field private static final ANIM_KIND_FLING_X:I = 0x7

.field private static final ANIM_KIND_NONE:I = -0x1

.field private static final ANIM_KIND_OPENING:I = 0x5

.field private static final ANIM_KIND_SCALE:I = 0x1

.field private static final ANIM_KIND_SCROLL:I = 0x0

.field private static final ANIM_KIND_SLIDE:I = 0x3

.field private static final ANIM_KIND_SNAPBACK:I = 0x2

.field private static final ANIM_KIND_ZOOM:I = 0x4

.field private static final ANIM_TIME:[I

.field private static final BOX_MAX:I = 0x3

.field public static final CAPTURE_ANIMATION_TIME:I = 0x2bc

.field private static final CENTER_OUT_INDEX:[I

.field private static final DEFAULT_DELETE_ANIMATION_DURATION:I = 0xc8

.field private static final FILM_MODE_LANDSCAPE_HEIGHT:F = 0.7f

.field private static final FILM_MODE_LANDSCAPE_WIDTH:F = 0.7f

.field private static final FILM_MODE_PORTRAIT_HEIGHT:F = 0.48f

.field private static final FILM_MODE_PORTRAIT_WIDTH:F = 0.7f

.field private static final HORIZONTAL_SLACK:I

.field public static final IMAGE_AT_BOTTOM_EDGE:I = 0x8

.field public static final IMAGE_AT_LEFT_EDGE:I = 0x1

.field public static final IMAGE_AT_RIGHT_EDGE:I = 0x2

.field public static final IMAGE_AT_TOP_EDGE:I = 0x4

.field private static final IMAGE_GAP:I

.field private static final LAST_ANIMATION:J = -0x2L

.field private static final MAX_DELETE_ANIMATION_DURATION:I = 0x190

.field private static final NO_ANIMATION:J = -0x1L

.field private static final SCALE_LIMIT:F = 4.0f

.field private static final SCALE_MAX_EXTRA:F = 1.4f

.field private static final SCALE_MIN_EXTRA:F = 0.7f

.field public static final SNAPBACK_ANIMATION_TIME:I = 0x258

.field private static final TAG:Ljava/lang/String; = "PositionController"

.field private static mIsCanSnapback:Z


# instance fields
.field private mBoundBottom:I

.field private mBoundLeft:I

.field private mBoundRight:I

.field private mBoundTop:I

.field private mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/RangeArray",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mConstrained:Z

.field private mConstrainedFrame:Landroid/graphics/Rect;

.field private mExtraScalingRange:Z

.field private mFilmMode:Z

.field private mFilmRatio:Lcom/lenovo/scg/gallery3d/ui/PositionController$FilmRatio;

.field private mFilmScroller:Landroid/widget/Scroller;

.field private mFocusX:F

.field private mFocusY:F

.field private mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/RangeArray",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mHasNext:Z

.field private mHasPrev:Z

.field private mHaveCamera:Z

.field private mInScale:Z

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

.field private volatile mOpenAnimationRect:Landroid/graphics/Rect;

.field public mOriScaleMin:F

.field private mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

.field private mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

.field mPopFromTop:Z

.field private mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/RangeArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTempBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/RangeArray",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mTempGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/RangeArray",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mViewH:I

.field private mViewW:I

.field public mZoomInScaleMin:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/lenovo/scg/gallery3d/ui/PositionController;->ANIM_TIME:[I

    .line 121
    const/4 v2, 0x7

    new-array v2, v2, [I

    sput-object v2, Lcom/lenovo/scg/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    .line 123
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/lenovo/scg/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 125
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/lenovo/scg/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 244
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v1, v2, 0x2

    .line 245
    .local v1, "j":I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    neg-int v1, v1

    .line 246
    :cond_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aput v1, v2, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2032
    .end local v1    # "j":I
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mIsCanSnapback:Z

    return-void

    .line 79
    :array_0
    .array-data 4
        0x0
        0x0
        0x258
        0x190
        0x12c
        0x12c
        0x0
        0x0
        0x0
        0x2bc
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, -0x3

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 106
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 137
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    .line 139
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    .line 172
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrained:Z

    .line 194
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;-><init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;Lcom/lenovo/scg/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    .line 196
    new-instance v1, Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    .line 200
    new-instance v1, Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/lenovo/scg/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    .line 202
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$FilmRatio;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController$FilmRatio;-><init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;Lcom/lenovo/scg/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmRatio:Lcom/lenovo/scg/gallery3d/ui/PositionController$FilmRatio;

    .line 205
    new-instance v1, Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    .line 207
    new-instance v1, Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/lenovo/scg/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    .line 210
    new-instance v1, Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    .line 217
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z

    .line 251
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    .line 252
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    .line 253
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1, v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    .line 256
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->initPlatform()V

    .line 257
    const/4 v0, -0x3

    .local v0, "i":I
    :goto_0
    if-gt v0, v3, :cond_0

    .line 258
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    invoke-direct {v2, p0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;-><init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;Lcom/lenovo/scg/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 259
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->initBox(I)V

    .line 260
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v3, :cond_1

    .line 263
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    invoke-direct {v2, p0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;-><init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;Lcom/lenovo/scg/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 264
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->initGap(I)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/ui/PositionController;FI)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;
    .param p1, "x1"    # F
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/ui/PositionController;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/ui/PositionController;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusX:F

    return v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrained:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    return v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    return v0
.end method

.method static synthetic access$2200()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->ANIM_TIME:[I

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasPrev:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasNext:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/FlingScroller;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/gallery3d/ui/PositionController;F)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->calculateStableBound(F)V

    return-void
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/gallery3d/ui/PositionController;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/gallery3d/ui/PositionController;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusY:F

    return v0
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    return v0
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mInScale:Z

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/util/RangeArray;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    return-object v0
.end method

.method private calculateStableBound(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 1483
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    .line 1484
    return-void
.end method

.method private calculateStableBound(FI)V
    .locals 6
    .param p1, "scale"    # F
    .param p2, "horizontalSlack"    # I

    .prologue
    const/4 v5, 0x0

    .line 1458
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1461
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;F)I

    move-result v2

    .line 1462
    .local v2, "w":I
    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->heightOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;F)I

    move-result v1

    .line 1465
    .local v1, "h":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1466
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    .line 1467
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1468
    div-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    .line 1472
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1473
    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1477
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1478
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1480
    :cond_1
    return-void
.end method

.method private canScroll()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 603
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 604
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 611
    :goto_0
    :sswitch_0
    return v1

    .line 605
    :cond_0
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 611
    goto :goto_0

    .line 605
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private convertBoxToRect(I)V
    .locals 10
    .param p1, "i"    # I

    .prologue
    .line 961
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 964
    .local v1, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    if-nez v1, :cond_0

    .line 1005
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 969
    .local v4, "r":Landroid/graphics/Rect;
    iget v8, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v9, v9, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 970
    .local v7, "y":I
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v5

    .line 971
    .local v5, "w":I
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->heightOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 972
    .local v3, "h":I
    if-nez p1, :cond_2

    .line 973
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v8, v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 974
    .local v6, "x":I
    div-int/lit8 v8, v5, 0x2

    sub-int v8, v6, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 975
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 1003
    .end local v6    # "x":I
    :cond_1
    :goto_1
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v7, v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 1004
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 976
    :cond_2
    if-lez p1, :cond_4

    .line 977
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 978
    .local v0, "a":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    .line 980
    .local v2, "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z

    if-eqz v8, :cond_3

    .line 981
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 982
    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 984
    :cond_3
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 985
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 989
    .end local v0    # "a":Landroid/graphics/Rect;
    .end local v2    # "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    :cond_4
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 990
    .restart local v0    # "a":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    .line 992
    .restart local v2    # "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    if-eqz v2, :cond_1

    .line 993
    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z

    if-eqz v8, :cond_5

    .line 994
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 995
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 997
    :cond_5
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 998
    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method private debugMoveBox([I)V
    .locals 5
    .param p1, "fromIndex"    # [I

    .prologue
    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "moveBox:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v2, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1076
    aget v1, p1, v0

    .line 1077
    .local v1, "j":I
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    .line 1078
    const-string v3, " N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1080
    :cond_0
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1084
    .end local v1    # "j":I
    :cond_1
    const-string v3, "PositionController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    return-void
.end method

.method private dumpRect(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 946
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 947
    .local v0, "r":Landroid/graphics/Rect;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 950
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 952
    const-string v2, ") ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 954
    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 956
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    const-string v2, "PositionController"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void
.end method

.method private dumpState()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 927
    const/4 v0, -0x3

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 928
    const-string v3, "PositionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gap "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 931
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 932
    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->dumpRect(I)V

    .line 931
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 935
    :cond_1
    const/4 v0, -0x3

    :goto_2
    if-gt v0, v5, :cond_4

    .line 936
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_3
    if-gt v1, v5, :cond_3

    .line 937
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 938
    const-string v2, "PositionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "intersects!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 935
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 942
    .end local v1    # "j":I
    :cond_4
    return-void
.end method

.method private gapToSide(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I
    .locals 3
    .param p1, "b"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .prologue
    .line 460
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getMinimalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iget v2, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDefaultGapSize(I)I
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 441
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/lenovo/scg/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 444
    :goto_0
    return v2

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 443
    .local v0, "a":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 444
    .local v1, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    sget v2, Lcom/lenovo/scg/gallery3d/ui/PositionController;->IMAGE_GAP:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->gapToSide(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->gapToSide(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private getMaximalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F
    .locals 7
    .param p1, "b"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1407
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getMinimalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F

    move-result v1

    .line 1422
    :cond_0
    :goto_0
    return v1

    .line 1408
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getMinimalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F

    move-result v1

    goto :goto_0

    .line 1414
    :cond_2
    iget v2, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1415
    .local v0, "scale":F
    float-to-double v2, v0

    const-wide v4, 0x3ff6666666666666L    # 1.4

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 1417
    float-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 1418
    const v2, 0x3fb33333    # 1.4f

    sub-float/2addr v2, v0

    const v3, 0x3f199999    # 0.59999996f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_0

    .line 1419
    :cond_3
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4

    .line 1420
    const v1, 0x3f4ccccd    # 0.8f

    sub-float/2addr v1, v0

    const v2, 0x3f0ccccd    # 0.55f

    div-float/2addr v1, v2

    mul-float/2addr v1, v6

    add-float/2addr v1, v6

    goto :goto_0

    .line 1422
    :cond_4
    const/high16 v1, 0x40800000    # 4.0f

    goto :goto_0
.end method

.method private getMinimalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F
    .locals 8
    .param p1, "b"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .prologue
    .line 1380
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1381
    .local v4, "wFactor":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1384
    .local v0, "hFactor":F
    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 1385
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1386
    .local v3, "viewW":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1392
    .local v2, "viewH":I
    :goto_0
    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v5, :cond_0

    .line 1393
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    if-le v5, v6, :cond_2

    .line 1394
    const v4, 0x3f333333    # 0.7f

    .line 1395
    const v0, 0x3ef5c28f    # 0.48f

    .line 1402
    :cond_0
    :goto_1
    int-to-float v5, v3

    mul-float/2addr v5, v4

    iget v6, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v0

    iget v7, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1403
    .local v1, "s":F
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    return v5

    .line 1388
    .end local v1    # "s":F
    .end local v2    # "viewH":I
    .end local v3    # "viewW":I
    :cond_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    .line 1389
    .restart local v3    # "viewW":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    .restart local v2    # "viewH":I
    goto :goto_0

    .line 1397
    :cond_2
    const v4, 0x3f333333    # 0.7f

    .line 1398
    const v0, 0x3f333333    # 0.7f

    goto :goto_1
.end method

.method private getTargetScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F
    .locals 4
    .param p1, "b"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .prologue
    .line 1495
    iget-wide v0, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_0
.end method

.method private heightOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .param p1, "b"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .prologue
    .line 900
    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    iget v1, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private heightOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .param p1, "b"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .param p2, "scale"    # F

    .prologue
    .line 910
    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initBox(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1027
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 1028
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 1029
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 1030
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getMinimalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 1031
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getMaximalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 1032
    const/4 v1, 0x0

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1033
    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 1034
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    .line 1035
    const/4 v1, -0x1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    .line 1036
    return-void
.end method

.method private initBox(ILcom/lenovo/scg/gallery3d/ui/PhotoView$Size;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "size"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    .prologue
    const/4 v2, 0x0

    .line 1040
    iget v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 1041
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->initBox(I)V

    .line 1054
    :goto_0
    return-void

    .line 1044
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1045
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 1046
    iget v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 1047
    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 1048
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getMinimalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 1049
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getMaximalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 1050
    iput v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1051
    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 1052
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    .line 1053
    const/4 v1, -0x1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    goto :goto_0
.end method

.method private initGap(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    .line 1060
    .local v0, "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 1061
    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1062
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    .line 1063
    return-void
.end method

.method private initGap(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    .line 1067
    .local v0, "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 1068
    iput p2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1069
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    .line 1070
    return-void
.end method

.method private initPlatform()V
    .locals 4

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 1019
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1020
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 1021
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    .line 1022
    return-void
.end method

.method private static isAlmostEqual(FF)Z
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 1437
    sub-float v0, p0, p1

    .line 1438
    .local v0, "diff":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    .end local v0    # "diff":F
    :cond_0
    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutAndSetPosition()V
    .locals 2

    .prologue
    .line 919
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 920
    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->convertBoxToRect(I)V

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 923
    :cond_0
    return-void
.end method

.method private redraw()V
    .locals 1

    .prologue
    .line 843
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 844
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->invalidate()V

    .line 845
    return-void
.end method

.method private setBoxSize(IIIZ)Z
    .locals 6
    .param p1, "i"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "isViewSize"    # Z

    .prologue
    const/4 v3, 0x0

    .line 335
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v4, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 336
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 339
    .local v2, "wasViewSize":Z
    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v3

    .line 341
    :cond_1
    iput-boolean p4, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 343
    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    if-ne p2, v4, :cond_2

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    if-eq p3, v4, :cond_0

    .line 354
    :cond_2
    if-le p2, p3, :cond_6

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float v1, v3, v4

    .line 356
    .local v1, "ratio":F
    :goto_1
    iput p2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 357
    iput p3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 362
    if-eqz v2, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v3, :cond_7

    .line 363
    :cond_4
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getMinimalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 364
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    .line 371
    :goto_2
    if-nez p1, :cond_5

    .line 372
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusX:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusX:F

    .line 373
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusY:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusY:F

    .line 376
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "ratio":F
    :cond_6
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float v1, v3, v4

    goto :goto_1

    .line 366
    .restart local v1    # "ratio":F
    :cond_7
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 367
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mFromScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mFromScale:F

    .line 368
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_2
.end method

.method private snapAndRedraw()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 848
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->startSnapback()Z

    .line 849
    const/4 v0, -0x3

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 850
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->startSnapback()Z

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v2, :cond_1

    .line 853
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->startSnapback()Z

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 855
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmRatio:Lcom/lenovo/scg/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$FilmRatio;->startSnapback()Z

    .line 856
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->redraw()V

    .line 857
    return-void
.end method

.method private startAnimation(IIFI)Z
    .locals 3
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p3, "targetScale"    # F
    .param p4, "kind"    # I

    .prologue
    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v1, p1, v2, p4}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->access$400(Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;III)Z

    move-result v1

    or-int/2addr v0, v1

    .line 862
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->access$500(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v1

    or-int/2addr v0, v1

    .line 863
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->redraw()V

    .line 864
    :cond_0
    return v0
.end method

.method private startOpeningAnimationIfNeeded()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 380
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 401
    :cond_0
    :goto_0
    return v4

    .line 381
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v6, v4}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 382
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-boolean v6, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    if-nez v6, :cond_0

    .line 385
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 386
    .local v3, "r":Landroid/graphics/Rect;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 388
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 389
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 390
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 391
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v6, v6, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v7, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-direct {p0, v6, v4, v7, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 395
    const/4 v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 396
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    .line 397
    .local v1, "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    iput v4, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 398
    iget v4, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v4, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    :cond_2
    move v4, v5

    .line 401
    goto :goto_0
.end method

.method private updateScaleAndGapLimit()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 426
    const/4 v2, -0x3

    .local v2, "i":I
    :goto_0
    if-gt v2, v4, :cond_0

    .line 427
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 428
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getMinimalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 429
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getMaximalScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    .end local v0    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    :cond_0
    const/4 v2, -0x3

    :goto_1
    if-ge v2, v4, :cond_1

    .line 433
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    .line 434
    .local v1, "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v3

    iput v3, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 436
    .end local v1    # "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    :cond_1
    return-void
.end method

.method private viewTallerThanScaledImage(F)Z
    .locals 3
    .param p1, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 1487
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->heightOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private viewWiderThanScaledImage(F)Z
    .locals 3
    .param p1, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 1491
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .param p1, "b"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .prologue
    .line 895
    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    iget v1, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .param p1, "b"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .param p2, "scale"    # F

    .prologue
    .line 905
    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public advanceAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 868
    const/4 v0, 0x0

    .line 869
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 870
    const/4 v1, -0x3

    .local v1, "i":I
    :goto_0
    if-gt v1, v3, :cond_1

    .line 871
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 870
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    :cond_1
    const/4 v1, -0x3

    :goto_1
    if-ge v1, v3, :cond_3

    .line 876
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 877
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 875
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 880
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmRatio:Lcom/lenovo/scg/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController$FilmRatio;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 881
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->redraw()V

    .line 882
    :cond_4
    return-void
.end method

.method public beginScale(FF)V
    .locals 5
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 539
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 540
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 541
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 542
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    .line 543
    .local v1, "p":Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mInScale:Z

    .line 544
    iget v2, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusX:F

    .line 545
    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusY:F

    .line 546
    return-void
.end method

.method public endScale()V
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mInScale:Z

    .line 575
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 576
    return-void
.end method

.method public flingFilmX(I)Z
    .locals 13
    .param p1, "velocityX"    # I

    .prologue
    const/4 v2, 0x0

    .line 752
    if-nez p1, :cond_1

    .line 774
    :cond_0
    :goto_0
    return v2

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 755
    .local v9, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    .line 758
    .local v11, "p":Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;
    iget v10, v11, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 761
    .local v10, "defaultX":I
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z

    if-eqz v0, :cond_4

    .line 762
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v0, :cond_2

    iget v0, v11, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ge v0, v10, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v0, :cond_3

    iget v0, v11, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-le v0, v10, :cond_0

    .line 772
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    iget v1, v11, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 773
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v12

    .line 774
    .local v12, "targetX":I
    iget v0, v9, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v1, v9, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v2, 0x7

    invoke-direct {p0, v12, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v2

    goto :goto_0

    .line 766
    .end local v12    # "targetX":I
    :cond_4
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v0, :cond_5

    iget v0, v11, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ge v0, v10, :cond_0

    :cond_5
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v0, :cond_3

    iget v0, v11, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-gt v0, v10, :cond_3

    goto :goto_0
.end method

.method public flingFilmY(II)I
    .locals 8
    .param p1, "boxIndex"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/16 v7, 0x8

    .line 781
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 784
    .local v1, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->heightOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 786
    .local v3, "h":I
    const/4 v0, 0x3

    .line 787
    .local v0, "FUZZY":I
    if-ltz p2, :cond_0

    if-nez p2, :cond_1

    iget v5, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-gtz v5, :cond_1

    .line 788
    :cond_0
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v3, 0x1

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sub-int v4, v5, v0

    .line 795
    .local v4, "targetY":I
    :goto_0
    if-eqz p2, :cond_2

    .line 796
    iget v5, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 797
    .local v2, "duration":I
    const/16 v5, 0x190

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 803
    :goto_1
    sget-object v5, Lcom/lenovo/scg/gallery3d/ui/PositionController;->ANIM_TIME:[I

    aput v2, v5, v7

    .line 804
    iget v5, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, v4, v5, v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->access$500(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 805
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->redraw()V

    .line 808
    .end local v2    # "duration":I
    :goto_2
    return v2

    .line 790
    .end local v4    # "targetY":I
    :cond_1
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    add-int v4, v5, v0

    .restart local v4    # "targetY":I
    goto :goto_0

    .line 799
    :cond_2
    const/16 v2, 0xc8

    .restart local v2    # "duration":I
    goto :goto_1

    .line 808
    :cond_3
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public flingPage(II)Z
    .locals 14
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 724
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 725
    .local v9, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    .line 728
    .local v11, "p":Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;
    iget v0, v9, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const/4 v0, 0x0

    .line 748
    :goto_0
    return v0

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v10

    .line 735
    .local v10, "edges":I
    if-lez p1, :cond_1

    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_2

    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_3

    .line 736
    :cond_2
    const/4 p1, 0x0

    .line 738
    :cond_3
    if-lez p2, :cond_4

    and-int/lit8 v0, v10, 0x4

    if-nez v0, :cond_5

    :cond_4
    if-gez p2, :cond_6

    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_6

    .line 739
    :cond_5
    const/16 p2, 0x0

    .line 742
    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    .line 744
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    iget v1, v11, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, v9, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->fling(IIIIIIII)V

    .line 745
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getFinalX()I

    move-result v12

    .line 746
    .local v12, "targetX":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getFinalY()I

    move-result v13

    .line 747
    .local v13, "targetY":I
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->ANIM_TIME:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getDuration()I

    move-result v2

    aput v2, v0, v1

    .line 748
    iget v0, v9, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v1, 0x6

    invoke-direct {p0, v12, v13, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v0

    goto :goto_0
.end method

.method public forceImageSize(ILcom/lenovo/scg/gallery3d/ui/PhotoView$Size;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    .prologue
    .line 310
    iget v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 312
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 313
    iget v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    goto :goto_0
.end method

.method public getFilmRatio()F
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmRatio:Lcom/lenovo/scg/gallery3d/ui/PositionController$FilmRatio;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    return v0
.end method

.method public getImageAtEdges()I
    .locals 5

    .prologue
    .line 1329
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1330
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    .line 1331
    .local v2, "p":Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 1332
    const/4 v1, 0x0

    .line 1333
    .local v1, "edges":I
    iget v3, v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    if-gt v3, v4, :cond_0

    .line 1334
    or-int/lit8 v1, v1, 0x2

    .line 1336
    :cond_0
    iget v3, v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    if-lt v3, v4, :cond_1

    .line 1337
    or-int/lit8 v1, v1, 0x1

    .line 1339
    :cond_1
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    if-gt v3, v4, :cond_2

    .line 1340
    or-int/lit8 v1, v1, 0x8

    .line 1342
    :cond_2
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    if-lt v3, v4, :cond_3

    .line 1343
    or-int/lit8 v1, v1, 0x4

    .line 1345
    :cond_3
    return v1
.end method

.method public getImageHeight()I
    .locals 3

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1315
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageH:I

    return v1
.end method

.method public getImageScale()F
    .locals 3

    .prologue
    .line 1319
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1321
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    if-nez v0, :cond_0

    .line 1322
    const/4 v1, 0x0

    .line 1325
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 3

    .prologue
    .line 1309
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1310
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mImageW:I

    return v1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasDeletingBox()Z
    .locals 3

    .prologue
    .line 1367
    const/4 v0, -0x3

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 1368
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1369
    const/4 v1, 0x1

    .line 1372
    :goto_1
    return v1

    .line 1367
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1372
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hitTest(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 816
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    .line 817
    sget-object v3, Lcom/lenovo/scg/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v3, v0

    .line 818
    .local v1, "j":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 819
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 824
    .end local v1    # "j":I
    .end local v2    # "r":Landroid/graphics/Rect;
    :goto_1
    return v1

    .line 816
    .restart local v1    # "j":I
    .restart local v2    # "r":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 824
    .end local v1    # "j":I
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public inOpeningAnimation()Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 885
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-wide v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    iget-wide v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isAtMinimalScale()Z
    .locals 3

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1296
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v1

    return v1
.end method

.method public isCenter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1300
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    if-nez v2, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return v1

    .line 1303
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1304
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    if-eqz v2, :cond_0

    .line 1305
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 4

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToX:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public move(II)V
    .locals 8
    .param p1, "kind"    # I
    .param p2, "step"    # I

    .prologue
    const/4 v7, 0x0

    .line 1995
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->canScroll()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2014
    :cond_0
    :goto_0
    return-void

    .line 1996
    :cond_1
    const/4 v5, 0x4

    if-ne p1, v5, :cond_3

    .line 1997
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1998
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v5, v5, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    sub-int v3, v5, p2

    .line 1999
    .local v3, "x":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    invoke-static {v3, v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 2000
    .local v1, "targetX":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    if-gt v1, v5, :cond_2

    .line 2001
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onStopPanorama()V

    .line 2003
    :cond_2
    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 2004
    .end local v0    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v1    # "targetX":I
    .end local v3    # "x":I
    :cond_3
    const/4 v5, 0x5

    if-ne p1, v5, :cond_0

    .line 2005
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 2006
    .restart local v0    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    sub-int v4, v5, p2

    .line 2007
    .local v4, "y":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 2008
    .local v2, "targetY":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    if-gt v2, v5, :cond_4

    .line 2009
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onStopPanorama()V

    .line 2011
    :cond_4
    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v2, v5, v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->access$500(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;IFI)Z

    .line 2012
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->redraw()V

    goto :goto_0
.end method

.method public moveBox([IZZZ[Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;Z)V
    .locals 21
    .param p1, "fromIndex"    # [I
    .param p2, "hasPrev"    # Z
    .param p3, "hasNext"    # Z
    .param p4, "constrained"    # Z
    .param p5, "sizes"    # [Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;
    .param p6, "isHaveCamera"    # Z

    .prologue
    .line 1106
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasPrev:Z

    .line 1107
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasNext:Z

    .line 1109
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z

    .line 1112
    new-instance v7, Lcom/lenovo/scg/gallery3d/util/RangeIntArray;

    const/16 v19, -0x3

    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v7, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/RangeIntArray;-><init>([III)V

    .line 1115
    .local v7, "from":Lcom/lenovo/scg/gallery3d/util/RangeIntArray;
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 1116
    const/4 v9, -0x3

    .local v9, "i":I
    :goto_0
    const/16 v19, 0x3

    move/from16 v0, v19

    if-gt v9, v0, :cond_0

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1118
    .local v4, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mRects:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 1119
    .local v14, "r":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1116
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1123
    .end local v4    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v14    # "r":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1124
    const/4 v9, -0x3

    :goto_1
    if-gez v9, :cond_1

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, v19

    iget v15, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1126
    .local v15, "tmp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    neg-int v0, v9

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v16, v0

    .line 1127
    .local v16, "tmp1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    move/from16 v0, v16

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    neg-int v0, v9

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, v19

    iput v15, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1124
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1134
    .end local v15    # "tmp":I
    .end local v16    # "tmp1":I
    :cond_1
    const/4 v9, -0x3

    :goto_2
    const/16 v19, 0x3

    move/from16 v0, v19

    if-gt v9, v0, :cond_2

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1134
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1138
    :cond_2
    const/4 v9, -0x3

    :goto_3
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1138
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1144
    :cond_3
    const/4 v9, -0x3

    :goto_4
    const/16 v19, 0x3

    move/from16 v0, v19

    if-gt v9, v0, :cond_5

    .line 1145
    invoke-virtual {v7, v9}, Lcom/lenovo/scg/gallery3d/util/RangeIntArray;->get(I)I

    move-result v10

    .line 1146
    .local v10, "j":I
    const v19, 0x7fffffff

    move/from16 v0, v19

    if-ne v10, v0, :cond_4

    .line 1144
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1147
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 1152
    .end local v10    # "j":I
    :cond_5
    const/4 v9, -0x3

    :goto_6
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v9, v0, :cond_8

    .line 1153
    invoke-virtual {v7, v9}, Lcom/lenovo/scg/gallery3d/util/RangeIntArray;->get(I)I

    move-result v10

    .line 1154
    .restart local v10    # "j":I
    const v19, 0x7fffffff

    move/from16 v0, v19

    if-ne v10, v0, :cond_7

    .line 1152
    :cond_6
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1155
    :cond_7
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/util/RangeIntArray;->get(I)I

    move-result v11

    .line 1156
    .local v11, "k":I
    const v19, 0x7fffffff

    move/from16 v0, v19

    if-eq v11, v0, :cond_6

    .line 1157
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    if-ne v0, v11, :cond_6

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 1164
    .end local v10    # "j":I
    .end local v11    # "k":I
    :cond_8
    const/4 v11, -0x3

    .line 1165
    .restart local v11    # "k":I
    const/4 v9, -0x3

    :goto_8
    const/16 v19, 0x3

    move/from16 v0, v19

    if-gt v9, v0, :cond_c

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    add-int/lit8 v19, v9, 0x3

    aget-object v19, p5, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->initBox(ILcom/lenovo/scg/gallery3d/ui/PhotoView$Size;)V

    .line 1170
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_a

    .line 1165
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1171
    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_b

    .line 1172
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 1174
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v20, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "k":I
    .local v12, "k":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1175
    add-int/lit8 v19, v9, 0x3

    aget-object v19, p5, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->initBox(ILcom/lenovo/scg/gallery3d/ui/PhotoView$Size;)V

    move v11, v12

    .end local v12    # "k":I
    .restart local v11    # "k":I
    goto :goto_9

    .line 1183
    :cond_c
    const/4 v6, -0x3

    .local v6, "first":I
    :goto_b
    const/16 v19, 0x3

    move/from16 v0, v19

    if-gt v6, v0, :cond_d

    .line 1184
    invoke-virtual {v7, v6}, Lcom/lenovo/scg/gallery3d/util/RangeIntArray;->get(I)I

    move-result v19

    const v20, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    .line 1186
    :cond_d
    const/4 v13, 0x3

    .local v13, "last":I
    :goto_c
    const/16 v19, -0x3

    move/from16 v0, v19

    if-lt v13, v0, :cond_e

    .line 1187
    invoke-virtual {v7, v13}, Lcom/lenovo/scg/gallery3d/util/RangeIntArray;->get(I)I

    move-result v19

    const v20, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    .line 1191
    :cond_e
    const/16 v19, 0x3

    move/from16 v0, v19

    if-le v6, v0, :cond_f

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1193
    const/4 v13, 0x0

    move v6, v13

    .line 1201
    :cond_f
    const/16 v19, 0x0

    add-int/lit8 v20, v6, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_d
    if-ge v9, v13, :cond_14

    .line 1202
    invoke-virtual {v7, v9}, Lcom/lenovo/scg/gallery3d/util/RangeIntArray;->get(I)I

    move-result v19

    const v20, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    .line 1201
    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 1183
    .end local v13    # "last":I
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 1186
    .restart local v13    # "last":I
    :cond_11
    add-int/lit8 v13, v13, -0x1

    goto :goto_c

    .line 1203
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1204
    .local v3, "a":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1205
    .restart local v4    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1206
    .local v17, "wa":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v18

    .line 1207
    .local v18, "wb":I
    iget v0, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v19, v0

    div-int/lit8 v20, v17, 0x2

    sub-int v20, v17, v20

    add-int v19, v19, v20

    div-int/lit8 v20, v18, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1208
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 1209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->heightOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_e

    .line 1211
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->heightOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto/16 :goto_e

    .line 1216
    .end local v3    # "a":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v4    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v17    # "wa":I
    .end local v18    # "wb":I
    :cond_14
    const/16 v19, -0x1

    add-int/lit8 v20, v13, -0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_f
    if-le v9, v6, :cond_17

    .line 1217
    invoke-virtual {v7, v9}, Lcom/lenovo/scg/gallery3d/util/RangeIntArray;->get(I)I

    move-result v19

    const v20, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    .line 1216
    :goto_10
    add-int/lit8 v9, v9, -0x1

    goto :goto_f

    .line 1218
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1219
    .restart local v3    # "a":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1220
    .restart local v4    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1221
    .restart local v17    # "wa":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v18

    .line 1222
    .restart local v18    # "wb":I
    iget v0, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v19, v0

    div-int/lit8 v20, v17, 0x2

    sub-int v19, v19, v20

    div-int/lit8 v20, v18, 0x2

    sub-int v20, v18, v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    .line 1224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->heightOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_10

    .line 1226
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->heightOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_10

    .line 1231
    .end local v3    # "a":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v4    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v17    # "wa":I
    .end local v18    # "wb":I
    :cond_17
    const/4 v11, -0x3

    .line 1232
    const/4 v9, -0x3

    :goto_11
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v9, v0, :cond_1c

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->initGap(I)V

    .line 1237
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_19

    .line 1232
    :goto_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 1238
    :cond_19
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_1a

    .line 1239
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 1241
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mTempGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v20, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "k":I
    .restart local v12    # "k":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1243
    .restart local v3    # "a":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1244
    .restart local v4    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1245
    .restart local v17    # "wa":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v18

    .line 1246
    .restart local v18    # "wb":I
    if-lt v9, v6, :cond_1b

    if-ge v9, v13, :cond_1b

    .line 1247
    iget v0, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v19, v0

    iget v0, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v20, v18, 0x2

    sub-int v19, v19, v20

    div-int/lit8 v20, v17, 0x2

    sub-int v20, v17, v20

    sub-int v8, v19, v20

    .line 1248
    .local v8, "g":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->initGap(II)V

    move v11, v12

    .line 1249
    .end local v12    # "k":I
    .restart local v11    # "k":I
    goto :goto_12

    .line 1250
    .end local v8    # "g":I
    .end local v11    # "k":I
    .restart local v12    # "k":I
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->initGap(I)V

    move v11, v12

    .end local v12    # "k":I
    .restart local v11    # "k":I
    goto :goto_12

    .line 1256
    .end local v3    # "a":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v4    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v17    # "wa":I
    .end local v18    # "wb":I
    :cond_1c
    add-int/lit8 v9, v6, -0x1

    :goto_14
    const/16 v19, -0x3

    move/from16 v0, v19

    if-lt v9, v0, :cond_1d

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1258
    .restart local v3    # "a":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1259
    .restart local v4    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1260
    .restart local v17    # "wa":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v18

    .line 1261
    .restart local v18    # "wb":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    .line 1262
    .local v8, "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v19, v0

    div-int/lit8 v20, v17, 0x2

    sub-int v19, v19, v20

    div-int/lit8 v20, v18, 0x2

    sub-int v20, v18, v20

    sub-int v19, v19, v20

    iget v0, v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1256
    add-int/lit8 v9, v9, -0x1

    goto :goto_14

    .line 1265
    .end local v3    # "a":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v4    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v8    # "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    .end local v17    # "wa":I
    .end local v18    # "wb":I
    :cond_1d
    add-int/lit8 v9, v13, 0x1

    :goto_15
    const/16 v19, 0x3

    move/from16 v0, v19

    if-gt v9, v0, :cond_1e

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1267
    .restart local v3    # "a":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1268
    .restart local v4    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1269
    .restart local v17    # "wa":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->widthOf(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)I

    move-result v18

    .line 1270
    .restart local v18    # "wb":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    .line 1271
    .restart local v8    # "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v19, v0

    div-int/lit8 v20, v17, 0x2

    sub-int v20, v17, v20

    add-int v19, v19, v20

    div-int/lit8 v20, v18, 0x2

    add-int v19, v19, v20

    iget v0, v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1265
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 1275
    .end local v3    # "a":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v4    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .end local v8    # "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    .end local v17    # "wa":I
    .end local v18    # "wb":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 1276
    .local v5, "dx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v20, v0

    add-int v20, v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFromX:I

    move/from16 v20, v0

    add-int v20, v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFromX:I

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToX:I

    move/from16 v20, v0

    add-int v20, v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToX:I

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    move/from16 v20, v0

    add-int v20, v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    .line 1281
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrained:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p4

    if-eq v0, v1, :cond_1f

    .line 1282
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrained:Z

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 1284
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 1287
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 1288
    return-void
.end method

.method public resetBound(ZZ)V
    .locals 0
    .param p1, "hasPrev"    # Z
    .param p2, "hasNext"    # Z

    .prologue
    .line 2018
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasPrev:Z

    .line 2019
    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasNext:Z

    .line 2020
    return-void
.end method

.method public resetMinScale()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2060
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 2061
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mZoomInScaleMin:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mOriScaleMin:F

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 2062
    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mOriScaleMin:F

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 2064
    :cond_0
    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mZoomInScaleMin:F

    .line 2065
    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mOriScaleMin:F

    .line 2066
    return-void
.end method

.method public resetPoint(F)V
    .locals 3
    .param p1, "targetScale"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1989
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1990
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1991
    invoke-virtual {p0, v2, v2, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->zoomIn(FFF)V

    .line 1992
    return-void
.end method

.method public resetToFullView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 531
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 533
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->resetMinScale()V

    .line 535
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 536
    return-void
.end method

.method public scaleBy(FFF)I
    .locals 8
    .param p1, "s"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 554
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p2, v6

    .line 555
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p3, v6

    .line 556
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v6, v5}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 557
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    .line 564
    .local v1, "p":Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getTargetScale(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;)F

    move-result v6

    mul-float/2addr v6, p1

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->clampScale(F)F

    move-result p1

    .line 565
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_1

    iget v2, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 566
    .local v2, "x":I
    :goto_0
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_2

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 567
    .local v3, "y":I
    :goto_1
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 568
    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpg-float v6, p1, v6

    if-gez v6, :cond_3

    const/4 v4, -0x1

    .line 570
    :cond_0
    :goto_2
    return v4

    .line 565
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_1
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusX:F

    mul-float/2addr v6, p1

    sub-float v6, p2, v6

    add-float/2addr v6, v7

    float-to-int v2, v6

    goto :goto_0

    .line 566
    .restart local v2    # "x":I
    :cond_2
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusY:F

    mul-float/2addr v6, p1

    sub-float v6, p3, v6

    add-float/2addr v6, v7

    float-to-int v3, v6

    goto :goto_1

    .line 569
    .restart local v3    # "y":I
    :cond_3
    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMax:F

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_0

    move v4, v5

    .line 570
    goto :goto_2
.end method

.method public scrollFilmX(I)V
    .locals 11
    .param p1, "dx"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 667
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->canScroll()Z

    move-result v3

    if-nez v3, :cond_0

    .line 712
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 670
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    .line 674
    .local v1, "p":Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;
    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 675
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 685
    :cond_1
    :sswitch_0
    iget v3, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v2, v3, p1

    .line 689
    .local v2, "x":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    sub-int/2addr v2, v3

    .line 691
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z

    if-eqz v3, :cond_4

    .line 692
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v3, :cond_3

    if-lez v2, :cond_3

    .line 693
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    invoke-interface {v3, v2, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 694
    const/4 v2, 0x0

    .line 710
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    add-int/2addr v2, v3

    .line 711
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, v3, v4, v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 695
    :cond_3
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v3, :cond_2

    if-gez v2, :cond_2

    .line 696
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    neg-int v4, v2

    invoke-interface {v3, v4, v10}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 697
    const/4 v2, 0x0

    goto :goto_1

    .line 700
    :cond_4
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v3, :cond_5

    if-lez v2, :cond_5

    .line 701
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    invoke-interface {v3, v2, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 702
    const/4 v2, 0x0

    goto :goto_1

    .line 703
    :cond_5
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v3, :cond_2

    if-gez v2, :cond_2

    .line 704
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    neg-int v4, v2

    invoke-interface {v3, v4, v10}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 705
    const/4 v2, 0x0

    goto :goto_1

    .line 675
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public scrollFilmY(II)V
    .locals 4
    .param p1, "boxIndex"    # I
    .param p2, "dy"    # I

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->canScroll()Z

    move-result v2

    if-nez v2, :cond_0

    .line 721
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 718
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v1, v2, p2

    .line 719
    .local v1, "y":I
    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v3, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->access$500(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;IFI)Z

    .line 720
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->redraw()V

    goto :goto_0
.end method

.method public scrollPage(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 615
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->canScroll()Z

    move-result v5

    if-nez v5, :cond_0

    .line 664
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 618
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    .line 620
    .local v1, "p":Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;
    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 622
    iget v5, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v3, v5, p1

    .line 623
    .local v3, "x":I
    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v4, v5, p2

    .line 627
    .local v4, "y":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    if-eq v5, v6, :cond_1

    .line 628
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    if-ge v4, v5, :cond_3

    .line 629
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    sub-int/2addr v6, v4

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 635
    :cond_1
    :goto_1
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    .line 640
    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z

    if-eqz v5, :cond_5

    .line 641
    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    if-ge v3, v5, :cond_4

    .line 642
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    sub-int v2, v3, v5

    .line 643
    .local v2, "pixels":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    invoke-interface {v5, v2, v10}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 644
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    .line 663
    .end local v2    # "pixels":I
    :cond_2
    :goto_2
    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 630
    :cond_3
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    if-le v4, v5, :cond_1

    .line 631
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    sub-int v6, v4, v6

    invoke-interface {v5, v6, v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onPull(II)V

    goto :goto_1

    .line 645
    :cond_4
    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    if-le v3, v5, :cond_2

    .line 646
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    sub-int v2, v5, v3

    .line 647
    .restart local v2    # "pixels":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    invoke-interface {v5, v2, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 648
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 649
    goto :goto_2

    .line 651
    .end local v2    # "pixels":I
    :cond_5
    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v5, :cond_6

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    if-le v3, v5, :cond_6

    .line 652
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    sub-int v2, v3, v5

    .line 653
    .restart local v2    # "pixels":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    invoke-interface {v5, v2, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 654
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    .line 655
    goto :goto_2

    .end local v2    # "pixels":I
    :cond_6
    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    if-ge v3, v5, :cond_2

    .line 656
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    sub-int v2, v5, v3

    .line 657
    .restart local v2    # "pixels":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    invoke-interface {v5, v2, v10}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 658
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    goto :goto_2
.end method

.method public setConstrainedFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "cFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 305
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 306
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setExtraScalingRange(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    if-ne v0, p1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 417
    if-nez p1, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setFilmMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    if-ne p1, v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 406
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 409
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 410
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->stopAnimation()V

    .line 411
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setImageSize(ILcom/lenovo/scg/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;
    .param p3, "cFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 318
    iget v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x0

    .line 321
    .local v0, "needUpdate":Z
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 323
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 324
    const/4 v0, 0x1

    .line 326
    :cond_2
    iget v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    iget v2, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 328
    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 330
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 270
    return-void
.end method

.method public setPopFromTop(Z)V
    .locals 0
    .param p1, "top"    # Z

    .prologue
    .line 1363
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPopFromTop:Z

    .line 1364
    return-void
.end method

.method public setViewSize(II)V
    .locals 5
    .param p1, "viewW"    # I
    .param p2, "viewH"    # I

    .prologue
    .line 273
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    if-ne p2, v3, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 277
    .local v2, "wasMinimal":Z
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    .line 278
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    .line 279
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->initPlatform()V

    .line 281
    const/4 v1, -0x3

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x3

    if-gt v1, v3, :cond_2

    .line 282
    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 285
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 289
    if-eqz v2, :cond_3

    .line 290
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 291
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 296
    .end local v0    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startOpeningAnimationIfNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0
.end method

.method public skipAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const-wide/16 v6, -0x1

    .line 475
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-wide v4, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 476
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v4, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 477
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v4, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 478
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iput-wide v6, v3, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    .line 480
    :cond_0
    const/4 v2, -0x3

    .local v2, "i":I
    :goto_0
    if-gt v2, v8, :cond_2

    .line 481
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 482
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 480
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    :cond_1
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToY:I

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 484
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToScale:F

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 485
    iput-wide v6, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    goto :goto_1

    .line 487
    .end local v0    # "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    :cond_2
    const/4 v2, -0x3

    :goto_2
    if-ge v2, v8, :cond_4

    .line 488
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    .line 489
    .local v1, "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    iget-wide v4, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 487
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 490
    :cond_3
    iget v3, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mToGap:I

    iput v3, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 491
    iput-wide v6, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    goto :goto_3

    .line 493
    .end local v1    # "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->redraw()V

    .line 494
    return-void
.end method

.method public skipToFinalPosition()V
    .locals 0

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->stopAnimation()V

    .line 502
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 503
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->skipAnimation()V

    .line 504
    return-void
.end method

.method public snapback()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 498
    return-void
.end method

.method public startCaptureAnimationSlide(I)V
    .locals 8
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x9

    .line 589
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 590
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 591
    .local v2, "n":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    .line 593
    .local v1, "g":Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v5, v5, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->access$400(Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;III)Z

    .line 594
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v7, v3, v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->access$500(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;IFI)Z

    .line 595
    iget v3, v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v2, v7, v3, v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->access$500(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;IFI)Z

    .line 596
    iget v3, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v3, v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 597
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->redraw()V

    .line 598
    return-void
.end method

.method public startHorizontalSlide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 580
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 581
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x3

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 582
    return-void
.end method

.method public stopAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-wide/16 v2, -0x1

    .line 465
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iput-wide v2, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    .line 466
    const/4 v0, -0x3

    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 467
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    iput-wide v2, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v4, :cond_1

    .line 470
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mGaps:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;

    iput-wide v2, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 472
    :cond_1
    return-void
.end method

.method public stopScrolling()V
    .locals 4

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1356
    :goto_0
    return-void

    .line 1354
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v2, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFromX:I

    goto :goto_0
.end method

.method public zoomIn(FFF)V
    .locals 10
    .param p1, "tapX"    # F
    .param p2, "tapY"    # F
    .param p3, "targetScale"    # F

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 511
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p1, v7

    .line 512
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p2, v7

    .line 513
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 516
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v7, v7, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    iget v8, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v3, v7, v8

    .line 517
    .local v3, "tempX":F
    iget v7, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    iget v8, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v4, v7, v8

    .line 519
    .local v4, "tempY":F
    neg-float v7, v3

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v5, v7

    .line 520
    .local v5, "x":I
    neg-float v7, v4

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v6, v7

    .line 522
    .local v6, "y":I
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 523
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    invoke-static {v5, v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 524
    .local v1, "targetX":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v6, v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 525
    .local v2, "targetY":I
    iget v7, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v8, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-static {p3, v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result p3

    .line 527
    const/4 v7, 0x4

    invoke-direct {p0, v1, v2, p3, v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 528
    return-void
.end method

.method public zoomInAnimation(FFF)V
    .locals 12
    .param p1, "tapX"    # F
    .param p2, "tapY"    # F
    .param p3, "targetScale"    # F

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    .line 2035
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr p1, v8

    .line 2036
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr p2, v8

    .line 2037
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 2038
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    iget v1, v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 2039
    .local v1, "mMinScale":F
    cmpg-float v8, p3, v1

    if-gez v8, :cond_0

    .line 2040
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    iput p3, v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 2041
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    iput p3, v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mZoomInScaleMin:F

    .line 2042
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    iput v1, v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mOriScaleMin:F

    .line 2045
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPlatform:Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;

    iget v8, v8, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v8, v8

    sub-float v8, p1, v8

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v4, v8, v9

    .line 2046
    .local v4, "tempX":F
    iget v8, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v8, v8

    sub-float v8, p2, v8

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v5, v8, v9

    .line 2048
    .local v5, "tempY":F
    neg-float v8, v4

    mul-float/2addr v8, p3

    add-float/2addr v8, v11

    float-to-int v6, v8

    .line 2049
    .local v6, "x":I
    neg-float v8, v5

    mul-float/2addr v8, p3

    add-float/2addr v8, v11

    float-to-int v7, v8

    .line 2051
    .local v7, "y":I
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 2052
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I

    invoke-static {v6, v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 2053
    .local v2, "targetX":I
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v7, v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    .line 2054
    .local v3, "targetY":I
    iget v8, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-static {p3, v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result p3

    .line 2055
    sput-boolean v10, Lcom/lenovo/scg/gallery3d/ui/PositionController;->mIsCanSnapback:Z

    .line 2056
    const/4 v8, 0x4

    invoke-direct {p0, v6, v7, p3, v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 2057
    return-void
.end method
