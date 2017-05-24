.class Lcom/lenovo/scg/common/ui/RotateTips$2;
.super Ljava/lang/Object;
.source "RotateTips.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/ui/RotateTips;->hideTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/ui/RotateTips;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/ui/RotateTips;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/RotateTips$2;->this$0:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RotateTips$2;->this$0:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 260
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 252
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 248
    return-void
.end method
