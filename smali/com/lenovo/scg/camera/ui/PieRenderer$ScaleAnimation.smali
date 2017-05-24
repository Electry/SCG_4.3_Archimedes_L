.class Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleAnimation"
.end annotation


# instance fields
.field private mFrom:F

.field private mTo:F

.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2318
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2314
    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->mFrom:F

    .line 2316
    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->mTo:F

    .line 2319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->setFillAfter(Z)V

    .line 2320
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->mFrom:F

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->mTo:F

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->mFrom:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    # setter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mDialAngle:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1902(Lcom/lenovo/scg/camera/ui/PieRenderer;I)I

    .line 2330
    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 2323
    iput p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->mFrom:F

    .line 2324
    iput p2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->mTo:F

    .line 2325
    return-void
.end method
