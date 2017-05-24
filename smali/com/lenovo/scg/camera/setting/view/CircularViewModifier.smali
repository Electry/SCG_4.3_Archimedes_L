.class public Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;
.super Ljava/lang/Object;
.source "CircularViewModifier.java"


# static fields
.field private static final CIRCLE_OFFSET:I = 0x258

.field private static final DEG_TO_RAD:F = 0.017453294f

.field private static final SCALING_RATIO:F = 0.001f

.field private static TRANSLATION_RATIO:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const v0, 0x3db851ec    # 0.09f

    sput v0, Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;->TRANSLATION_RATIO:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method applyToView(Landroid/view/View;Landroid/widget/AbsListView;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v1, v7, v8

    .line 20
    .local v1, "halfHeight":F
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v3, v7, v8

    .line 21
    .local v3, "parentHalfHeight":F
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    .line 22
    .local v6, "y":F
    sub-float v7, v3, v1

    sub-float v4, v7, v6

    .line 25
    .local v4, "rot":F
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 27
    const v7, 0x3d4ccccd    # 0.05f

    mul-float/2addr v7, v4

    invoke-virtual {p1, v7}, Landroid/view/View;->setRotation(F)V

    .line 28
    sget v7, Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;->TRANSLATION_RATIO:F

    mul-float/2addr v7, v4

    const v8, 0x3c8efa36

    mul-float v2, v7, v8

    .line 30
    .local v2, "hudu":F
    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 32
    .local v0, "cos":F
    sub-float v7, v9, v0

    const/high16 v8, 0x44160000    # 600.0f

    mul-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 34
    sub-float v7, v3, v1

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3a83126f    # 0.001f

    mul-float/2addr v7, v8

    sub-float v5, v9, v7

    .line 35
    .local v5, "scale":F
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 36
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 37
    cmpl-float v7, v5, v9

    if-nez v7, :cond_0

    .line 38
    const-string v7, "applyToView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method
