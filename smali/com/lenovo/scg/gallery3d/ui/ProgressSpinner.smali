.class public Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;
.super Ljava/lang/Object;
.source "ProgressSpinner.java"


# static fields
.field private static ROTATE_SPEED_INNER:F

.field private static ROTATE_SPEED_OUTER:F


# instance fields
.field private mAnimationTimestamp:J

.field private final mHeight:I

.field private final mInner:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private mInnerDegree:F

.field private final mOuter:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private mOuterDegree:F

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const v0, 0x3e9dfd13

    sput v0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->ROTATE_SPEED_OUTER:F

    .line 29
    const v0, -0x41ad593c

    sput v0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->ROTATE_SPEED_INNER:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    .line 41
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    .line 46
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f020956

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuter:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 47
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f020955

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInner:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuter:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInner:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mWidth:I

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuter:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInner:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mHeight:I

    .line 51
    return-void
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 9
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    .line 68
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 69
    .local v0, "now":J
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    .line 70
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    sget v4, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->ROTATE_SPEED_OUTER:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    .line 71
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    sget v4, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->ROTATE_SPEED_INNER:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    .line 73
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    .line 76
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    sub-float/2addr v2, v7

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    .line 77
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    add-float/2addr v2, v7

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    .line 79
    :cond_2
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 81
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    invoke-interface {p1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 82
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    invoke-interface {p1, v2, v6, v6, v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 83
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuter:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuter:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuter:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, p1, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 84
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    sub-float/2addr v2, v3

    invoke-interface {p1, v2, v6, v6, v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInner:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInner:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInner:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, p1, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 86
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 87
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mWidth:I

    return v0
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    .line 63
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    .line 64
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    .line 65
    return-void
.end method
