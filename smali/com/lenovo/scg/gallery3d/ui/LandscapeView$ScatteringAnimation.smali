.class public Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;
.super Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;
.source "LandscapeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScatteringAnimation"
.end annotation


# instance fields
.field private PHOTO_DISTANCE:I

.field private mCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/RelativePosition;)V
    .locals 1
    .param p1, "center"    # Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    .prologue
    .line 1148
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;-><init>()V

    .line 1144
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;->PHOTO_DISTANCE:I

    .line 1149
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;->mCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    .line 1150
    return-void
.end method


# virtual methods
.method public apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "slotIndex"    # I
    .param p3, "target"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1154
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;->mCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/RelativePosition;->getX()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;->mProgress:F

    sub-float v1, v4, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;->mCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/RelativePosition;->getY()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;->mProgress:F

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;->PHOTO_DISTANCE:I

    mul-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;->mProgress:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 1156
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;->mProgress:F

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 1157
    return-void
.end method
