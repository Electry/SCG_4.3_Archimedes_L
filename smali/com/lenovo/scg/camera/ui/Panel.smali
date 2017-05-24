.class public Lcom/lenovo/scg/camera/ui/Panel;
.super Landroid/widget/LinearLayout;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;,
        Lcom/lenovo/scg/camera/ui/Panel$State;,
        Lcom/lenovo/scg/camera/ui/Panel$OnPanelListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x1

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Panel"

.field public static final TOP:I


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field clickListener:Landroid/view/View$OnClickListener;

.field private mBringToFront:Z

.field private mClosedHandle:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/view/View;

.field private mContentHeight:I

.field private mContentId:I

.field private mContentWidth:I

.field private mDuration:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;

.field private mHandle:Landroid/view/View;

.field private mHandleId:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsShrinking:Z

.field private mLinearFlying:Z

.field private mOpenedHandle:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPosition:I

.field private mState:Lcom/lenovo/scg/camera/ui/Panel$State;

.field private mTrackX:F

.field private mTrackY:F

.field private mVelocity:F

.field private mWeight:F

.field private panelListener:Lcom/lenovo/scg/camera/ui/Panel$OnPanelListener;

.field startAnimation:Ljava/lang/Runnable;

.field touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 328
    new-instance v4, Lcom/lenovo/scg/camera/ui/Panel$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/ui/Panel$1;-><init>(Lcom/lenovo/scg/camera/ui/Panel;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    .line 383
    new-instance v4, Lcom/lenovo/scg/camera/ui/Panel$2;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/ui/Panel$2;-><init>(Lcom/lenovo/scg/camera/ui/Panel;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->clickListener:Landroid/view/View$OnClickListener;

    .line 410
    new-instance v4, Lcom/lenovo/scg/camera/ui/Panel$3;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/ui/Panel$3;-><init>(Lcom/lenovo/scg/camera/ui/Panel;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->startAnimation:Ljava/lang/Runnable;

    .line 493
    new-instance v4, Lcom/lenovo/scg/camera/ui/Panel$4;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/ui/Panel$4;-><init>(Lcom/lenovo/scg/camera/ui/Panel;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 110
    sget-object v4, Lcom/lenovo/scg/R$styleable;->Panel:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0x2ee

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mDuration:I

    .line 112
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I

    .line 113
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mLinearFlying:Z

    .line 114
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3, v2, v6}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mWeight:F

    .line 115
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mWeight:F

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mWeight:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 116
    :cond_0
    iput v6, p0, Lcom/lenovo/scg/camera/ui/Panel;->mWeight:F

    .line 117
    const-string v4, "Panel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": weight must be > 0 and <= 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    .line 120
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandleId:I

    .line 124
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandleId:I

    if-nez v4, :cond_2

    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1    # "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": The handle attribute is required and must refer to a valid child."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContentId:I

    .line 128
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContentId:I

    if-nez v4, :cond_3

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1    # "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": The content attribute is required and must refer to a valid child."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    if-eqz v1, :cond_4

    .line 134
    throw v1

    .line 136
    :cond_4
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I

    if-ne v4, v2, :cond_6

    :cond_5
    :goto_0
    iput v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mOrientation:I

    .line 137
    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mOrientation:I

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/Panel;->setOrientation(I)V

    .line 138
    sget-object v2, Lcom/lenovo/scg/camera/ui/Panel$State;->READY:Lcom/lenovo/scg/camera/ui/Panel$State;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;

    .line 139
    new-instance v2, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;-><init>(Lcom/lenovo/scg/camera/ui/Panel;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mGestureListener:Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;

    .line 140
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Panel;->mGestureListener:Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;

    invoke-direct {v2, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 141
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 144
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/ui/Panel;->setBaselineAligned(Z)V

    .line 145
    return-void

    :cond_6
    move v2, v3

    .line 136
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$State;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/ui/Panel;Lcom/lenovo/scg/camera/ui/Panel$State;)Lcom/lenovo/scg/camera/ui/Panel$State;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/ui/Panel$State;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/ui/Panel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mBringToFront:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/ui/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mVelocity:F

    return v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/camera/ui/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mVelocity:F

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/ui/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mTrackY:F

    return v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/camera/ui/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mTrackY:F

    return p1
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/ui/Panel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mLinearFlying:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/ui/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mDuration:I

    return v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/ui/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mTrackX:F

    return v0
.end method

.method static synthetic access$1402(Lcom/lenovo/scg/camera/ui/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mTrackX:F

    return p1
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/ui/Panel;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/Panel;->postProcess()V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/ui/Panel;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/ui/Panel;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/ui/Panel;FII)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/ui/Panel;->ensureRange(FII)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/ui/Panel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/ui/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/ui/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/ui/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContentWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/ui/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContentHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mGestureListener:Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/ui/Panel;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/ui/Panel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z

    return v0
.end method

.method static synthetic access$902(Lcom/lenovo/scg/camera/ui/Panel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/Panel;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z

    return p1
.end method

.method private ensureRange(FII)F
    .locals 1
    .param p1, "v"    # F
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 323
    int-to-float v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 324
    int-to-float v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 325
    return p1
.end method

.method private postProcess()V
    .locals 2

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->panelListener:Lcom/lenovo/scg/camera/ui/Panel$OnPanelListener;

    if-eqz v0, :cond_1

    .line 519
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->panelListener:Lcom/lenovo/scg/camera/ui/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/camera/ui/Panel$OnPanelListener;->onPanelClosed(Lcom/lenovo/scg/camera/ui/Panel;)V

    .line 525
    :cond_1
    :goto_1
    return-void

    .line 514
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->panelListener:Lcom/lenovo/scg/camera/ui/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/camera/ui/Panel$OnPanelListener;->onPanelOpened(Lcom/lenovo/scg/camera/ui/Panel;)V

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 305
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;

    sget-object v2, Lcom/lenovo/scg/camera/ui/Panel$State;->ABOUT_TO_ANIMATE:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z

    if-nez v1, :cond_2

    .line 306
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mOrientation:I

    if-ne v1, v4, :cond_5

    iget v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContentHeight:I

    .line 307
    .local v0, "delta":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I

    if-nez v1, :cond_1

    .line 308
    :cond_0
    neg-int v0, v0

    .line 310
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mOrientation:I

    if-ne v1, v4, :cond_6

    .line 311
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    .end local v0    # "delta":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;

    sget-object v2, Lcom/lenovo/scg/camera/ui/Panel$State;->TRACKING:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;

    sget-object v2, Lcom/lenovo/scg/camera/ui/Panel$State;->FLYING:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v1, v2, :cond_4

    .line 317
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mTrackX:F

    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mTrackY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 319
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 320
    return-void

    .line 306
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContentWidth:I

    goto :goto_0

    .line 313
    .restart local v0    # "delta":I
    :cond_6
    int-to-float v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public initChange()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;

    sget-object v3, Lcom/lenovo/scg/camera/ui/Panel$State;->READY:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-eq v0, v3, :cond_0

    .line 407
    :goto_0
    return v2

    .line 400
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/ui/Panel$State;->ABOUT_TO_ANIMATE:Lcom/lenovo/scg/camera/ui/Panel$State;

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;

    .line 401
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z

    .line 402
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move v2, v1

    .line 407
    goto :goto_0

    :cond_2
    move v0, v2

    .line 401
    goto :goto_1
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 271
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Panel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 272
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 273
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mBringToFront:Z

    .line 275
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 226
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 227
    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandleId:I

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandle:Landroid/view/View;

    .line 228
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandle:Landroid/view/View;

    if-nez v2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Panel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 233
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContentId:I

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    .line 236
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    if-nez v2, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .restart local v0    # "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Panel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/Panel;->removeView(Landroid/view/View;)V

    .line 243
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/Panel;->removeView(Landroid/view/View;)V

    .line 244
    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/Panel;->addView(Landroid/view/View;)V

    .line 246
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/Panel;->addView(Landroid/view/View;)V

    .line 252
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 256
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mWeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 258
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 259
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mOrientation:I

    if-ne v2, v5, :cond_6

    .line 260
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void

    .line 248
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/Panel;->addView(Landroid/view/View;)V

    .line 249
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/Panel;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 262
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 294
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContentWidth:I

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContentHeight:I

    .line 297
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 279
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mWeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Panel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 281
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 282
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 289
    .end local v0    # "parent":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 290
    return-void

    .line 285
    .restart local v0    # "parent":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Panel;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 183
    return-void
.end method

.method public setOnPanelListener(Lcom/lenovo/scg/camera/ui/Panel$OnPanelListener;)V
    .locals 0
    .param p1, "onPanelListener"    # Lcom/lenovo/scg/camera/ui/Panel$OnPanelListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Panel;->panelListener:Lcom/lenovo/scg/camera/ui/Panel$OnPanelListener;

    .line 156
    return-void
.end method

.method public setOpen(ZZ)Z
    .locals 4
    .param p1, "open"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;

    sget-object v3, Lcom/lenovo/scg/camera/ui/Panel$State;->READY:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Panel;->isOpen()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 197
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z

    .line 198
    if-eqz p2, :cond_2

    .line 199
    sget-object v0, Lcom/lenovo/scg/camera/ui/Panel$State;->ABOUT_TO_ANIMATE:Lcom/lenovo/scg/camera/ui/Panel$State;

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;

    .line 200
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/Panel;->post(Ljava/lang/Runnable;)Z

    .line 212
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 197
    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/Panel;->postProcess()V

    goto :goto_1

    .line 207
    :cond_3
    const/16 v2, 0x8

    goto :goto_2

    :cond_4
    move v1, v2

    .line 212
    goto :goto_1
.end method
