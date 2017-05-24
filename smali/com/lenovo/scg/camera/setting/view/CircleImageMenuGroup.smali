.class public Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;
.super Landroid/view/ViewGroup;
.source "CircleImageMenuGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$1;,
        Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;,
        Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;,
        Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;,
        Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;,
        Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;,
        Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;
    }
.end annotation


# instance fields
.field private actRunnable:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;

.field private allowRotating:Z

.field private angle:F

.field private childHeight:I

.field private childWidth:I

.field private circleHeight:I

.field private circleWidth:I

.field private deceleration:F

.field private firstChildPos:F

.field private imageOriginal:Landroid/graphics/Bitmap;

.field private imageScaled:Landroid/graphics/Bitmap;

.field private isRotating:Z

.field private mCatchCircleImageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/camera/setting/view/CircleImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMaxChildHeight:I

.field private mMaxChildWidth:I

.field private mOnCenterClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;

.field private mOnItemClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;

.field private mOnItemSelectedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;

.field private mOnRotationFinishedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;

.field private mTappedView:Landroid/view/View;

.field private mTappedViewsPostition:I

.field private matrix:Landroid/graphics/Matrix;

.field private quadrantTouched:[Z

.field private radius:I

.field private rotateToCenter:Z

.field private selected:I

.field private speed:I

.field private startAngle:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;

    .line 32
    iput-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemSelectedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;

    .line 33
    iput-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnCenterClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;

    .line 34
    iput-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnRotationFinishedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedViewsPostition:I

    .line 41
    iput-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedView:Landroid/view/View;

    .line 42
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->selected:I

    .line 45
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildWidth:I

    .line 46
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildHeight:I

    .line 47
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childWidth:I

    .line 48
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childHeight:I

    .line 52
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->radius:I

    .line 60
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->allowRotating:Z

    .line 61
    iput v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    .line 62
    iput v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->firstChildPos:F

    .line 63
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateToCenter:Z

    .line 64
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->isRotating:Z

    .line 65
    const/16 v1, 0x4b

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->speed:I

    .line 66
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->speed:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->deceleration:F

    .line 69
    iput-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->actRunnable:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mCatchCircleImageViews:Ljava/util/List;

    .line 96
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/CircleImageView;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "mCircleImageView4":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->setId(I)V

    .line 98
    const v1, 0x7f02066c

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->setImageResource(I)V

    .line 99
    const-string v1, "444"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->setName(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->init(Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->isRotating:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnCenterClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->selected:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;Lcom/lenovo/scg/camera/setting/view/CircleImageView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    .param p2, "x2"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateViewToCenter(Lcom/lenovo/scg/camera/setting/view/CircleImageView;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateToCenter:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemSelectedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->actRunnable:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->actRunnable:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->allowRotating:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleWidth:I

    return v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->firstChildPos:F

    return v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->speed:I

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;F)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;
    .param p1, "x1"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateButtons(F)V

    return-void
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->deceleration:F

    return v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnRotationFinishedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I

    return v0
.end method

.method static synthetic access$400(DD)I
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D

    .prologue
    .line 29
    invoke-static {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getQuadrant(DD)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->quadrantTouched:[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedViewsPostition:I

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedViewsPostition:I

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;FF)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->pointToPosition(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childWidth:I

    return v0
.end method

.method private getAngle(DD)D
    .locals 11
    .param p1, "xTouch"    # D
    .param p3, "yTouch"    # D

    .prologue
    .line 356
    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleWidth:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    sub-double v0, p1, v4

    .line 357
    .local v0, "x":D
    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I

    int-to-double v4, v4

    sub-double/2addr v4, p3

    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    sub-double v2, v4, v6

    .line 359
    .local v2, "y":D
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getQuadrant(DD)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 372
    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    .line 361
    :pswitch_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    goto :goto_0

    .line 365
    :pswitch_1
    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    goto :goto_0

    .line 368
    :pswitch_2
    const-wide v4, 0x4076800000000000L    # 360.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getQuadrant(DD)I
    .locals 4
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 380
    cmpl-double v0, p0, v2

    if-ltz v0, :cond_1

    .line 381
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    .line 381
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 383
    :cond_1
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private pointToPosition(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 619
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 621
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 622
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_1

    move v5, v3

    :goto_2
    and-int/2addr v2, v5

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_2

    .line 628
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/view/View;
    :goto_3
    return v0

    .restart local v0    # "i":I
    .restart local v1    # "item":Landroid/view/View;
    :cond_0
    move v2, v4

    .line 622
    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2

    .line 619
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    .end local v1    # "item":Landroid/view/View;
    :cond_3
    const/4 v0, -0x1

    goto :goto_3
.end method

.method private rotateButtons(F)V
    .locals 14
    .param p1, "degrees"    # F

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x43b40000    # 360.0f

    .line 303
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildCount()I

    move-result v2

    .line 304
    .local v2, "childCount":I
    const/16 v6, 0x168

    div-int/2addr v6, v2

    int-to-float v0, v6

    .line 305
    .local v0, "angleDelay":F
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    add-float/2addr v6, p1

    iput v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    .line 307
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    cmpl-float v6, v6, v12

    if-lez v6, :cond_2

    .line 308
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    sub-float/2addr v6, v12

    iput v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    .line 315
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 316
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    cmpl-float v6, v6, v12

    if-lez v6, :cond_3

    .line 317
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    sub-float/2addr v6, v12

    iput v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    .line 324
    :cond_1
    :goto_2
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/CircleImageView;

    .line 325
    .local v1, "child":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 315
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 310
    .end local v1    # "child":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    .end local v3    # "i":I
    :cond_2
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    cmpg-float v6, v6, v13

    if-gez v6, :cond_0

    .line 311
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    add-float/2addr v6, v12

    iput v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    goto :goto_0

    .line 319
    .restart local v3    # "i":I
    :cond_3
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    cmpg-float v6, v6, v13

    if-gez v6, :cond_1

    .line 320
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    add-float/2addr v6, v12

    iput v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    goto :goto_2

    .line 328
    .restart local v1    # "child":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    :cond_4
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleWidth:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-double v6, v6

    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->radius:I

    int-to-double v8, v8

    iget v10, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 331
    .local v4, "left":I
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-double v6, v6

    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->radius:I

    int-to-double v8, v8

    iget v10, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 335
    .local v5, "top":I
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->setAngle(F)V

    .line 337
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    iget v7, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->firstChildPos:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v0, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->selected:I

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->getPosition()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 339
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->getPosition()I

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->selected:I

    .line 341
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemSelectedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateToCenter:Z

    if-eqz v6, :cond_5

    .line 342
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemSelectedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;->onItemSelected(Landroid/view/View;Ljava/lang/String;)V

    .line 347
    :cond_5
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->layout(IIII)V

    .line 348
    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    goto/16 :goto_3

    .line 350
    .end local v1    # "child":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    .end local v4    # "left":I
    .end local v5    # "top":I
    :cond_6
    return-void
.end method

.method private rotateViewToCenter(Lcom/lenovo/scg/camera/setting/view/CircleImageView;Z)V
    .locals 7
    .param p1, "view"    # Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    .param p2, "fromRunnable"    # Z

    .prologue
    const/high16 v6, 0x43b40000    # 360.0f

    .line 525
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateToCenter:Z

    if-eqz v4, :cond_3

    .line 526
    const/high16 v3, 0x3f800000    # 1.0f

    .line 527
    .local v3, "velocityTemp":F
    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->firstChildPos:F

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->getAngle()F

    move-result v5

    sub-float v0, v4, v5

    .line 528
    .local v0, "destAngle":F
    const/4 v2, 0x0

    .line 529
    .local v2, "startAngle":F
    const/4 v1, 0x1

    .line 531
    .local v1, "reverser":I
    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 532
    add-float/2addr v0, v6

    .line 535
    :cond_0
    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 536
    const/4 v1, -0x1

    .line 537
    sub-float v0, v6, v0

    .line 540
    :cond_1
    :goto_0
    cmpg-float v4, v2, v0

    if-gez v4, :cond_2

    .line 541
    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->deceleration:F

    mul-float/2addr v3, v4

    .line 542
    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->speed:I

    int-to-float v4, v4

    div-float v4, v3, v4

    add-float/2addr v2, v4

    goto :goto_0

    .line 545
    :cond_2
    new-instance v5, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;

    int-to-float v4, v1

    mul-float v6, v4, v3

    if-nez p2, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-direct {v5, p0, v6, v4}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;-><init>(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;FZ)V

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->post(Ljava/lang/Runnable;)Z

    .line 548
    .end local v0    # "destAngle":F
    .end local v1    # "reverser":I
    .end local v2    # "startAngle":F
    .end local v3    # "velocityTemp":F
    :cond_3
    return-void

    .line 545
    .restart local v0    # "destAngle":F
    .restart local v1    # "reverser":I
    .restart local v2    # "startAngle":F
    .restart local v3    # "velocityTemp":F
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getSelectedItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->selected:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->selected:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 112
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$1;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mGestureDetector:Landroid/view/GestureDetector;

    .line 113
    const/16 v2, 0xa

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->quadrantTouched:[Z

    .line 115
    if-eqz p1, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/R$styleable;->LittleWheelCircle:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x5a

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    .line 121
    iget v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->firstChildPos:F

    .line 123
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateToCenter:Z

    .line 125
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->isRotating:Z

    .line 126
    const/4 v2, 0x4

    const/16 v3, 0x4b

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->speed:I

    .line 127
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40a00000    # 5.0f

    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->speed:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->deceleration:F

    .line 131
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->isRotating:Z

    if-nez v2, :cond_0

    .line 132
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateToCenter:Z

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageOriginal:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 136
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 141
    .local v1, "picId":I
    if-eq v1, v8, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageOriginal:Landroid/graphics/Bitmap;

    .line 147
    .end local v1    # "picId":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->matrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_3

    .line 151
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->matrix:Landroid/graphics/Matrix;

    .line 159
    :goto_0
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->setWillNotDraw(Z)V

    .line 161
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    return-void

    .line 155
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 113
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I

    .line 176
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleWidth:I

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageScaled:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->matrix:Landroid/graphics/Matrix;

    .line 182
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->radius:I

    iget v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childWidth:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v0, v2

    .line 184
    .local v10, "sx":F
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->radius:I

    iget v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childWidth:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v0, v2

    .line 186
    .local v11, "sy":F
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageOriginal:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->matrix:Landroid/graphics/Matrix;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageScaled:Landroid/graphics/Bitmap;

    .line 192
    .end local v10    # "sx":F
    .end local v11    # "sy":F
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageScaled:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 194
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleWidth:I

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageScaled:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .line 195
    .local v7, "cx":I
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageScaled:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v8, v0, 0x2

    .line 197
    .local v8, "cy":I
    move-object v9, p1

    .line 198
    .local v9, "g":Landroid/graphics/Canvas;
    const/4 v0, 0x0

    iget v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->imageScaled:Landroid/graphics/Bitmap;

    int-to-float v1, v7

    int-to-float v2, v8

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    .end local v7    # "cx":I
    .end local v8    # "cy":I
    .end local v9    # "g":Landroid/graphics/Canvas;
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 251
    sub-int v5, p4, p2

    .line 252
    .local v5, "layoutWidth":I
    sub-int v4, p5, p3

    .line 255
    .local v4, "layoutHeight":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildCount()I

    move-result v2

    .line 257
    .local v2, "childCount":I
    if-gt v5, v4, :cond_0

    div-int/lit8 v8, v5, 0x3

    :goto_0
    iput v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->radius:I

    .line 260
    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->radius:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childWidth:I

    .line 261
    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->radius:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childHeight:I

    .line 263
    const/16 v8, 0x168

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildCount()I

    move-result v9

    div-int/2addr v8, v9

    int-to-float v0, v8

    .line 265
    .local v0, "angleDelay":F
    const-string v8, "CircleImageMenuGroup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "angleDelay : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 268
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/CircleImageView;

    .line 269
    .local v1, "child":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 267
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 257
    .end local v0    # "angleDelay":F
    .end local v1    # "child":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    .end local v3    # "i":I
    :cond_0
    div-int/lit8 v8, v4, 0x3

    goto :goto_0

    .line 273
    .restart local v0    # "angleDelay":F
    .restart local v1    # "child":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    .restart local v3    # "i":I
    :cond_1
    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    const/high16 v9, 0x43b40000    # 360.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 274
    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    const/high16 v9, 0x43b40000    # 360.0f

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    .line 281
    :cond_2
    :goto_3
    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    invoke-virtual {v1, v8}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->setAngle(F)V

    .line 282
    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->setPosition(I)V

    .line 284
    div-int/lit8 v8, v5, 0x2

    iget v9, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-double v8, v8

    iget v10, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->radius:I

    int-to-double v10, v10

    iget v12, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 287
    .local v6, "left":I
    div-int/lit8 v8, v4, 0x2

    iget v9, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childHeight:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-double v8, v8

    iget v10, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->radius:I

    int-to-double v10, v10

    iget v12, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 291
    .local v7, "top":I
    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childWidth:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childHeight:I

    add-int/2addr v9, v7

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->layout(IIII)V

    .line 292
    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    add-float/2addr v8, v0

    iput v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    goto :goto_2

    .line 276
    .end local v6    # "left":I
    .end local v7    # "top":I
    :cond_3
    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 277
    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    const/high16 v9, 0x43b40000    # 360.0f

    add-float/2addr v8, v9

    iput v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F

    goto :goto_3

    .line 294
    .end local v1    # "child":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    .line 207
    iput v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildWidth:I

    .line 208
    iput v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildHeight:I

    .line 211
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 213
    .local v2, "childWidthMeasureSpec":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 216
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildCount()I

    move-result v3

    .line 217
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 218
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 217
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 225
    iget v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildWidth:I

    .line 226
    iget v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildHeight:I

    goto :goto_1

    .line 231
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildWidth:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 233
    iget v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildHeight:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 236
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 237
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 238
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 236
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 242
    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 245
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    iget v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildWidth:I

    invoke-static {v5, p1}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->resolveSize(II)I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mMaxChildHeight:I

    invoke-static {v6, p2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->resolveSize(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->setMeasuredDimension(II)V

    .line 247
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->isRotating:Z

    if-eqz v4, :cond_0

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 420
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-double v6, v4

    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v4, v8

    iget v8, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v4, v8

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getQuadrant(DD)I

    move-result v3

    .line 421
    .local v3, "touchedQuadrant":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->quadrantTouched:[Z

    aput-boolean v5, v4, v3

    .line 422
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v4, v5

    .line 425
    .end local v3    # "touchedQuadrant":I
    :goto_1
    return v4

    .line 397
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->quadrantTouched:[Z

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 398
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->quadrantTouched:[Z

    aput-boolean v6, v4, v2

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 401
    :cond_1
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->allowRotating:Z

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-double v6, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-double v8, v4

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getAngle(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->startAngle:D

    goto :goto_0

    .line 406
    .end local v2    # "i":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-double v6, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-double v8, v4

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getAngle(DD)D

    move-result-wide v0

    .line 408
    .local v0, "currentAngle":D
    iget-wide v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->startAngle:D

    sub-double/2addr v6, v0

    double-to-float v4, v6

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateButtons(F)V

    .line 409
    iput-wide v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->startAngle:D

    goto :goto_0

    .line 412
    .end local v0    # "currentAngle":D
    :pswitch_2
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->allowRotating:Z

    .line 413
    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->selected:I

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/setting/view/CircleImageView;

    invoke-direct {p0, v4, v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateViewToCenter(Lcom/lenovo/scg/camera/setting/view/CircleImageView;Z)V

    goto :goto_0

    :cond_2
    move v4, v6

    .line 425
    goto :goto_1

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnCenterClickListener(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;)V
    .locals 0
    .param p1, "onCenterClickListener"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnCenterClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;

    .line 655
    return-void
.end method

.method public setOnItemClickListener(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;

    .line 637
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;)V
    .locals 0
    .param p1, "onItemSelectedListener"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemSelectedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;

    .line 646
    return-void
.end method

.method public setOnRotationFinishedListener(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;)V
    .locals 0
    .param p1, "onRotationFinishedListener"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnRotationFinishedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;

    .line 664
    return-void
.end method
