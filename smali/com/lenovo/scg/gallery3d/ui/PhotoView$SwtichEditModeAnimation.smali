.class Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;
.super Lcom/lenovo/scg/gallery3d/anim/Animation;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwtichEditModeAnimation"
.end annotation


# instance fields
.field private mAlpha:F

.field private mIsEnter:Z

.field private mMoveY:F

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)V
    .locals 2
    .param p2, "isEnter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3102
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/anim/Animation;-><init>()V

    .line 3096
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->mMoveY:F

    .line 3098
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->mIsEnter:Z

    .line 3100
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->mAlpha:F

    .line 3103
    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->mIsEnter:Z

    .line 3104
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 3122
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->mAlpha:F

    return v0
.end method

.method public getMoveY()F
    .locals 1

    .prologue
    .line 3118
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->mMoveY:F

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3108
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->mIsEnter:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->EditModeMoveY:F
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$5500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)F

    move-result v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->mMoveY:F

    .line 3110
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->mAlpha:F

    .line 3115
    :goto_0
    return-void

    .line 3112
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->EditModeMoveY:F
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$5500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)F

    move-result v0

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->mMoveY:F

    .line 3113
    sub-float v0, v2, p1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->mAlpha:F

    goto :goto_0
.end method
