.class public abstract Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;
.super Ljava/lang/Object;
.source "FadeTexture.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/glrenderer/Texture;


# static fields
.field public static final DURATION:I = 0xa

.field private static final TAG:Ljava/lang/String; = "FadeTexture"


# instance fields
.field private final mHeight:I

.field private mIsAnimating:Z

.field private final mIsOpaque:Z

.field private final mStartTime:J

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "opaque"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mWidth:I

    .line 46
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mHeight:I

    .line 47
    iput-boolean p3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mIsOpaque:Z

    .line 48
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mStartTime:J

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    .line 50
    return-void
.end method

.method private now()J
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 54
    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 55
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mHeight:I

    return v0
.end method

.method protected getRatio()F
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 82
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float v0, v1, v2

    .line 83
    .local v0, "r":F
    sub-float v1, v6, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 4

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;->mIsOpaque:Z

    return v0
.end method
