.class Lcom/lenovo/scg/common/ui/TinyTips$2;
.super Ljava/lang/Object;
.source "TinyTips.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/ui/TinyTips;->hideTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/ui/TinyTips;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/ui/TinyTips;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/TinyTips$2;->this$0:Lcom/lenovo/scg/common/ui/TinyTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/TinyTips$2;->this$0:Lcom/lenovo/scg/common/ui/TinyTips;

    # invokes: Lcom/lenovo/scg/common/ui/TinyTips;->destroyTips()V
    invoke-static {v0}, Lcom/lenovo/scg/common/ui/TinyTips;->access$100(Lcom/lenovo/scg/common/ui/TinyTips;)V

    .line 105
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 100
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 96
    return-void
.end method
