.class Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;
.super Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Gap"
.end annotation


# instance fields
.field public mCurrentGap:I

.field public mDefaultSize:I

.field public mFromGap:I

.field public mToGap:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;)V
    .locals 1

    .prologue
    .line 1900
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/lenovo/scg/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;Lcom/lenovo/scg/gallery3d/ui/PositionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$1;

    .prologue
    .line 1900
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;-><init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;)V

    return-void
.end method


# virtual methods
.method public doAnimation(II)Z
    .locals 2
    .param p1, "targetSize"    # I
    .param p2, "kind"    # I

    .prologue
    .line 1918
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    if-ne v0, p1, :cond_0

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    .line 1919
    const/4 v0, 0x0

    .line 1927
    :goto_0
    return v0

    .line 1921
    :cond_0
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mAnimationKind:I

    .line 1922
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mFromGap:I

    .line 1923
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mToGap:I

    .line 1924
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    .line 1925
    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->ANIM_TIME:[I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2200()[I

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mAnimationKind:I

    aget v0, v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mAnimationDuration:I

    .line 1926
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->advanceAnimation()Z

    .line 1927
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected interpolate(F)Z
    .locals 6
    .param p1, "progress"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1932
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    .line 1933
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mToGap:I

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1942
    :cond_0
    :goto_0
    return v1

    .line 1936
    :cond_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mFromGap:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mToGap:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mFromGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1937
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mAnimationKind:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 1938
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/ui/CaptureAnimation;->calculateScale(F)F

    move-result v0

    .line 1939
    .local v0, "f":F
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move v1, v2

    .line 1940
    goto :goto_0

    .line 1942
    .end local v0    # "f":F
    :cond_2
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mToGap:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 4

    .prologue
    .line 1912
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1913
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    move-result v0

    goto :goto_0
.end method
