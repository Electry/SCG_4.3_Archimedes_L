.class public Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;
.super Landroid/widget/FrameLayout;
.source "Panorama2DLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;,
        Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;
    }
.end annotation


# static fields
.field private static final ARROW_ANIMEND:I

.field private static final ARROW_ANIMSTART:I = 0x1

.field protected static final LEFT_ANIM_RUN:I = 0x1

.field private static final QUICK_ANIMEND:I

.field private static final QUICK_ANIMSTART:I = -0x1

.field protected static final QUICK_ANIM_RUN:I = 0x2

.field protected static final RIGHT_ANIM_RUN:I = 0x0

.field protected static final START_ANIMATION:I = 0x3

.field private static final arrowToRightImags:[I

.field private static final quickImags:[I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private lp:Landroid/widget/FrameLayout$LayoutParams;

.field private m4vs3Offset:I

.field private mAnimStep:I

.field private mArrowAnimImage:Landroid/widget/ImageView;

.field private mArrowPosition:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

.field protected mArrowX:F

.field private mClickable:Z

.field private mCurrentAnimImage:I

.field private mCurrentQuickImage:I

.field private mHintText:Landroid/widget/TextView;

.field private mIndictorArrow:Landroid/widget/ImageView;

.field private mIndictorArrowOnClick:Landroid/view/View$OnClickListener;

.field private mIndictorArrowOrgX:I

.field private mIndictorArrowOrgY:I

.field private mIs16vs9:Z

.field private mListener:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;

.field private mOrgValueSaved:Z

.field private mPreviewBar:Landroid/view/View;

.field private mPreviewbarImage:Landroid/widget/ImageView;

.field private mPreviewbarImageWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->arrowToRightImags:[I

    .line 63
    sget-object v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->arrowToRightImags:[I

    array-length v0, v0

    sput v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->ARROW_ANIMEND:I

    .line 81
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->quickImags:[I

    .line 90
    sget-object v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->quickImags:[I

    array-length v0, v0

    sput v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->QUICK_ANIMEND:I

    return-void

    .line 55
    nop

    :array_0
    .array-data 4
        0x7f020257
        0x7f02025a
        0x7f02025b
        0x7f02025c
        0x7f02025d
        0x7f02025e
        0x7f02025f
        0x7f020260
        0x7f020261
        0x7f020258
        0x7f020259
    .end array-data

    .line 81
    :array_1
    .array-data 4
        0x7f02023c
        0x7f020247
        0x7f02024c
        0x7f02024d
        0x7f02024e
        0x7f02024f
        0x7f020250
        0x7f020251
        0x7f020252
        0x7f02023d
        0x7f02023e
        0x7f02023f
        0x7f020240
        0x7f020241
        0x7f020242
        0x7f020243
        0x7f020244
        0x7f020245
        0x7f020246
        0x7f020248
        0x7f020249
        0x7f02024a
        0x7f02024b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mOrgValueSaved:Z

    .line 65
    iput v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I

    .line 71
    sget-object v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->LEFT_EDGE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowPosition:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I

    .line 94
    new-instance v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;-><init>(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;

    .line 174
    const-string v0, "PanoramaModeUI_2D"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->TAG:Ljava/lang/String;

    .line 176
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIs16vs9:Z

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowX:F

    .line 218
    new-instance v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$2;-><init>(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrowOnClick:Landroid/view/View$OnClickListener;

    .line 248
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mClickable:Z

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09030f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mAnimStep:I

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090310

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->m4vs3Offset:I

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mListener:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I

    return v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I

    return p1
.end method

.method static synthetic access$1108(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->QUICK_ANIMEND:I

    return v0
.end method

.method static synthetic access$1300()[I
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->quickImags:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->startAnimation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mClickable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mAnimStep:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I

    return p1
.end method

.method static synthetic access$408(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->ARROW_ANIMEND:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->arrowToRightImags:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowPosition:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowPosition:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->refreshUI4DirectionChanged(Z)V

    return-void
.end method

.method private refreshUI4DirectionChanged(Z)V
    .locals 6
    .param p1, "left2right"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 373
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 374
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mOrgValueSaved:Z

    .line 375
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mClickable:Z

    .line 376
    if-eqz p1, :cond_0

    .line 377
    const-string v1, "PanoramaModeUI_2D"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lp.rightMargin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x13

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 379
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 380
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 381
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 383
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 387
    .local v0, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 388
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    :goto_0
    return-void

    .line 390
    .end local v0    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v1, "PanoramaModeUI_2D"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lp.leftMargin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 392
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 393
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 394
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 396
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 400
    .restart local v0    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 401
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    const-string v0, "PanoramaModeUI_2D"

    const-string/jumbo v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mClickable:Z

    .line 234
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I

    if-ne v0, v3, :cond_0

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowX:F

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowPosition:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->RIGHT_EGDE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mListener:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mListener:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;->onStartChangeExpectedDirection()V

    .line 245
    :cond_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public ViewAlphaAnimation(Landroid/view/animation/AnimationSet;FFIZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AnimationSet;
    .locals 5
    .param p1, "target"    # Landroid/view/animation/AnimationSet;
    .param p2, "f"    # F
    .param p3, "g"    # F
    .param p4, "duration"    # I
    .param p5, "repeat"    # Z
    .param p6, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/4 v4, 0x1

    .line 290
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 291
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 292
    if-eqz p5, :cond_0

    .line 293
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 294
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 296
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {v0, p6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 297
    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Landroid/view/animation/AnimationSet;

    .end local p1    # "target":Landroid/view/animation/AnimationSet;
    invoke-direct {p1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 298
    .restart local p1    # "target":Landroid/view/animation/AnimationSet;
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 299
    return-object p1
.end method

.method public ViewScaleAnimation(Landroid/view/animation/AnimationSet;FFIZ)Landroid/view/animation/AnimationSet;
    .locals 5
    .param p1, "target"    # Landroid/view/animation/AnimationSet;
    .param p2, "f"    # F
    .param p3, "g"    # F
    .param p4, "duration"    # I
    .param p5, "repeat"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 260
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v1, p2, v1, p3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 261
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 262
    if-eqz p5, :cond_0

    .line 263
    invoke-virtual {v0, v4}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 264
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 266
    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/view/animation/AnimationSet;

    .end local p1    # "target":Landroid/view/animation/AnimationSet;
    invoke-direct {p1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 267
    .restart local p1    # "target":Landroid/view/animation/AnimationSet;
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 268
    return-object p1
.end method

.method public ViewTranslateAnimationEx(Landroid/view/animation/AnimationSet;FFFFIZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AnimationSet;
    .locals 11
    .param p1, "target"    # Landroid/view/animation/AnimationSet;
    .param p2, "fx"    # F
    .param p3, "fy"    # F
    .param p4, "gx"    # F
    .param p5, "gy"    # F
    .param p6, "duration"    # I
    .param p7, "repeat"    # Z
    .param p8, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 273
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x1

    move v4, p2

    move v6, p4

    move v8, p3

    move/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 275
    .local v2, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    move/from16 v0, p6

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 276
    if-eqz p7, :cond_0

    .line 277
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 278
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 280
    :cond_0
    if-eqz p8, :cond_1

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 281
    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Landroid/view/animation/AnimationSet;

    .end local p1    # "target":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x1

    invoke-direct {p1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 283
    .restart local p1    # "target":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 285
    invoke-virtual {p1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 286
    return-object p1
.end method

.method public animQuick(Z)V
    .locals 3
    .param p1, "start"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 406
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    if-nez p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I

    if-eq v0, v2, :cond_0

    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    const v1, 0x7f02023a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    iput v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I

    goto :goto_0
.end method

.method public changeImageViewSize(III)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 309
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 311
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 312
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 314
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImageWidth:I

    .line 316
    return-void
.end method

.method public getHintColor()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getHintRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 421
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getImageViewWidth()I
    .locals 3

    .prologue
    .line 320
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImageWidth:I

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImageWidth:I

    .line 321
    :cond_0
    const-string v0, "PanoramaModeUI_2D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviewbarImage.getWidth() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImageWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreviewbarImage.getX() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->isLeft2Right()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImageWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 323
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImageWidth:I

    goto :goto_0
.end method

.method public isLeft2Right()Z
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowPosition:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->LEFT_EDGE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "PanoramaModeUI_2D"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const v0, 0x7f1001c4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewBar:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewBar:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrowOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f1001c3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    .line 186
    const v0, 0x7f1001c5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    .line 187
    const v0, 0x7f1001c7

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;

    .line 188
    const v0, 0x7f1001c6

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    .line 189
    return-void
.end method

.method public restoreLayoutAfterCapture()V
    .locals 2

    .prologue
    .line 351
    const-string v0, "PanoramaModeUI_2D"

    const-string/jumbo v1, "restoreLayoutAfterCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrowOrgX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrowOrgY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    return-void
.end method

.method public saveLayoutPostionBeforeCapture()V
    .locals 3

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mOrgValueSaved:Z

    if-eqz v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrowOrgX:I

    .line 345
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrowOrgY:I

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mOrgValueSaved:Z

    .line 347
    const-string v0, "PanoramaModeUI_2D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveLayoutPostionBeforeCapture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrowOrgX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrowOrgY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIndictorArrow(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "offsetY"    # I

    .prologue
    const/4 v2, 0x4

    .line 327
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowPosition:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->LEFT_EDGE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    if-ne v0, v1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    if-ge v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrowOrgY:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    mul-int/2addr v2, p2

    div-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 340
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_1
    if-lez p1, :cond_2

    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrowOrgY:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    mul-int/2addr v2, p2

    div-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIs16vs9(Z)V
    .locals 4
    .param p1, "is"    # Z

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 192
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIs16vs9:Z

    .line 193
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIs16vs9:Z

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewBar:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->m4vs3Offset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->m4vs3Offset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->m4vs3Offset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->m4vs3Offset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0
.end method

.method public setListener(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mListener:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;

    .line 209
    return-void
.end method

.method public setPreviewBarClickable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mClickable:Z

    .line 254
    return-void
.end method

.method public showHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 359
    :cond_0
    if-nez p1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public upDatePreview(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mPreviewbarImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 306
    return-void
.end method
