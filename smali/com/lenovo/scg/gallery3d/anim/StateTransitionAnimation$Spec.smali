.class public Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;
.super Ljava/lang/Object;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

.field public static final OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

.field public static final PHOTO_INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;


# instance fields
.field public backgroundAlphaFrom:F

.field public backgroundAlphaTo:F

.field public backgroundScaleFrom:F

.field public backgroundScaleTo:F

.field public contentAlphaFrom:F

.field public contentAlphaTo:F

.field public contentScaleFrom:F

.field public contentScaleTo:F

.field public duration:I

.field public interpolator:Landroid/view/animation/Interpolator;

.field public overlayAlphaFrom:F

.field public overlayAlphaTo:F

.field public overlayScaleFrom:F

.field public overlayScaleTo:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 69
    new-instance v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    .line 70
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v3, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 71
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 72
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 73
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    .line 74
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v3, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 75
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 76
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v4, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 77
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 79
    new-instance v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    .line 80
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 81
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 82
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    .line 83
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v4, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 84
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 85
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 86
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 87
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 89
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    sput-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->PHOTO_INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x14a

    iput v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->duration:I

    .line 42
    iput v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 44
    iput v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 46
    iput v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 48
    iput v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    .line 50
    iput v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 52
    iput v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 54
    iput v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 56
    iput v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 58
    iput v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 60
    iput v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 62
    iput v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    .line 64
    iput v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 66
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->specForTransition(Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    move-result-object v0

    return-object v0
.end method

.method private static specForTransition(Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;
    .locals 2
    .param p0, "t"    # Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    .prologue
    .line 93
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$1;->$SwitchMap$com$lenovo$scg$gallery3d$anim$StateTransitionAnimation$Transition:[I

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    goto :goto_0

    .line 97
    :pswitch_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    goto :goto_0

    .line 99
    :pswitch_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->PHOTO_INCOMING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
