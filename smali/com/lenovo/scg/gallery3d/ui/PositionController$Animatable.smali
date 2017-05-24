.class abstract Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Animatable"
.end annotation


# instance fields
.field public mAnimationDuration:I

.field public mAnimationKind:I

.field public mAnimationStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PositionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$1;

    .prologue
    .line 1501
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;-><init>()V

    return-void
.end method

.method private static applyInterpolationCurve(IF)F
    .locals 3
    .param p0, "kind"    # I
    .param p1, "progress"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1550
    sub-float v0, v2, p1

    .line 1551
    .local v0, "f":F
    packed-switch p0, :pswitch_data_0

    .line 1569
    :goto_0
    return p1

    .line 1557
    :pswitch_0
    sub-float p1, v2, v0

    .line 1558
    goto :goto_0

    .line 1561
    :pswitch_1
    mul-float v1, v0, v0

    sub-float p1, v2, v1

    .line 1562
    goto :goto_0

    .line 1566
    :pswitch_2
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    sub-float p1, v2, v1

    goto :goto_0

    .line 1551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const-wide/16 v6, -0x2

    .line 1518
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 1519
    const/4 v4, 0x0

    .line 1546
    :goto_0
    return v4

    .line 1521
    :cond_0
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1522
    iput-wide v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1523
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;->startSnapback()Z

    move-result v4

    goto :goto_0

    .line 1527
    :cond_1
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;->mAnimationDuration:I

    if-nez v4, :cond_3

    .line 1528
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1534
    .local v1, "progress":F
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_4

    .line 1535
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1540
    :goto_2
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;->interpolate(F)Z

    move-result v0

    .line 1542
    .local v0, "done":Z
    if-eqz v0, :cond_2

    .line 1543
    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1546
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 1530
    .end local v0    # "done":Z
    .end local v1    # "progress":F
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    .line 1531
    .local v2, "now":J
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;->mAnimationDuration:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .restart local v1    # "progress":F
    goto :goto_1

    .line 1537
    .end local v2    # "now":J
    :cond_4
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    invoke-static {v4, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;->applyInterpolationCurve(IF)F

    move-result v1

    goto :goto_2
.end method

.method protected abstract interpolate(F)Z
.end method

.method public abstract startSnapback()Z
.end method
