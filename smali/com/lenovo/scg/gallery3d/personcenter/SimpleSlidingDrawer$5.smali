.class Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$5;
.super Ljava/lang/Object;
.source "SimpleSlidingDrawer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->createAlphaAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$5;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 408
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 402
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 397
    return-void
.end method